#pragma once
#include "Driving.h"

//generic state in which the car is in
class Driving;

class DrivingState {
public:
	virtual void enter(Driving* light) = 0;
	virtual void toggle(Driving* light) = 0;
	virtual void exit(Driving* light) = 0;
	virtual ~DrivingState() {}
};
