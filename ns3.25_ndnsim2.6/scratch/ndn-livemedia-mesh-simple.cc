/*
 * ndn-livemedia-mesh-simple.cc
 *
 *  Created on: Sep 3, 2020
 *      Author: tlx
 */

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/ndnSIM-module.h"
#include "ns3/ndnSIM/apps/ndn-app.hpp"

namespace ns3{

NS_LOG_COMPONENT_DEFINE("ndn_livemedia-avc-server");

int main(int argc, char *argv[]){
	LogComponentEnable("ndn.Consumer",LOG_LEVEL_FUNCTION);
	LogComponentEnable("ndn.FileConsumer",LOG_LEVEL_FUNCTION);
	LogComponentEnable("ndn.LivemediaConsumer",LOG_LEVEL_FUNCTION);
	// setting default parameters for PointToPoint links and channels
	//Config::SetDefault("ns3::PointToPointNetDevice::DataRate", StringValue("10Mbps"));
	//Config::SetDefault("ns3::PointToPointChannel::Delay", StringValue("10ms"));

	CommandLine cmd;
	cmd.Parse(argc, argv);

	AnnotatedTopologyReader topologyReader("", 25);
	topologyReader.SetFileName("src/ndnSIM/examples/topologies/topo-mesh.txt");
	topologyReader.Read();

	//Install NDN stack on all nodes
	ndn::StackHelper ndnHelper;
	ndnHelper.SetDefaultRoutes(true);
	ndnHelper.setCsSize(0);
	//ndnHelper.SetOldContentStore("ns3::ndn::cs::Lru", "MaxSize", "100");
	ndnHelper.InstallAll();

	//choosing forwarding strategy
	ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/best-route");

	// Getting containers for the consumer/producer
	Ptr<Node> producer = Names::Find<Node>("Node9");
	NodeContainer consumerNodes;
	consumerNodes.Add(Names::Find<Node>("Node0"));

	//Consumer responsible for request the live file
	ns3::ndn::AppHelper consumerHelper("ns3::ndn::FileConsumerCbr::LivemediaConsumer");
	consumerHelper.SetAttribute("MpdFileToRequest", StringValue(std::string("/myprefix/test.mpd" )));
	consumerHelper.SetAttribute("tempDir", StringValue(std::string("/home/tlx/tmp/")));
	consumerHelper.Install(consumerNodes);

	//Producer responsible for hosting the live file
	ndn::AppHelper mpdProducerHelper("ns3::ndn::FileServer");
	mpdProducerHelper.SetPrefix("/myprefix");
	mpdProducerHelper.SetAttribute("ContentDirectory", StringValue("/home/tlx/rtmp/dash"));
	mpdProducerHelper.Install(producer);

	ndn::GlobalRoutingHelper ndnGlobalRoutingHelper;
	ndnGlobalRoutingHelper.InstallAll();

	ndnGlobalRoutingHelper.AddOrigins("/myprefix", producer);
	ndn::GlobalRoutingHelper::CalculateRoutes();

	Simulator::Stop(Seconds(1000.0));

	ndn::L3RateTracer::InstallAll("rate-trace.txt", Seconds(0.5));
	ndn::AppDelayTracer::InstallAll("app-delays-trace.txt");
	//L2RateTracer::InstallAll("drop-trace.txt", Seconds(0.5));
	Simulator::Run();
	Simulator::Destroy();

	NS_LOG_UNCOND("Simulation Finished.");

	return 0;
}
}

int main(int argc, char *argv[])
{
	return ns3::main(argc, argv);
}



