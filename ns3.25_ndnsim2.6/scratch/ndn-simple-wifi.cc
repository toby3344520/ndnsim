/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * Copyright (c) 2011-2015  Regents of the University of California.
 *
 * This file is part of ndnSIM. See AUTHORS for complete list of ndnSIM authors and
 * contributors.
 *
 * ndnSIM is free software: you can redistribute it and/or modify it under the terms
 * of the GNU General Public License as published by the Free Software Foundation,
 * either version 3 of the License, or (at your option) any later version.
 *
 * ndnSIM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * ndnSIM, e.g., in COPYING.md file.  If not, see <http://www.gnu.org/licenses/>.
 **/

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/applications-module.h"
#include "ns3/wifi-module.h"
#include "ns3/mobility-module.h"
#include "ns3/internet-module.h"

#include "ns3/ndnSIM-module.h"
#include "ns3/ndnSIM/utils/tracers/ndn-info-test.hpp"
using namespace std;
namespace ns3 {

NS_LOG_COMPONENT_DEFINE("ndn.WifiExample");

//
// DISCLAIMER:  Note that this is an extremely simple example, containing just 2 wifi nodes
// communicating directly over AdHoc channel.
//

// Ptr<ndn::NetDeviceFace>
// MyNetDeviceFaceCallback (Ptr<Node> node, Ptr<ndn::L3Protocol> ndn, Ptr<NetDevice> device)
// {
//   // NS_LOG_DEBUG ("Create custom network device " << node->GetId ());
//   Ptr<ndn::NetDeviceFace> face = CreateObject<ndn::MyNetDeviceFace> (node, device);
//   ndn->AddFace (face);
//   return face;
// }

int
main(int argc, char* argv[])
{
  // disable fragmentation
  Config::SetDefault("ns3::WifiRemoteStationManager::FragmentationThreshold", StringValue("2200"));
  Config::SetDefault("ns3::WifiRemoteStationManager::RtsCtsThreshold", StringValue("2200"));
  Config::SetDefault("ns3::WifiRemoteStationManager::NonUnicastMode",
                     StringValue("OfdmRate24Mbps"));

  CommandLine cmd;
  cmd.Parse(argc, argv);

  //////////////////////
  //////////////////////
  //////////////////////
  WifiHelper wifi;
  // wifi.SetRemoteStationManager ("ns3::AarfWifiManager");
  wifi.SetStandard(WIFI_PHY_STANDARD_80211a);
  wifi.SetRemoteStationManager("ns3::ConstantRateWifiManager", "DataMode",
                               StringValue("OfdmRate6Mbps"), "ControlMode", StringValue("OfdmRate6Mbps"));

  YansWifiChannelHelper wifiChannel; // = YansWifiChannelHelper::Default (); //信道
  wifiChannel.SetPropagationDelay("ns3::ConstantSpeedPropagationDelayModel"); //设置信道的传播时延模型（光速）
  wifiChannel.AddPropagationLoss("ns3::RangePropagationLossModel", "MaxRange",
		  	  	  	  	  ns3::DoubleValue(30.0)); //设置信道的传播损失模型和最大传输距离

  //wifiChannel.AddPropagationLoss("ns3::NakagamiPropagationLossModel");

  // YansWifiPhy wifiPhy = YansWifiPhy::Default();
  ns3::YansWifiPhyHelper wifiPhyHelper;          // 物理层
  wifiPhyHelper.SetErrorRateModel ("ns3::NistErrorRateModel");
  wifiPhyHelper.SetPcapDataLinkType(ns3::YansWifiPhyHelper::DLT_IEEE802_11_RADIO);
  wifiPhyHelper.SetChannel(wifiChannel.Create());

  NqosWifiMacHelper wifiMacHelper;
  wifiMacHelper.SetType("ns3::AdhocWifiMac");

  MobilityHelper mobility;
  Ptr<UniformRandomVariable> randomizer = CreateObject<UniformRandomVariable>();
  randomizer->SetAttribute("Min", DoubleValue(-40));
  randomizer->SetAttribute("Max", DoubleValue(40));

  mobility.SetPositionAllocator("ns3::RandomRectanglePositionAllocator", "X", PointerValue(randomizer),
                                "Y", PointerValue(randomizer));

  //使得节点静止
  mobility.SetMobilityModel("ns3::ConstantPositionMobilityModel");

//  mobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",
//		  "Mode", StringValue ("Time"), //根据mode来选择换方向的依据（time/distance）
//		  "Time", StringValue ("4s"), //多久换一次方向
//		  "Speed", StringValue ("ns3::UniformRandomVariable[Min=1|Max=5]"), //节点移动速度： 1m/s ~ 5.0m/s
//		  "Bounds", StringValue ("-50|50|-50|50"));

//  AsciiTraceHelper ascii;
//  Ptr<OutputStreamWrapper> stream = ascii.CreateFileStream ("./pos.tr");


  //设置节点动动
  //mobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",  //移动模型
	//	  "Speed",ns3::StringValue ("ns3::UniformRandomVariable[Min=0.01|Max=0.02]"), //移动速度
	//	  "Bounds", StringValue ("0|100|0|100")); //移动范围

  NodeContainer nodes;
  nodes.Create(5);

  ////////////////
  // 1. Install Wifi
  NetDeviceContainer wifiNetDevices = wifi.Install(wifiPhyHelper, wifiMacHelper, nodes);

  // 2. Install Mobility model
  mobility.Install(nodes);

//  mobility.EnableAscii (stream, nodes);

  // 3. Install NDN stack
  NS_LOG_INFO("Installing NDN stack");
  ndn::StackHelper ndnHelper;
  // ndnHelper.AddNetDeviceFaceCreateCallback (WifiNetDevice::GetTypeId (), MakeCallback
  // (MyNetDeviceFaceCallback));
  ndnHelper.SetOldContentStore("ns3::ndn::cs::Lru", "MaxSize", "1000");
  ndnHelper.SetDefaultRoutes(true);
  ndnHelper.Install(nodes);

  // Set BestRoute strategy
  ndn::StrategyChoiceHelper::Install(nodes, "/", "/localhost/nfd/strategy/best-route");

  // 4. Set up applications
  NS_LOG_INFO("Installing Applications");

  ndn::AppHelper consumerHelper("ns3::ndn::ConsumerCbr");
  consumerHelper.SetPrefix("/test/prefix");
  consumerHelper.SetAttribute("Frequency", DoubleValue(10.0));
  consumerHelper.Install(nodes.Get(1));

  ndn::AppHelper producerHelper("ns3::ndn::Producer");
  producerHelper.SetPrefix("/");
  producerHelper.SetAttribute("PayloadSize", StringValue("1200"));
  producerHelper.Install(nodes.Get(2));

  ////////////////

  Simulator::Stop(Seconds(10.0));

//  ndn::AppDelayTracer::InstallAll("app-delays-trace.txt");
//  ndn::L3RateTracer::InstallAll("rate-trace.txt", Seconds(0.5));
  ndn::L3InfoTracer::InstallAll("info-trace.txt");

  Simulator::Run();
  Simulator::Destroy();

  return 0;
}

} // namespace ns3

int
main(int argc, char* argv[])
{
  return ns3::main(argc, argv);
}
