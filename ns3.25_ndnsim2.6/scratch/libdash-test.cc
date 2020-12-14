/*
 * libdash-text.cc
 *
 *  Created on: Aug 14, 2020
 *      Author: tlx
 */

#include "libdash.h"
#include "multimedia-player.h"
#include <iostream>
#include "apue.h"

void OnMpdFile();
bool DownloadSegment();

int main(int argc, char *argv[])
{
	while(true)
	{
		OnMpdFile();
		sleep(2);
	}
	exit(0);
}

void OnMpdFile()
{
	//dash::player::MultimediaPlayer *mPlayer = new dash::player::MultimediaPlayer("dash::player::AlwaysLowestAdaptationLogic", 30);
	dash::mpd::IMPD *mpd;
	std::cout << "MPD File Parasing test" << std::endl;

	dash::IDASHManager *manager;
	manager = CreateDashManager();
	mpd = manager->Open("/home/tlx/rtmp/dash/test.mpd");

	manager->Delete();
	manager = NULL;

	if (mpd ==NULL)
	{
		std::cout << "Error parasing mpd" << std::endl;
		return;
	}

	//assuming there is only 1 period, get the first one
	IPeriod *currentPeriod = mpd->GetPeriods().at(0);

	//Get the adaptation sets
	std::vector<IAdaptationSet *> allAdaptationSets = currentPeriod->GetAdaptationSets();
	if (allAdaptationSets.size() == 0)
	{
		std::cout << "No adaptation sets found in MPD file" << std::endl;
		return;
	}

	IAdaptationSet *adaptationSetVedio = allAdaptationSets.at(0);

	std::vector<IRepresentation *> reps = adaptationSetVedio->GetRepresentation();

	//mPlayer->SetAvailableRepresentations(reps.at(0));
	ISegmentTemplate *segmentTemplate = reps.at(0)->GetSegmentTemplate();

	const ISegmentTimeline *segmentTimeline = segmentTemplate->GetSegmentTimeline();
	std::vector<ITimeline *> timeLine = segmentTimeline->GetTimelines();
	for (int i = 0; i < timeLine.size(); i++)
	{
		std::cout << "Timeline start: " << timeLine.at(i)->GetStartTime() << " next start: "
				<< (long int)timeLine.at(i)->GetStartTime() + (long int)timeLine.at(i)->GetDuration()
				<< std::endl;
	}
}

























