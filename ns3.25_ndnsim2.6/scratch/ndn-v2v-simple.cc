#include "ns3/core-module.h"

#include "ns3/mobility-module.h"
#include "ns3/network-module.h"
#include "ns3/wifi-module.h"
#include "ns3/random-variable-stream.h"
#include "ns3/ndnSIM/apps/ndn-producer.hpp"
#include "ns3/ndnSIM/apps/ndn-consumer-cbr.hpp"
#include "ns3/ndnSIM/apps/ndn-app.hpp"
#include "ns3/ndnSIM/helper/ndn-app-helper.hpp"
#include "ns3/ndnSIM/helper/ndn-stack-helper.hpp"
#include <ns3/ndnSIM/helper/ndn-global-routing-helper.hpp>
#include "ns3/animation-interface.h"
#include "ns3/point-to-point-module.h"
#include "ns3/ndnSIM-module.h"


#include <algorithm>
#include <vector>
#include <fstream>
#include <iostream>
#include "ns3/stats-module.h"
#include <sqlite3.h>
#include "ns3/ptr.h"

namespace ns3{

/**
 * This scenario simulates a scenario with 6 cars movind and communicating
 * in an ad-hoc way.
 *
 * 5 consumers request data from producer with frequency 1 interest per second
 * (interests contain constantly increasing sequence number).
 *
 * For every received interest, producer replies with a data packet, containing
 * 1024 bytes of payload.
 *
 * To run scenario and see what is happening, use the following command:
 *
 *     NS_LOG=ndn.Consumer:ndn.Producer ./waf --run=ndn-v2v-simple
 *
 * To modify the mobility model, see function installMobility.
 * To modify the wifi model, see function installWifi.
 * To modify the NDN settings, see function installNDN and for consumer and
 * producer settings, see functions installConsumer and installProducer
 * respectively.
 */

NS_LOG_COMPONENT_DEFINE ("V2VSimple");

std::string dbName="v2v_status";
static const uint32_t nwifis = 3;
double sum = 0;
double cnt = 0;
double Percentage =0.3;
int Simulator_Times = 1;
int NumberOfFinish = 0;
int amountOfClient = 1;

std::string Cache_Number = "100";
int nodeSpeed = 10; //in m/s
Ptr<SqliteDataOutput> output = CreateObject<SqliteDataOutput>();

void
FileDownloadedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, double downloadSpeed, long milliSeconds)
{
  std::cout << "Trace: File finished downloading: " << Simulator::Now().GetMilliSeconds () << " "<< *interestName <<
     " Download Speed: " << downloadSpeed/1000.0 << " Kilobit/s in " << milliSeconds << " ms" << std::endl;

	std::ofstream Temp_Out_Delay("File_Temp_Delay_percentage", std::ios::app);
	if (Simulator_Times == 1 && NumberOfFinish == amountOfClient)
		Temp_Out_Delay << milliSeconds;
	else
		Temp_Out_Delay << milliSeconds << std::endl;
	Temp_Out_Delay.close();

	if (Simulator_Times == 10 && NumberOfFinish == amountOfClient) { //calculate average of 10 simulator times
		std::ofstream Out_Delay("File_Delay_percentage", std::ios::app);
		ifstream out;
		out.open("File_Temp_Delay_percentage", std::ios::in);
		int line_count = 0;
		if(nwifis==30&&(Percentage - 0.1) < 1e-6&&(Percentage - 0.1)>-1e-6)Out_Delay <<"Cache_Number"<<Cache_Number<< std::endl;
		while (!out.eof()) {
			out >> cnt;
			line_count++;
			sum = sum + cnt;
		}
		//Out_Delay << sum << ",";
		Out_Delay << (int) (sum / line_count) << ",";
		if ((Percentage - 0.9) < 1e-6&&(Percentage - 0.9)>-1e-6)
			Out_Delay << std::endl;
		Out_Delay.close();
		out.close();

	//	std::ofstream tmp("File_Temp_Delay_percentage", std::ios::trunc);  //clear File_Temp_Delay_percentage
		std::ofstream tmp("File_Temp_Delay_percentage", std::ios::app);
            tmp<<std::endl;
//	   out.open("File_Temp_Delay",std::ios::in);
//	   out << "";
		tmp.close();

	}
}

void
FileDownloadedManifestTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName, long fileSize)
{
  std::cout << "Trace: Manifest received: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << " File Size: " << fileSize << std::endl;
}

void
FileDownloadStartedTrace(Ptr<ns3::ndn::App> app, shared_ptr<const ndn::Name> interestName)
{
  std::cout << "Trace: File started downloading: " << Simulator::Now().GetMilliSeconds () <<" "<< *interestName << std::endl;
}

//std::string num2str(double num) {
//	std::ostringstream oss;
//	std::string str = "";
//	oss << num;
//	str = oss.str();
//	return str;
//}

void FirstInterestDataDelay(Ptr<ns3::ndn::App> app,
		uint32_t seqno,Time t,uint32_t retxcount,int32_t hopcount) {
	std::cout << "22222222222222222222this is seq number :    " << seqno
			<< "Delay between first transmitted Interest and received Data " << t << "   hop count"<<hopcount
			<< std::endl;
}

void printPosition(Ptr<const MobilityModel> mobility) //DEBUG purpose
{
  Simulator::Schedule(Seconds(1), &printPosition, mobility);
  NS_LOG_INFO("Car "<<  mobility->GetObject<Node>()->GetId() << " is at: " <<mobility->GetPosition());
}


void installMobility(NodeContainer &c, int simulationEnd)
{
  MobilityHelper mobility;
  mobility.SetMobilityModel("ns3::WaypointMobilityModel");
  mobility.Install(c);

  bool test = true;
  if(test){
    Ptr<WaypointMobilityModel> wayMobility[nwifis];
    for (uint32_t i = 0; i < nwifis; i++) {
      wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
      Waypoint waypointStart(Seconds(0), Vector3D(i*25, 0, 0));
     // Waypoint waypointEnd(Seconds(simulationEnd), Vector3D(i*25, 0, 0));

      wayMobility[i]->AddWaypoint(waypointStart);
     // wayMobility[i]->AddWaypoint(waypointEnd);
      //NS_LOG_INFO("Node " << i << " positions " << waypointStart << " " << waypointEnd);
    }


    return;
  }
  Ptr<WaypointMobilityModel> wayMobility[nwifis];
  for (uint32_t i = 0; i < nwifis; i++) {
    wayMobility[i] = c.Get(i)->GetObject<WaypointMobilityModel>();
    Waypoint waypointStart(Seconds(0), Vector3D(i*25, 0, 0));
    Waypoint waypointMiddle(Seconds(simulationEnd/2), Vector3D(i*25+1000, 0, 0));
    Waypoint waypointEnd(Seconds(simulationEnd+1), Vector3D(i*25+1000, 0, 0));

    wayMobility[i]->AddWaypoint(waypointStart);
    wayMobility[i]->AddWaypoint(waypointMiddle);
    wayMobility[i]->AddWaypoint(waypointEnd);
    NS_LOG_INFO("Node " << i << " positions " << waypointStart << " " << waypointMiddle << " " << waypointEnd);
  }



}

//void installMobility(NodeContainer &c, int simulationEnd)
//{
//	MobilityHelper mobilityAdhoc;
//		int64_t streamIndex = 0; // used to get consistent mobility across scenarios
//
//		ObjectFactory pos;
//		pos.SetTypeId("ns3::RandomRectanglePositionAllocator");
//		pos.Set("X", StringValue("ns3::UniformRandomVariable[Min=0.0|Max=300.0]"));
//		pos.Set("Y", StringValue("ns3::UniformRandomVariable[Min=0.0|Max=300.0]"));
//
//		Ptr<PositionAllocator> taPositionAlloc = pos.Create()->GetObject<
//				PositionAllocator>();
//		streamIndex += taPositionAlloc->AssignStreams(streamIndex);
//
//		std::stringstream ssSpeed;
//		ssSpeed << "ns3::UniformRandomVariable[Min=0.0|Max=" << 5 << "]";
//		std::stringstream ssPause;
//		ssPause << "ns3::ConstantRandomVariable[Constant=" << 0.1 << "]";
//		mobilityAdhoc.SetMobilityModel("ns3::RandomWaypointMobilityModel", "Speed",
//				StringValue(ssSpeed.str()), "Pause", StringValue(ssPause.str()),
//				"PositionAllocator", PointerValue(taPositionAlloc));
//		mobilityAdhoc.SetPositionAllocator(taPositionAlloc);
//		mobilityAdhoc.Install(c);
//		streamIndex += mobilityAdhoc.AssignStreams(c, streamIndex);
//	}

void installWifi(NodeContainer &c, NetDeviceContainer &devices)
{
  // Modulation and wifi channel bit rate
  std::string phyMode("OfdmRate24Mbps");
  //std::string phyMode("DsssRate11Mbps");

  // Fix non-unicast data rate to be the same as that of unicast
  Config::SetDefault("ns3::WifiRemoteStationManager::NonUnicastMode", StringValue(phyMode));

  WifiHelper wifi;
  wifi.SetStandard(WIFI_PHY_STANDARD_80211a);

  YansWifiPhyHelper wifiPhy = YansWifiPhyHelper::Default();
  wifiPhy.SetPcapDataLinkType(YansWifiPhyHelper::DLT_IEEE802_11_RADIO);

  YansWifiChannelHelper wifiChannel;
  wifiChannel.SetPropagationDelay("ns3::ConstantSpeedPropagationDelayModel");
  wifiChannel.AddPropagationLoss("ns3::RangePropagationLossModel",
                                 "MaxRange", DoubleValue(100.0));
  wifiChannel.AddPropagationLoss("ns3::NakagamiPropagationLossModel",
                                 "m0", DoubleValue(1.0),
                                 "m1", DoubleValue(1.0),
                                 "m2", DoubleValue(1.0));
  wifiPhy.SetChannel(wifiChannel.Create());

  // Add a non-QoS upper mac
  NqosWifiMacHelper wifiMac = NqosWifiMacHelper::Default();
  // Set it to adhoc mode
  wifiMac.SetType("ns3::AdhocWifiMac");

  // Disable rate control
  wifi.SetRemoteStationManager("ns3::ConstantRateWifiManager",
                               "DataMode", StringValue(phyMode),
                               "ControlMode", StringValue(phyMode));

  devices = wifi.Install(wifiPhy, wifiMac, c);
}

void installNDN(NodeContainer &c)
{
  ndn::StackHelper ndnHelper;
  ndnHelper.SetDefaultRoutes(true);
  ndnHelper.setCsSize(0);
// ndnHelper.setPolicy("nfd::cs::lru");
  ndnHelper.SetOldContentStore("ns3::ndn::cs::Lru");

  ndnHelper.Install(c);
  ndn::StrategyChoiceHelper::InstallAll("/", "/localhost/nfd/strategy/multicast");

  ///todo add v2v face


}

void installConsumer(NodeContainer &c)
{
//  ndn::AppHelper helper("ns3::ndn::ConsumerCbr");
//  helper.SetAttribute("Frequency", DoubleValue (10));
//  //helper.SetAttribute("Randomize", StringValue("uniform"));
//  //MaxSeq and MaxSeq_status Set the
// // helper.SetAttribute("MaxSeq", StringValue("100"));
//
//  helper.SetAttribute("LifeTime", StringValue("20s"));
//  helper.SetPrefix("/v2v/test");//2018.12.04
	ndn::AppHelper consumerHelper("ns3::ndn::FileConsumer");
	  consumerHelper.SetAttribute("FileToRequest", StringValue("/TEST/Hello"));// name of the file to request
	  consumerHelper.SetAttribute("WriteOutfile",StringValue("/home/han/Desktop/12323.mp3"));

	 // consumerHelper.Install(nodes.Get(0)); /

   consumerHelper.Install(c);
}
//
//void installProducer(NodeContainer &c)
//{
//  ndn::AppHelper producerHelper("ns3::ndn::Producer");
//  producerHelper.SetPrefix("/v2v");
//
//  producerHelper.Install(c.Get(0));
//  NS_LOG_INFO("Producer installed on node " << c.Get(0)->GetId());
//
//}

void installProducer(NodeContainer &c)
{
//  ndn::AppHelper producerHelper("ns3::ndn::Producer");
//  producerHelper.SetAttribute("PayloadSize", UintegerValue(1024));
//  producerHelper.SetPrefix("/v2v/test");
	 // Producer
	  ndn::AppHelper producerHelper("ns3::ndn::FileServer");

	  // Producer will reply to all requests starting with /prefix
	  producerHelper.SetPrefix("/TEST");
	  producerHelper.SetAttribute("ContentDirectory", StringValue("/home/sun-linux/somedata"));
	  producerHelper.Install(c); // install to some node from nodelist

//  producerHelper.Install(c);
  NS_LOG_INFO("Producer installed on node " << c.Get(0)->GetId());

}


int main (int argc, char *argv[])
{
  NS_LOG_UNCOND ("V2VTest Simulator");
  LogComponentEnable("ndn.Consumer",LOG_LEVEL_FUNCTION);
  LogComponentEnable("ndn.FileConsumer",LOG_LEVEL_FUNCTION);

  string format("db");
  	string experiment("wifi-distance-test");
  	string strategy("wifi-default");
  	string input;

	std::string runID;
 CommandLine cmd;
// cmd.AddValue("nwifis", "nwifis produce how much nodes in this experience",
//// 			nwifis);
// 	cmd.AddValue("percentage", "different rate consumer is install",
// 			Percentage);
// 	cmd.AddValue("Simulator_Times", "Format to use for data output.",
// 			Simulator_Times);
// 	cmd.AddValue("runID", "run id", runID);
// 	cmd.AddValue("Cache_Number", "the mount of cache", Cache_Number);
  cmd.Parse(argc, argv);


  //uint32_t numProducer = 1;
  int simulationEnd = 20000;

  NodeContainer c;
  c.Create(nwifis);

  installMobility(c, simulationEnd);

  NetDeviceContainer netDevices;
  installWifi(c, netDevices);

  installNDN(c);

  //setting application
  //Ptr<UniformRandomVariable> randomNum = CreateObject<UniformRandomVariable> ();
 // int producerId = randomNum->GetValue(0,numNodes-1);
  int producerId = nwifis-1;
  NodeContainer producer;
  producer.Add(c.Get(producerId));

  NodeContainer consumers;
  consumers.Add(c.Get(0));//s yb2018


  installConsumer(consumers);
  Config::ConnectWithoutContext(
  			"/NodeList/*/ApplicationList/*/FirstInterestDataDelay",
  			MakeCallback(&FirstInterestDataDelay));
//  // Connect Tracers
//    Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadFinished",
//                                 MakeCallback(&FileDownloadedTrace));
//    Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/ManifestReceived",
//                                 MakeCallback(&FileDownloadedManifestTrace));
//    Config::ConnectWithoutContext("/NodeList/*/ApplicationList/*/FileDownloadStarted",
//                                 MakeCallback(&FileDownloadStartedTrace));
  //  ns3::ndn::CsTracer::Install(c.Get(3),"cs-trace.txt");

  installProducer(producer);



//  for(int i=0; i<c.GetN(); i++){
//    Simulator::Schedule(Seconds(1), &printPosition, c.Get(i)->GetObject<WaypointMobilityModel>());
//  }
  // Create a DataCollector object to hold information about this run.
  	DataCollector data;
  	data.DescribeRun(experiment, strategy, input, runID);
  //status
	Ptr<PacketSizeMinMaxAvgTotalCalculator> appTxPkts = CreateObject<
			PacketSizeMinMaxAvgTotalCalculator>();
	appTxPkts->SetKey("rx-pkt-size");
	appTxPkts->SetContext("node[*]");
	Config::Connect("/NodeList/*/DeviceList/*/$ns3::WifiNetDevice/Mac/MacTx",
			MakeCallback(&PacketSizeMinMaxAvgTotalCalculator::PacketUpdate,
					appTxPkts));
	data.AddDataCalculator(appTxPkts);
 // Simulator::Stop(Seconds(simulationEnd));

  std::string animFile = "v2v-test.xml";
  AnimationInterface anim(animFile);

  ndn::CsTracer::InstallAll("cs-tracer.txt",Seconds(1));

  Simulator::Run ();

  Ptr<DataOutputInterface> output = 0;
  	if (format == "omnet") {
  		NS_LOG_INFO("Creating omnet formatted data output.");
  		output = CreateObject<OmnetDataOutput>();
  	} else if (format == "db") {
  #ifdef STATS_HAS_SQLITE3
  		NS_LOG_INFO("Creating sqlite formatted data output.");
  		output = CreateObject<SqliteDataOutput>();
  #endif
  	} else {
  		NS_LOG_ERROR("Unknown output format " << format);
  	}

  	// Finally, have that writer interrogate the DataCollector and save
  	// the results.
  	if (output != 0)
  		output->Output(data);

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
