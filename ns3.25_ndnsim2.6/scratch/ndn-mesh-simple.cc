/*
 * ndn-mesh-simple.cc
 *
 *  Created on: Sep 3, 2020
 *      Author: tlx
 */


#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ndnSIM-module.h"

namespace ns3{

int main(int argc, char *argv[]){
	CommandLine cmd;
	cmd.Parse(argc, argv);

	AnnotatedTopologyReader topologyReader("", 25);
	topologyReader.SetFileName("src/ndnSIM/examples/topologies/topo-mesh.txt");
	topologyReader.Read();

	// Install NDN stack on all nodes
	ndn::StackHelper ndnHelper;
	ndnHelper.SetDefaultRoutes(true);
	ndnHelper.InstallAll();

	// Set BestRoute strategy
	ndn::StrategyChoiceHelper::InstallAll("/", "/localhost/nfd/strategy/best-route");


	// Getting containers for the consumer/producer
	Ptr<Node> producer = Names::Find<Node>("Node9");
	NodeContainer consumerNodes;
	consumerNodes.Add(Names::Find<Node>("Node0"));

	// Install NDN applications
	std::string prefix = "/prefix";

	ndn::AppHelper consumerHelper("ns3::ndn::ConsumerCbr");
	consumerHelper.SetPrefix(prefix);
	consumerHelper.SetAttribute("Frequency", StringValue("10")); // 10 interests a second
	consumerHelper.Install(consumerNodes);

	ndn::AppHelper producerHelper("ns3::ndn::Producer");
	producerHelper.SetPrefix(prefix);
	producerHelper.SetAttribute("PayloadSize", StringValue("1024"));
	producerHelper.Install(producer);

	// Installing global routing interface on all nodes
	ndn::GlobalRoutingHelper ndnGlobalRoutingHelper;
	ndnGlobalRoutingHelper.InstallAll();

	// Add /prefix origins to ndn::GlobalRouter
	ndnGlobalRoutingHelper.AddOrigins(prefix, producer);

	// Calculate and install FIBs
	ndn::GlobalRoutingHelper::CalculateRoutes();

	Simulator::Stop(Seconds(600.0));

	ndn::L3RateTracer::InstallAll("rate-trace.txt", Seconds(0.5));
	//L2RateTracer::InstallAll("drop-trace.txt", Seconds(0.5));
	ndn::AppDelayTracer::InstallAll("app-delays-trace.txt");
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






