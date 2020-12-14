#include "iomanip"
#include "ns3/core-module.h"
#include "ns3/mobility-module.h"
#include "ns3/wifi-module.h"
#include "ns3/ndnSIM-module.h"
#include "ns3/ndnSIM/apps/ndn-app.hpp"
#include "ns3/stats-module.h"
#include "ns3/network-module.h"

NS_LOG_COMPONENT_DEFINE ("NDNMANETScriptExample");

using namespace ns3;
DataCollector data;
void MyPrintStats()
{
  int nodeDataPacketcount = 0;
  for (ns3::NodeList::Iterator node = ns3::NodeList::Begin(); node != ns3::NodeList::End(); node++)
  {
    ns3::Ptr<ns3::ndn::ContentStore> cs = (*node)->GetObject<ns3::ndn::ContentStore>();
    nodeDataPacketcount += cs->GetSize();
    std::cout << "current node csSize is: " << cs->GetSize() << std::endl;
  }
  std::cout << "all 4 current node csSize is: " << nodeDataPacketcount << std::endl;
}

void my_FirstInterestDataDelay(ns3::Ptr<ns3::ndn::App> app, uint32_t seqno, ns3::Time delay, uint32_t retxCount, int32_t hopCount)
{
  static int isFirstOutput = 1;
  if(isFirstOutput) {
    std::cout << "===> Delay between first transmitted Interest and received Data: "
              << "\n";
    std::cout << setw(16) << setiosflags(ios::left) << "Time"
              << setw(16) << setiosflags(ios::left) << "AppId"
              << setw(16) << setiosflags(ios::left) << "seqno"
              << setw(16) << setiosflags(ios::left) << "FullDelay"
              << setw(16) << setiosflags(ios::left) << "retxCount"
              << setw(16) << setiosflags(ios::left) << "hopCount"
              << "\n";
    isFirstOutput = 0;
  }
  std::cout << setw(16) << setiosflags(ios::left) << ns3::Simulator::Now().ToDouble(ns3::Time::S)
            << setw(16) << setiosflags(ios::left) << app->GetId()
            << setw(16) << setiosflags(ios::left) << seqno
            << setw(16) << setiosflags(ios::left) << delay.ToDouble(ns3::Time::S)
            << setw(16) << setiosflags(ios::left) << retxCount
            << setw(16) << setiosflags(ios::left) << hopCount
            << "\n";
}

void my_CurrentPacketStats(ns3::Ptr<ns3::ndn::App> app,
                           shared_ptr<const ns3::ndn::Name> interestName,
                           unsigned int packetsSent,
                           unsigned int packetsReceived,
                           unsigned int packetsTimedout,
                           unsigned int packetsRetransmitted,
                           double EstimatedRTT,
                           double RTTVariation)
{
  static int isFirstOutput_CurrentPacketStats = 1;
  if(isFirstOutput_CurrentPacketStats) {
    std::cout << "===> Trace current packets statistics (once per second): "
              << "\n";
    std::cout << setw(8) << setiosflags(ios::left) << "Time"
              << setw(8) << setiosflags(ios::left) << "AppId"
              << setw(32) << setiosflags(ios::left) << "interestName"
              << setw(16) << setiosflags(ios::left) << "packetsSent"
              << setw(16) << setiosflags(ios::left) << "packetsReceived"
              << setw(16) << setiosflags(ios::left) << "packetsTimedout"
              << setw(24) << setiosflags(ios::left) << "packetsRetransmitted"
              << setw(16) << setiosflags(ios::left) << "EstimatedRTT"
              << setw(16) << setiosflags(ios::left) << "RTTVariation"
              << "\n";
    isFirstOutput_CurrentPacketStats = 0;
  }
  std::cout << setw(8) << setiosflags(ios::left) << ns3::Simulator::Now().ToDouble(ns3::Time::S)
            << setw(8) << setiosflags(ios::left) << app->GetId()
            << setw(32) << setiosflags(ios::left) << interestName->toUri()
            << setw(16) << setiosflags(ios::left) << packetsSent
            << setw(16) << setiosflags(ios::left) << packetsReceived
            << setw(16) << setiosflags(ios::left) << packetsTimedout
            << setw(24) << setiosflags(ios::left) << packetsRetransmitted
            << setw(16) << setiosflags(ios::left) << EstimatedRTT
            << setw(16) << setiosflags(ios::left) << RTTVariation
            << "\n";
}


//void installMobility(ns3::NodeContainer &c, int simulationEnd)
//{
//  ns3::MobilityHelper mobility;
//  mobility.SetMobilityModel("ns3::WaypointMobilityModel");
//  mobility.Install(c);
//  bool test = true;
//  if(test){
//    Ptr<WaypointMobilityModel> wayMobility[nwifis];
//    for (uint32_t i = 0; i < 2; i++) {
//      wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//      Waypoint waypointStart(Seconds(0), Vector3D(0, i*25, 0));
//      wayMobility[i]->AddWaypoint(waypointStart);
//    }
//    for (uint32_t i = 2; i < 3; i++) {
//          wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//          Waypoint waypointStart(Seconds(0), Vector3D(-25, 25, 0));
//          wayMobility[i]->AddWaypoint(waypointStart);
//        }
//    for (uint32_t i = 3; i < 4; i++) {
//             wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//             Waypoint waypointStart(Seconds(0), Vector3D(25, 25, 0));
//             wayMobility[i]->AddWaypoint(waypointStart);
//           }
//
//    return;
//  }
//  Ptr<WaypointMobilityModel> wayMobility[nwifis];
//  for (uint32_t i = 0; i < nwifis; i++) {
//    wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//    Waypoint waypointStart(Seconds(0), Vector3D(i*25, 0, 0));
//    Waypoint waypointMiddle(Seconds(simulationEnd/2), Vector3D(i*25+1000, 0, 0));
//    Waypoint waypointEnd(Seconds(simulationEnd+1), Vector3D(i*25+1000, 0, 0));
//
//    wayMobility[i]->AddWaypoint(waypointStart);
//    wayMobility[i]->AddWaypoint(waypointMiddle);
//    wayMobility[i]->AddWaypoint(waypointEnd);
//    NS_LOG_INFO("Node " << i << " positions " << waypointStart << " " << waypointMiddle << " " << waypointEnd);
//  }
//}


void SetNodeMobilityModel(ns3::NodeContainer & nodes)
{
	NodeContainer &c=nodes;
//	int simulationEnd=100;
//	uint32_t nwifis=3;
//	  ns3::MobilityHelper mobility;
//	  mobility.SetMobilityModel("ns3::WaypointMobilityModel");
//	  mobility.Install(c);
//	  bool test = false;
//	  if(test){
//	    Ptr<WaypointMobilityModel> wayMobility[nwifis];
//	    for (uint32_t i = 0; i < nwifis; i++) {
//	      wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//	      Waypoint waypointStart(Seconds(0), Vector3D(i*25,0, 0));
//	      wayMobility[i]->AddWaypoint(waypointStart);
//	    }
////	    for (uint32_t i = 2; i < 3; i++) {
////	          wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
////	          Waypoint waypointStart(Seconds(0), Vector3D(-25, 25, 0));
////	          wayMobility[i]->AddWaypoint(waypointStart);
////	        }
////	    for (uint32_t i = 3; i < 4; i++) {
////	             wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
////	             Waypoint waypointStart(Seconds(0), Vector3D(25, 25, 0));
////	             wayMobility[i]->AddWaypoint(waypointStart);
////	           }
//
//	    return;
//	  }
//	  Ptr<WaypointMobilityModel> wayMobility[nwifis];
//	  for (uint32_t i = 0; i < nwifis; i++) {
//	    wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
//	    Waypoint waypointStart(Seconds(0), Vector3D(i*25, 0, 0));
//	    Waypoint waypointMiddle(Seconds(simulationEnd/2), Vector3D(i*25+1000, 0, 0));
//	    Waypoint waypointEnd(Seconds(simulationEnd+1), Vector3D(i*25+1000, 0, 0));
//
//	    wayMobility[i]->AddWaypoint(waypointStart);
//	    wayMobility[i]->AddWaypoint(waypointMiddle);
//	    wayMobility[i]->AddWaypoint(waypointEnd);
//	    NS_LOG_INFO("Node " << i << " positions " << waypointStart << " " << waypointMiddle << " " << waypointEnd);
//	  }


 ns3::MobilityHelper MANETMobility;
  // 设置节点的初始位置
  // 节点初始位置示意图（上下左右相邻节点相距100m）
  // +  0  1  2  3  4  5  6  7  8  9  10 -->
  // 0  ------------------------------|
  // 1  |  @  @  @  @  @  @  @  @  @  |
  // 2  |  @  @  @  @  @  @  @  @  @  |
  // 3  |  @  @  @  @  @  @  @  @  @  |
  // 4  |  @  @  @  @  @  @  @  @  @  |
  // 5  |  @  @  @  @  @  @  @  @  @  |
  // 6  |  @  @  @  @  @  @  @  @  @  |
  // 7  |  @  @  @  @  @  @  @  @  @  |
  // 8  |  @  @  @  @  @  @  @  @  @  |
  // 9  |  @  @  @  @  @  @  @  @  @  |
  //\|/ ------------------------------|
  MANETMobility.SetPositionAllocator("ns3::GridPositionAllocator",
                                     "GridWidth", ns3::UintegerValue (7),
                                     "MinX", ns3::DoubleValue (100.0),
                                     "MinY", ns3::DoubleValue (100.0),
                                     "DeltaX", ns3::DoubleValue (50.0),
                                     "DeltaY", ns3::DoubleValue (50.0),
                                     "LayoutType", ns3::StringValue("RowFirst"));
  // 设置节点的移动性模型
//  int64_t streamIndex = 1;
//  ns3::ObjectFactory nodePosition;
//  nodePosition.SetTypeId("ns3::RandomRectanglePositionAllocator");
//  nodePosition.Set("X", ns3::StringValue("ns3::UniformRandomVariable[Min=0.0|Max=1000.0]"));
//  nodePosition.Set("Y", ns3::StringValue("ns3::UniformRandomVariable[Min=0.0|Max=1000.0]"));
//  ns3::Ptr<ns3::PositionAllocator> nodePositionAllocator = nodePosition.Create()->GetObject<ns3::PositionAllocator>();
//  MANETMobility.SetMobilityModel("ns3::RandomWaypointMobilityModel",
//                                 "Speed", ns3::StringValue ("ns3::UniformRandomVariable[Min=1.2|Max=10.0]"), // 节点移动速度： 1.2m/s ~ 10.0m/s
//                                 "Pause", ns3::StringValue ("ns3::ConstantRandomVariable[Constant=2.0]"),    // 节点暂停时间： 2s
//                                 "PositionAllocator", ns3::PointerValue (nodePositionAllocator));
  // 安装到节点上
  MANETMobility.Install(nodes);
  // if AssignStreams is called before Install, it will not have any effect.
//  int64_t streamsUsed = MANETMobility.AssignStreams(nodes, streamIndex);
}

int main(int argc, char * argv[])
{
  NS_LOG_UNCOND("NDN MANET Simulator");
  //LogComponentEnable("ndn.FileConsumer", ns3::LOG_LEVEL_DEBUG);
  //LogComponentEnable("ndn.Producer", ns3::LOG_LEVEL_INFO);
  //LogComponentEnable("nfd.Forwarder", ns3::LOG_LEVEL_INFO);

  ns3::CommandLine cmd;
  cmd.Parse (argc, argv); // 解析命令行参数

  // 创建节点并设置节点的移动性模型
  ns3::NodeContainer MANETNodes;
  MANETNodes.Create(49);            // 创建81个节点
  SetNodeMobilityModel(MANETNodes); // 设置节点的移动性模型

  // 在所有节点上安装Wi-Fi模块
  ns3::Config::SetDefault("ns3::WifiRemoteStationManager::NonUnicastMode",
                     ns3::StringValue("OfdmRate24Mbps"));
  ns3::WifiHelper wifi;
  wifi.SetStandard(ns3::WIFI_PHY_STANDARD_80211a);                                  // OFDM PHY for the 5 GHz band. (Channel 36)
  wifi.SetRemoteStationManager("ns3::ConstantRateWifiManager",
                               "DataMode", ns3::StringValue("OfdmRate6Mbps"),
                               "ControlMode", ns3::StringValue("OfdmRate6Mbps"));
  ns3::YansWifiChannelHelper wifiChannelHelper;                                     // 信道
  wifiChannelHelper.SetPropagationDelay("ns3::ConstantSpeedPropagationDelayModel"); // 设置信道的传播时延模型（光速）
  wifiChannelHelper.AddPropagationLoss("ns3::RangePropagationLossModel",
                                       "MaxRange", ns3::DoubleValue(25.0));        // 设置信道的传播损失模型和最大传输距离。
  ns3::Ptr<ns3::YansWifiChannel> wifiChannel = wifiChannelHelper.Create();
  ns3::YansWifiPhyHelper wifiPhyHelper;                                             // 物理层
  wifiPhyHelper.SetErrorRateModel ("ns3::NistErrorRateModel");
  wifiPhyHelper.SetPcapDataLinkType(ns3::YansWifiPhyHelper::DLT_IEEE802_11_RADIO);
  wifiPhyHelper.SetChannel(wifiChannel);
  ns3::NqosWifiMacHelper wifiMacHelper;                                             // MAC层
  wifiMacHelper.SetType("ns3::AdhocWifiMac");                                       // 设置为Ad-hoc模式
  ns3::NetDeviceContainer netDevices;                                               // 安装到网络设备上
  netDevices = wifi.Install(wifiPhyHelper, wifiMacHelper, MANETNodes);

  // 在所有节点上安装NDN协议栈
  ns3::ndn::StackHelper ndnHelper;
  // ndnSIM 1.0
  ndnHelper.SetOldContentStore("ns3::ndn::cs::Lru", "MaxSize", "100");
  // ndnSIM 2.0
//  ndnHelper.setCsSize(100);                                                         // 设置CS的大小（ number of packets ）
//  ndnHelper.setPolicy("nfd::cs::lru");                                              // 设置缓存替换策略（最近最少使用算法）
  ndnHelper.SetDefaultRoutes(true);                                                   // 设置默认路由
  ndnHelper.Install(MANETNodes);
  ns3::ndn::StrategyChoiceHelper::Install(MANETNodes,
                                          "/myPrefix",
                                          "/localhost/nfd/strategy/multicast");

  // 消费者
  ns3::NodeContainer consumerNode;
  //consumerNode.Add(MANETNodes.Get(3));                                              // 设置0号节点为消费者
  consumerNode.Add(MANETNodes.Get(0));

  // 消费者应用层
  // 传输虚拟文件
  ns3::ndn::AppHelper consumerHelper("ns3::ndn::ConsumerZipfMandelbrot"); // ConsumerZipfMandelbrot可以产生重复的InterestPacket.


  consumerHelper.SetPrefix("/myPrefix");
  //consumerHelper.SetAttribute("Frequency", ns3::DoubleValue(10));
//  consumerHelper.SetAttribute("Batches", ns3::StringValue("1s 10"));
  consumerHelper.SetAttribute("LifeTime", ns3::StringValue("2s"));
  // 传输真实文件
/*  ns3::ndn::AppHelper consumerHelper("ns3::ndn::FileConsumer");
  consumerHelper.SetAttribute("FileToRequest",
                              ns3::StringValue("/myPrefix/lichengkang.jpg"));
  consumerHelper.SetAttribute("WriteOutfile",
                              ns3::StringValue("/home/lck/Pictures/consumer/lichengkang_received.jpg"));*/
//  (consumerHelper.Install(consumerNode.Get(0))).Start(Seconds(0));
  (consumerHelper.Install(consumerNode.Get(0))).Stop(Seconds(10));
  //consumerHelper.Install(consumerNode.Get(1)).Start(Seconds(10));
  Ptr<Application> app=consumerNode.Get(0)->GetApplication(0);

  // 生产者
  ns3::NodeContainer producerNode;
  producerNode.Add(MANETNodes.Get(2));                                             // 设置80号节点为生产者
  // 生产者应用层
  // 传输虚拟文件
  ns3::ndn::AppHelper producerHelper("ns3::ndn::Producer");
  producerHelper.SetPrefix("/myPrefix");                                            // 设置内容的名字的前缀
  producerHelper.SetAttribute("PayloadSize",
                              ns3::UintegerValue(1024));
  // 传输真实文件
/*  ns3::ndn::AppHelper producerHelper("ns3::ndn::FileServer");
  producerHelper.SetPrefix("/myPrefix");                                            // 设置内容的名字的前缀
  producerHelper.SetAttribute("ContentDirectory",
                              ns3::StringValue("/home/lck/Pictures/producer"));*/
  producerHelper.Install(producerNode);

  // install tracers on the selected simulation nodes.
  // 通过使用CsTracer，可以获得模拟节点的ContentStore上的缓存命中/未命中的统计信息。
  //ns3::ndn::CsTracer::Install(MANETNodes, "./scratch/MANETNodes-cs-trace.txt", ns3::Seconds(100)); // data will be written every 1.0s.
  // 通过使用AppDelayTracer，可以获得关于发送兴趣包和接收相应数据包之间的延迟的数据。
  //ns3::ndn::AppDelayTracer::Install(consumerNode, "./scratch/consumerNode-app-delays-trace.txt");
  //ns3::ndn::L3RateTracer::InstallAll("rate-trace.txt", Seconds(1.0));

  // Connect Tracers
//  ns3::Config::ConnectWithoutContext("/NodeList/0/ApplicationList/*/FirstInterestDataDelay",
//                                     ns3::MakeCallback(&my_FirstInterestDataDelay)); // 传输虚拟文件时调用的回调函数
//  ns3::Config::ConnectWithoutContext("/NodeList/0/ApplicationList/*/CurrentPacketStats",
//                                     ns3::MakeCallback(&my_CurrentPacketStats));     // 传输真实文件时调用的回调函数

	Ptr<PacketSizeMinMaxAvgTotalCalculator> appTxPkts = CreateObject<
			PacketSizeMinMaxAvgTotalCalculator>();
	appTxPkts->SetKey("tx-pkt-size 3 1");
	appTxPkts->SetContext("*");
	Config::Connect(
			"/NodeList/*/DeviceList/*/$ns3::WifiNetDevice/MacTx",
			MakeCallback(&PacketSizeMinMaxAvgTotalCalculator::PacketUpdate,
					appTxPkts));
	data.AddDataCalculator(appTxPkts);

  // 设置模拟时间为600秒
  ns3::Simulator::Stop(ns3::Seconds(100));
//  ns3::Simulator::Schedule(ns3::Seconds(10), &MyPrintStats);
//  ns3::Simulator::Schedule(ns3::Seconds(20), &MyPrintStats);
//  ns3::Simulator::Schedule(ns3::Seconds(30), &MyPrintStats);

  Ptr<DataOutputInterface> output = 0;

  #ifdef STATS_HAS_SQLITE3
  	NS_LOG_INFO("Creating sqlite formatted data output.");
  	output = CreateObject<SqliteDataOutput>();
  #endif

  	if (output != 0)
  		output->Output(data);

  // 开始模拟
  ns3::Simulator::Run ();
  ns3::Simulator::Destroy ();

  return 0;
}

