/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation;
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// Network topology
//
//       n0    n1   n2   n3
//       |     |    |    |
//       =================
//              LAN
//
// - UDP flows from n0 to n1 and back
// - DropTail queues 
// - Tracing of queues and packet receptions to file "udp-echo.tr"

#include <fstream>
#include <iostream>
#include "ns3/core-module.h"
#include "ns3/applications-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/mobility-module.h"
#include "ns3/wifi-module.h"
#include "ns3/aodv-module.h"
#include "ns3/olsr-module.h"
#include "ns3/dsdv-module.h"
#include "ns3/dsr-module.h"
#include "ns3/stats-module.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("UdpEchoExample");

int 
main (int argc, char *argv[])
{
	ns3::RngSeedManager::SetSeed(10);
	ns3::RngSeedManager::SetRun(10);
//
// Users may find it convenient to turn on explicit debugging
// for selected modules; the below lines suggest how to do this
//
#if 0
  LogComponentEnable ("UdpEchoExample", LOG_LEVEL_INFO);
  LogComponentEnable ("UdpEchoClientApplication", LOG_LEVEL_ALL);
  LogComponentEnable ("UdpEchoServerApplication", LOG_LEVEL_ALL);
#endif
//
// Allow the user to override any of the defaults and the above Bind() at
// run-time, via command-line arguments
//
  bool useV6 = false;
  Address serverAddress;

  CommandLine cmd;
  cmd.AddValue ("useIpv6", "Use Ipv6", useV6);
  cmd.Parse (argc, argv);

//
// Explicitly create the nodes required by the topology (shown above).
//
  NS_LOG_INFO ("Create nodes.");
	NodeContainer adhocNodes;
	adhocNodes.Create(50);
//  NodeContainer n;
//  n.Create (4);

  InternetStackHelper internet;
//  internet.Install (adhocNodes);

  NS_LOG_INFO ("Create channels.");
//
// Explicitly create the channels required by the topology (shown above).
//

  std::string phyMode("OfdmRate6Mbps");
  	std::string tr_name("manet-routing-compare");

  	//Set Non-unicastMode rate to unicast mode
  	Config::SetDefault("ns3::WifiRemoteStationManager::NonUnicastMode",
  			StringValue("OfdmRate24Mbps"));

  	// Configure TCP and MTU
  	Config::SetDefault("ns3::TcpSocket::SegmentSize", UintegerValue(1430));	// 1460 is too large it seems
  	Config::SetDefault("ns3::TcpL4Protocol::SocketType",
  			StringValue("ns3::TcpNewReno")); // default

 // 	Config::SetDefault("ns3::DropTailQueue::MaxPackets", StringValue("20"));



  	// setting up wifi phy and channel using helpers
  	WifiHelper wifi;
  	wifi.SetStandard(WIFI_PHY_STANDARD_80211a);

  	YansWifiPhyHelper wifiPhy = YansWifiPhyHelper::Default();

  	YansWifiChannelHelper wifiChannel;
  	wifiChannel.SetPropagationDelay("ns3::ConstantSpeedPropagationDelayModel");
  	wifiChannel.AddPropagationLoss("ns3::RangePropagationLossModel", "MaxRange",
  			ns3::DoubleValue(55)); //设置信道的传播损失模型和最大传输距离
  	wifiPhy.SetChannel(wifiChannel.Create());

  	// Add a mac and disable rate control
  	NqosWifiMacHelper wifiMacHelper;
  	wifiMacHelper.SetType("ns3::AdhocWifiMac");

  	NetDeviceContainer adhocDevices = wifi.Install(wifiPhy, wifiMacHelper,
  			adhocNodes);
  	//  adhocDevices.Get(0)->SetReceiveCallback(MakeCallback(&callback));

  	std::stringstream ssSpeed;
  	ssSpeed << "ns3::UniformRandomVariable[Min=" << 5 << "|Max="
  			<< 10 << "]";

  	MobilityHelper mobilityAdhoc;
	Ptr<UniformRandomVariable> randomizer =
  			CreateObject<UniformRandomVariable>();
  	randomizer->SetAttribute("Min", DoubleValue(-100));
  	randomizer->SetAttribute("Max", DoubleValue(100));

  	mobilityAdhoc.SetPositionAllocator("ns3::RandomBoxPositionAllocator", "X",
  			PointerValue(randomizer), "Y", PointerValue(randomizer));

  	mobilityAdhoc.SetMobilityModel("ns3::ConstantPositionMobilityModel");
//  	mobilityAdhoc.SetMobilityModel("ns3::RandomWalk2dMobilityModel", "Mode",
//  			StringValue("Time"), //根据mode来选择换方向的依据（time/distance）
//  			"Time", StringValue("4s"), //多久换一次方向
//  			"Speed", StringValue(ssSpeed.str()), //节点移动速度： 1m/s ~ 5.0m/s;
//  			"Bounds", StringValue("-100|100|-100|100"));
  	mobilityAdhoc.Install(adhocNodes);

  	AodvHelper aodv;
  	OlsrHelper olsr;
  	DsdvHelper dsdv;
  	DsrHelper dsr;
  	DsrMainHelper dsrMain;
  	Ipv4ListRoutingHelper list;
//  	InternetStackHelper internet;
  	int m_protocol=2;
  	switch (m_protocol) {
  	case 1:
  		list.Add(olsr, 100);
  		break;
  	case 2:
  		list.Add(aodv, 100);
  		break;
  	case 3:
  		list.Add(dsdv, 100);
  		break;
  	case 4:
  		break;
  	default:
  		NS_FATAL_ERROR("No such protocol:" << m_protocol);
  	}

  	if (m_protocol < 4) {
  		internet.SetRoutingHelper(list);
  		internet.Install(adhocNodes);
  	} else if (m_protocol == 4) {
  		internet.Install(adhocNodes);
  		dsrMain.Install(dsr, adhocNodes);
  	}
  	NS_LOG_INFO("assigning ip address");

  	Ipv4AddressHelper addressAdhoc;
//  	addressAdhoc.SetBase("10.1.1.0", "255.255.255.0");
  	Ipv4InterfaceContainer adhocInterfaces;
  	adhocInterfaces = addressAdhoc.Assign(adhocDevices);

//  CsmaHelper csma;
//  csma.SetChannelAttribute ("DataRate", DataRateValue (DataRate (5000000)));
//  csma.SetChannelAttribute ("Delay", TimeValue (MilliSeconds (2)));
//  csma.SetDeviceAttribute ("Mtu", UintegerValue (1400));
//  NetDeviceContainer d = csma.Install (n);

//
// We've got the "hardware" in place.  Now we need to add IP addresses.
//
  NS_LOG_INFO ("Assign IP Addresses.");
  if (useV6 == false)
    {
      Ipv4AddressHelper ipv4;
      ipv4.SetBase ("10.1.1.0", "255.255.255.0");
      Ipv4InterfaceContainer i = ipv4.Assign (adhocDevices);
      serverAddress = Address(i.GetAddress (29));
    }
  else
    {
      Ipv6AddressHelper ipv6;
      ipv6.SetBase ("2001:0000:f00d:cafe::", Ipv6Prefix (64));
      Ipv6InterfaceContainer i6 = ipv6.Assign (adhocDevices);
      serverAddress = Address(i6.GetAddress (29,1));
    }

  NS_LOG_INFO ("Create Applications.");
//
// Create a UdpEchoServer application on node one.
//
  uint16_t port = 9;  // well-known echo port number
  UdpEchoServerHelper server (port);
  ApplicationContainer apps = server.Install (adhocNodes.Get (29));
  apps.Start (Seconds (1.0));
  apps.Stop (Seconds (20.0));

//
// Create a UdpEchoClient application to send UDP datagrams from node zero to
// node one.
//
  uint32_t packetSize = 1024;
  uint32_t maxPacketCount = 100;
  Time interPacketInterval = Seconds (0.1);
  UdpEchoClientHelper client (serverAddress, port);
  client.SetAttribute ("MaxPackets", UintegerValue (maxPacketCount));
  client.SetAttribute ("Interval", TimeValue (interPacketInterval));
  client.SetAttribute ("PacketSize", UintegerValue (packetSize));
  apps = client.Install (adhocNodes.Get (0));
  apps.Start (Seconds (2.0));
  apps.Stop (Seconds (20.0));

#if 0
//
// Users may find it convenient to initialize echo packets with actual data;
// the below lines suggest how to do this
//
  client.SetFill (apps.Get (0), "Hello World");

  client.SetFill (apps.Get (0), 0xa5, 1024);

  uint8_t fill[] = { 0, 1, 2, 3, 4, 5, 6};
  client.SetFill (apps.Get (0), fill, sizeof(fill), 1024);
#endif

//  AsciiTraceHelper ascii;
//  csma.EnableAsciiAll (ascii.CreateFileStream ("udp-echo.tr"));
//  csma.EnablePcapAll ("udp-echo", false);

//
// Now, do the actual simulation.
//
  NS_LOG_INFO ("Run Simulation.");
  Simulator::Run ();
  Simulator::Destroy ();
  NS_LOG_INFO ("Done.");
}
