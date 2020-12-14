/*
 * ndn-livemedia-avc-server.cc
 *
 *  Created on: Aug 31, 2020
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
	Config::SetDefault("ns3::PointToPointNetDevice::DataRate", StringValue("10Mbps"));
	Config::SetDefault("ns3::PointToPointChannel::Delay", StringValue("10ms"));

	CommandLine cmd;
	cmd.Parse(argc, argv);

	//Creating nodes
	NodeContainer nodes;
	nodes.Create(3);

	//Connecting nodes using to links
	PointToPointHelper p2p;
	p2p.Install(nodes.Get(0), nodes.Get(1));
	p2p.Install(nodes.Get(1), nodes.Get(2));

	//Install NDN stack on all nodes
	ndn::StackHelper ndnHelper;
	ndnHelper.SetDefaultRoutes(true);
	ndnHelper.setCsSize(0);
	//ndnHelper.SetOldContentStore("ns3::ndn::cs::Lru", "MaxSize", "100");
	ndnHelper.InstallAll();

	//choosing forwarding strategy
	ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/best-route");

	//Consumer responsible for request the live file
	ns3::ndn::AppHelper consumerHelper("ns3::ndn::FileConsumerCbr::LivemediaConsumer");
	consumerHelper.SetAttribute("MpdFileToRequest", StringValue(std::string("/myprefix/test.mpd" )));
	consumerHelper.SetAttribute("tempDir", StringValue(std::string("/home/tlx/tmp/")));
	consumerHelper.Install(nodes.Get(2));

	//Producer responsible for hosting the live file
	ndn::AppHelper mpdProducerHelper("ns3::ndn::FileServer");
	mpdProducerHelper.SetPrefix("/myprefix");
	mpdProducerHelper.SetAttribute("ContentDirectory", StringValue("/home/tlx/rtmp/dash"));
	mpdProducerHelper.Install(nodes.Get(0));

	ndn::GlobalRoutingHelper ndnGlobalRoutingHelper;
	ndnGlobalRoutingHelper.InstallAll();

	ndnGlobalRoutingHelper.AddOrigins("/myprefix", nodes.Get(0));
	ndn::GlobalRoutingHelper::CalculateRoutes();

	Simulator::Stop(Seconds(1000.0));

	//ndn::DASHPlayerTracer::InstallAll("dash-output.txt");
	//ndn::CsTracer::InstallAll("cs-trace.txt", Seconds(1));
//	L2RateTracer::InstallAll("drop-trace.txt", Seconds(0.5));
//	ndn::AppDelayTracer::Install(nodes.Get(2), "app-delays-trace.txt");
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



