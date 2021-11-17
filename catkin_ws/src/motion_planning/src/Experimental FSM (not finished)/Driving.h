#pragma once
#include "DrivingState.h"

// Forward declaration to resolve circular dependency/include
class DrivingState;

class Driving;
{
public:
	Driving();
	inline LightState* getCurrentState() const { return currentState; }
	void toggle();
	// This is where the magic happens
	void setState(LightState& newState);

private:
	DrivingState* currentState;
};
