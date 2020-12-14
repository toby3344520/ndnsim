/*
 * ndn-mesh-file-simple.cc
 *
 *  Created on: Sep 6, 2020
 *      Author: tlx
 */

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ndnSIM-module.h"
#include "ns3/ndnSIM/apps/ndn-app.hpp"
#include "ns3/ndnSIM/utils/tracers/ndn-fileconsumer-tracer.hpp"
#include "ns3/ptr.h"

namespace ns3{

int main(int argc, char *argv[]){
	LogComponentEnable("ndn.Consumer",LOG_LEVEL_FUNCTION);
	LogComponentEnable("ndn.FileConsumer",LOG_LEVEL_FUNCTION);

	unsigned int interestRate = 1000;

	CommandLine cmd;
	cmd.AddValue ("interestRate", "interest send rate", interestRate);

	cmd.Parse(argc, argv);

	AnnotatedTopologyReader topologyReader("", 25);
	topologyReader.SetFileName("src/ndnSIM/examples/topologies/topo-mesh.txt");
	topologyReader.Read();
	topologyReader.SaveTopology("scratch/topo-mesh.txt");

	// Install NDN stack on all nodes
	ndn::StackHelper ndnHelper;
	ndnHelper.SetDefaultRoutes(true);
	ndnHelper.InstallAll();

	// Set BestRoute strategy
	ndn::StrategyChoiceHelper::InstallAll("/myprefix", "/localhost/nfd/strategy/best-route");


	// Getting containers for the consumer/producer
	Ptr<Node> producer = Names::Find<Node>("Node9");
	NodeContainer consumerNodes;
	consumerNodes.Add(Names::Find<Node>("Node0"));

	// Install NDN applications
	std::string prefix = "/myprefix";

	// Consumer
	ndn::AppHelper consumerHelper("ns3::ndn::FileConsumerCbr");
	consumerHelper.SetAttribute("FileToRequest", StringValue("/myprefix/ns-3-tutorial.pdf"));
	consumerHelper.SetAttribute("InterestSendRate", UintegerValue(interestRate));
	//consumerHelper.SetAttribute("WriteOutfile",StringValue("/home/tlx/tmp/test.mp4"));
	consumerHelper.Install(consumerNodes); // install to some node from nodelist

	// Producer
	ndn::AppHelper producerHelper("ns3::ndn::FileServer");

	// Producer will reply to all requests starting with /prefix
	producerHelper.SetPrefix(prefix);
	producerHelper.SetAttribute("ContentDirectory", StringValue("/home/tlx/somedata"));
	producerHelper.Install(producer); // install to some node from nodelist

	// Installing global routing interface on all nodes
	ndn::GlobalRoutingHelper ndnGlobalRoutingHelper;
	ndnGlobalRoutingHelper.InstallAll();

	// Add /prefix origins to ndn::GlobalRouter
	ndnGlobalRoutingHelper.AddOrigins(prefix, producer);

	// Calculate and install FIBs
	ndn::GlobalRoutingHelper::CalculateRoutes();

	Simulator::Stop(Seconds(600.0));

	//ndn::L3RateTracer::InstallAll("rate-trace.txt", Seconds(0.5));
	//L2RateTracer::InstallAll("drop-trace.txt", Seconds(0.5));
	ndn::AppDelayTracer::InstallAll("app-delays-trace.txt");
//	std::stringstream ss_tmp;
//	ss_tmp << "/home/tlx/simulation/mesh_file/file-tracer-" << interestRate << ".txt";
//	ndn::FileConsumerLogTracer::Install(consumerNodes, ss_tmp.str());
	//ndn::FileConsumerTracer::Install(consumerNodes, "consumer-tracer.txt");
	Simulator::Run();
	Simulator::Destroy();

	return 0;
}
}

int
main(int argc, char* argv[])
{
  return ns3::main(argc, argv);
}



