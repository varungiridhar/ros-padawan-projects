#pragma once
#include "DrivingState.h"
#include "Driving.h"

class KEEP_LANE : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	KEEP_LANE() {}
	KEEP_LANE(const KEEP_LANE& other);
	KEEP_LANE& operator=(const KEEP_LANE& other);
};

class PREP_CHANGE_LANE : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	PREP_CHANGE_LANE() {}
	PREP_CHANGE_LANE(const PREP_CHANGE_LANE& other);
	PREP_CHANGE_LANE& operator=(const PREP_CHANGE_LANE& other);
};

class STOP : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	STOP() {}
	STOP(const STOP& other);
	STOP& operator=(const STOP& other);
};

class FOLLOW_LEADER : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	FOLLOW_LEADER() {}
	FOLLOW_LEADER(const FOLLOW_LEADER& other);
	FOLLOW_LEADER& operator=(const FOLLOW_LEADER& other);
};

class CHANGE_LEFT : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	CHANGE_LEFT() {}
	CHANGE_LEFT(const CHANGE_LEFT& other);
	CHANGE_LEFT& operator=(const CHANGE_LEFT& other);
};

class CHANGE_RIGHT : public DrivingState
{
public:
	void enter(Driving* light) {}
	void toggle(Driving* light);
	void exit(Driving* light) {}
	static DrivingState& getInstance();

private:
	CHANGE_RIGHT() {}
	CHANGE_RIGHT(const CHANGE_RIGHT& other);
	CHANGE_RIGHT& operator=(const CHANGE_RIGHT& other);
};






