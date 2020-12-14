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
#include "ns3/ndnSIM/apps/ndn-app.hpp"
#include "ns3/ndnSIM/utils/tracers/ndn-fileconsumer-tracer.hpp"
#include "ns3/ndnSIM/utils/tracers/ndn-info-test.hpp"
#include <string>
#include <iostream>

using namespace std;
namespace ns3 {

NS_LOG_COMPONENT_DEFINE("ndn.WifiFile");

//void
//FileDownloadedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, double downloadSpeed, long milliSeconds)
//{
//  std::cout << "Trace: File finished downloading: " << Simulator::Now().GetMilliSeconds () << " "<< *interestName <<
//     " Download Speed: " << downloadSpeed/1000.0 << " Kilobit/s in " << milliSeconds << " ms" << std::endl;
//}
//
//void
//FileDownloadedManifestTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, long fileSize)
//{
//  std::cout << "Trace: Manifest received: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << " File Size: " << fileSize << std::endl;
//}
//
//void
//FileDownloadStartedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName)
//{
//  std::cout << "Trace: File started downloading: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << std::endl;
//}

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
//	ns3::RngSeedManager::SetSeed(10);
//	ns3::RngSeedManager::SetRun(10);
	LogComponentEnable("ndn.Consumer",LOG_LEVEL_FUNCTION);
	LogComponentEnable("ndn.FileConsumer",LOG_LEVEL_FUNCTION);
  // disable fragmentation
  Config::SetDefault("ns3::WifiRemoteStationManager::FragmentationThreshold", StringValue("2200"));
  Config::SetDefault("ns3::WifiRemoteStationManager::RtsCtsThreshold", StringValue("2200"));
  Config::SetDefault("ns3::WifiRemoteStationManager::NonUnicastMode",
                     StringValue("OfdmRate24Mbps"));
  unsigned int interestRate = 39800;
  int wifiRadius = 55;
  CommandLine cmd;
  cmd.AddValue ("interestRate", "interest send rate", interestRate);
  cmd.AddValue ("wifiRadius", "wifi radius", wifiRadius);
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
		  	  	  	  	  ns3::DoubleValue(wifiRadius)); //设置信道的传播损失模型和最大传输距离

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
  randomizer->SetAttribute("Min", DoubleValue(-100));
  randomizer->SetAttribute("Max", DoubleValue(100));


  mobility.SetPositionAllocator("ns3::RandomRectanglePositionAllocator", "X", PointerValue(randomizer),
                                "Y", PointerValue(randomizer));

  //使得节点静止
//  mobility.SetMobilityModel("ns3::ConstantPositionMobilityModel");

  mobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",
		  "Mode", StringValue ("Time"), //根据mode来选择换方向的依据（time/distance）
		  "Time", StringValue ("4s"), //多久换一次方向
		  "Speed", StringValue ("ns3::UniformRandomVariable[Min=30|Max=30]"), //节点移动速度： 1m/s ~ 5.0m/s
		  "Bounds", StringValue ("-100|100|-100|100"));

//  AsciiTraceHelper ascii;
//  Ptr<OutputStreamWrapper> stream = ascii.CreateFileStream ("./pos.tr");

  //设置节点动动
  //mobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",  //移动模型
	//	  "Speed",ns3::StringValue ("ns3::UniformRandomVariable[Min=0.01|Max=0.02]"), //移动速度
	//	  "Bounds", StringValue ("0|100|0|100")); //移动范围

  NodeContainer nodes;
  nodes.Create(50);

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

  // Consumer
  ndn::AppHelper consumerHelper("ns3::ndn::FileConsumerCbr");
  consumerHelper.SetAttribute("FileToRequest", StringValue("/myprefix/ns-3-model-library.pdf"));
  consumerHelper.SetAttribute("InterestSendRate", UintegerValue(interestRate));
  consumerHelper.Install(nodes.Get(26)); // install to some node from nodelist
//  consumerHelper.Install(nodes.Get(1));
//  consumerHelper.Install(nodes.Get(2));
//  consumerHelper.Install(nodes.Get(3));
//  consumerHelper.Install(nodes.Get(4));
//  consumerHelper.Install(nodes.Get(5));
//  consumerHelper.Install(nodes.Get(6));
//  consumerHelper.Install(nodes.Get(7));

  // Connect Tracers
//  Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadFinished",
//                                 MakeCallback(&FileDownloadedTrace));
//  Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/ManifestReceived",
//                                 MakeCallback(&FileDownloadedManifestTrace));
//  Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadStarted",
//                                 MakeCallback(&FileDownloadStartedTrace));

  // Producer
  ndn::AppHelper producerHelper("ns3::ndn::FileServer");
  // Producer will reply to all requests starting with /prefix
  producerHelper.SetPrefix("/myprefix");
  producerHelper.SetAttribute("ContentDirectory", StringValue("/home/zheng/somedata/"));
  producerHelper.Install(nodes.Get(33)); // install to some node from nodelist

  ////////////////

  Simulator::Stop(Seconds(100.0));

  ndn::AppDelayTracer::InstallAll(string("app-delays-trace%.txt")+std::to_string(interestRate));
  std::stringstream ss_tmp;
  ss_tmp << "/home/tlx/simulation/file-consumer-tracer" << (int)wifiRadius << ".txt";
  ndn::FileConsumerTracer::InstallAll(ss_tmp.str());
////  ndn::CsTracer::InstallAll("cs-trace.txt", Seconds(1));
//  std::stringstream ss_tmp1;
//  ss_tmp1 << "/home/tlx/simulation/FileConsumerTracer" << ".txt";
//  ndn::FileConsumerLogTracer::InstallAll(ss_tmp1.str());
//  ndn::L3InfoTracer::InstallAll("info-trace.txt");

  Simulator::Run();
  Simulator::Destroy();

  NS_LOG_UNCOND("Simulation Finished.");

  return 0;
}

} // namespace ns3

int
main(int argc, char* argv[])
{
  return ns3::main(argc, argv);
}
