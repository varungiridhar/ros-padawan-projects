#include "ConcreteDrivingStates.h"

void KEEP_LANE::toggle(Driving* light)
{
	// KEEP_LANE -> PREP_LANE_CHANGE
	light->setState(PREP_LANE_CHANGE::getInstance());
}

DrivingState& KEEP_LANE::getInstance()
{
	static KEEP_LANE singleton;
	return singleton;
}

void PREP_LANE_CHANGE::toggle(Driving* light)
{
	// PREP_LANE_CHANGE -> CHANGE_LEFT
	light->setState(CHANGE_LEFT::getInstance());
}

DrivingState& PREP_LANE_CHANGE::getInstance()
{
	static LowIntensity singleton;
	return singleton;
}

void MediumIntensity::toggle(Driving* light)
{
	// Medium -> High
	light->setState(HighIntensity::getInstance());
}

DrivingState& MediumIntensity::getInstance()
{
	static MediumIntensity singleton;
	return singleton;
}

void HighIntensity::toggle(Driving* light)
{
	// High -> Low
	light->setState(LightOff::getInstance());
}

DrivingState& HighIntensity::getInstance()
{
	static HighIntensity singleton;
	return singleton;
}
