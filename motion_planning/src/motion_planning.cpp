//First objective of this code is to create all the decision nodes. Already have the decsion tree. After completion of the decision nodes implementation, I will move on to completing the decision making node.
#pragma once
#include <ros/ros.h>
#include "std_msgs/String.h"
#include "motion_planning/AV.h"
#include "motion_planning/Cars.h"

#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <motion_planning/AV.h>
#include <motion_planning/Cars_vector.h>
#include <motion_planning/Cars.h>
#include <typeinfo>
#include <map>

//void callback(const motion_planning::AV::ConstPtr& image, const motion_planning::Cars_vector::ConstPtr& cam_info)	{
//  std::cout << image;
//}

using namespace std;
using namespace message_filters;


//class member
class MotionPlanning {
	private:
		string current_state;
		ros::Subscriber sub1;
		ros::Subscriber sub2;
		motion_planning::AV av;
		motion_planning::Cars_vector others;
		bool car_ahead;
		bool car_left;
		bool car_right;
		bool follow_leader;
		bool change_left;
		bool change_right;
		bool emergency_stop;



	public:
				

		//ctor
		MotionPlanning(ros::NodeHandle &nh) {
			sub1 = nh.subscribe("self_tel", 1000, &MotionPlanning::self_tel_callback, this);
			sub2 = nh.subscribe("others_tel", 1000, &MotionPlanning::others_tel_callback, this);
			ROS_INFO("MotionPlanning ctor ran");
			car_ahead = false;
			car_left = false;
			car_right = false;
		}

		//callbacks
		void self_tel_callback(const motion_planning::AV::ConstPtr& msg) {
			av = *msg;
		}

		void others_tel_callback(const motion_planning::Cars_vector::ConstPtr& msg)	{
			others = *msg;

			setLane();
			setProxState();
			policy();

		}

		/**finite state machine:
		 *4 states: KEEP_LANE, PREP_CHANGE_LANE, STOP, FOLLOW_LEADER, CHANGE_LEFT, CHANGE_RIGHT
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * **/

		void setLane() {
			//adding lane ID to the motion_planning::Cars msg

			for (int i = 0; i < others.cars.size(); i++) {
				int dy = others.cars[i].dy;
				if (dy > -6 && dy < -2) {
		  			others.cars[i].laneID = 0; 
				} else if (dy > -2 && dy < 2) {
				  	others.cars[i].laneID = 1; 
				} else if (dy > 2 && dy < 6) {
				  	others.cars[i].laneID = 2; 
				} else {
					continue;
				}
			}
			std::cout << others.cars[2] << endl;

		}

		void setProxState() {
			float av_dx = av.longitude - av.longitude;
			float safe_gap = 20;
			for (int i = 0; i < others.cars.size(); i++) {
				motion_planning::Cars other = others.cars[i];
				float other_dx = others.cars[i].dx;
				//same lane
				if (av.laneID == other.laneID) {
				 	// is it within 30m ahead of us?
					//check if ahead of us
				  car_ahead = car_ahead || other_dx > av_dx && other_dx - av_dx < 30; 
				  
				  //additionally, check whether distance to vechicle < safe distance (2-second rule)
				  follow_leader = follow_leader || other_dx - av_dx > 10;

				  //or whether a distance to detected object < V^2/2a
				  emergency_stop = emergency_stop ||  other_dx < (av.speed * av.speed)/ 2 * (av.speed);

				} else if (other.laneID - av.laneID == -1) {
					
					// we know it is to the left of us
					//check if ahead of us
				  	car_left = car_left || av_dx - 30 < other_dx && av_dx + 30 > other_dx;
			    
			    } else if (other.laneID - av.laneID == 1) {
			    	
			    	// we know it is to the right of us
					//check if ahead of us
					car_right = car_right || av_dx - 30 < other_dx && av_dx + 30 > other_dx;
				}
			}
		}

		void policy() {

			//left lane = 0
			//center lane = 1
			//right lane = 2

			if (car_ahead) {
				if (emergency_stop) { 
					std::cout << "emergency stop";
				} else if (follow_leader) {
					std::cout << "follow leader";
		 		} else {
					std::cout << "prep lane change";
					if (!car_left && av.laneID > 0) {
						//no car on the left and it is on middle or right lane
						std::cout << "change Left";
					 	av.laneID--;
					}
					else if (!car_right && av.laneID != 2) {
						//no car on the right and it is not on left lane
						std::cout << "change right";
					 	av.laneID++; 
					} else {
						//add criteria for emergency stop (slow down)? 
						std::cout << "emergency stop";
					}
				}
			} else {
				if (av.laneID != 1) {
					//if car is not in center lane
				  if ((av.laneID == 0 && !car_right) || (av.laneID == 2 && !car_left)) {
				  	//move back to center lane
				    av.laneID = 1; 
				  }
				}
				//if (ref_vel < max_vel) {
				  //speed_diff += max_acl;
				//}
			}
		}

};


int main(int argc, char **argv) {
	ROS_INFO("main method ran");


	ros::init(argc, argv, "motion_planning");
	ros::NodeHandle nh;
	MotionPlanning MotionPlanning(nh);

	ros::spin();

	return 0;
}