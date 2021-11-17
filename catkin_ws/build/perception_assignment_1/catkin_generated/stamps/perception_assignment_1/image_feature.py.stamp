#!/usr/bin/env python3
"""OpenCV feature detectors with ros CompressedImage Topics in python.

This example subscribes to a ros topic containing sensor_msgs 
CompressedImage. It converts the CompressedImage into a numpy.ndarray, 
then detects and marks features in that image. It finally displays 
and publishes the new image - again as CompressedImage topic.
"""
__author__ =  'Simon Haller <simon.haller at uibk.ac.at>'
__version__=  '0.1'
__license__ = 'BSD'
import sys, time
from scipy.ndimage import filters
from torchvision.models import detection
from imutils.video import VideoStream
from imutils.video import FPS
from std_msgs.msg import String
import numpy as np
import argparse
import imutils
import pickle
import torch
import time
import cv2
import roslib
import rospy

# Ros Messages
from sensor_msgs.msg import CompressedImage
# We do not use cv_bridge it does not support CompressedImage in python
# from cv_bridge import CvBridge, CvBridgeError

VERBOSE=False
frame_id = 0
unique_id = 0
allObjects = []

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")

#adding the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-m", "--model", type=str, default="frcnn-resnet",
	choices=["frcnn-resnet", "frcnn-mobilenet", "retinanet"],
	help="name of the object detection model")
ap.add_argument("-c", "--confidence", type=float, default=0.5,
	help="minimum probability to filter weak detections")
args = vars(ap.parse_args())

CLASSES = [
    '__background__', 'person', 'bicycle', 'car', 'motorcycle', 'airplane', 'bus',
    'train', 'truck', 'boat', 'traffic light', 'fire hydrant', 'N/A', 'stop sign',
    'parking meter', 'bench', 'bird', 'cat', 'dog', 'horse', 'sheep', 'cow',
    'elephant', 'bear', 'zebra', 'giraffe', 'N/A', 'backpack', 'umbrella', 'N/A', 'N/A',
    'handbag', 'tie', 'suitcase', 'frisbee', 'skis', 'snowboard', 'sports ball',
    'kite', 'baseball bat', 'baseball glove', 'skateboard', 'surfboard', 'tennis racket',
    'bottle', 'N/A', 'wine glass', 'cup', 'fork', 'knife', 'spoon', 'bowl',
    'banana', 'apple', 'sandwich', 'orange', 'broccoli', 'carrot', 'hot dog', 'pizza',
    'donut', 'cake', 'chair', 'couch', 'potted plant', 'bed', 'N/A', 'dining table',
    'N/A', 'N/A', 'toilet', 'N/A', 'tv', 'laptop', 'mouse', 'remote', 'keyboard', 'cell phone',
    'microwave', 'oven', 'toaster', 'sink', 'refrigerator', 'N/A', 'book',
    'clock', 'vase', 'scissors', 'teddy bear', 'hair drier', 'toothbrush'
]
COLORS = np.random.uniform(0, 255, size=(len(CLASSES), 3))
MODELS = {
	"frcnn-resnet": detection.fasterrcnn_resnet50_fpn,
	"frcnn-mobilenet": detection.fasterrcnn_mobilenet_v3_large_320_fpn,
	"retinanet": detection.retinanet_resnet50_fpn
}

class obj:

    def __init__(self, setID, setType, setCenterX, setCenterY):
        self.id = setID
        self.type = setClass
        self.centerX = setCenterX
        self.centerY = setCenterY

class image_feature:
  
    def __init__(self):
        '''Initialize ros publisher, ros subscriber'''
        # topic where we publish
        self.image_pub = rospy.Publisher("/output/image_raw/compressed",
            String, queue_size = 1)
        # self.bridge = CvBridge()

        # subscribed Topic
        self.subscriber = rospy.Subscriber("/camera/image_raw/compressed",
            CompressedImage, self.callback,  queue_size = 1)
        if VERBOSE :
            print("subscribed to /camera/image/compressed")


    def callback(self, ros_data):
        global frame_id
        global allObjects_class
        global unique_id
        ###object_detection
        # load the model and set it to evaluation mode
        model = MODELS[args["model"]](pretrained=True, progress=True,
	num_classes=len(CLASSES), pretrained_backbone=True).to(DEVICE)
        model.eval()

        '''Callback function of subscribed topic. 
        Here images get converted and features detected'''
        if VERBOSE :
            print('received image of type: "%s"' % ros_data.format)

        #### direct conversion to CV2 ####
        np_arr = np.fromstring(ros_data.data, np.uint8)
        #image_np = cv2.imdecode(np_arr, cv2.CV_LOAD_IMAGE_COLOR)
        image_np = cv2.imdecode(np_arr, cv2.IMREAD_COLOR) # OpenCV >= 3.0:		
        image_np = imutils.resize(image_np, width=400)
        orig = image_np.copy()
        image_np = cv2.cvtColor(image_np, cv2.COLOR_BGR2RGB)
        image_np = image_np.transpose((2, 0, 1))

        image_np = np.expand_dims(image_np, axis=0)
        image_np = image_np / 255.0
        image_np = torch.FloatTensor(image_np)
	# send the input to the device and pass the it through the
	# network to get the detections and predictions
        image_np = image_np.to(DEVICE)
        detections = model(image_np)[0]
        time1 = time.time()

        frame_id += 1

	# loop over the detections
        objectsInScene = []
        for i in range(0, len(detections["boxes"])):
		# extract the confidence (i.e., probability) associated with
		# the prediction
                confidence = detections["scores"][i]
		# filter out weak detections by ensuring the confidence is
		# greater than the minimum confidence
                if confidence > args["confidence"]:
			# extract the index of the class label from the
			# detections, then compute the (x, y)-coordinates of
			# the bounding box for the object
                        idx = int(detections["labels"][i])
                        box = detections["boxes"][i].detach().cpu().numpy()

                        (startX, startY, endX, endY) = box.astype("int")
                        centerX = (endX + startX)/2
                        centerY = (endY + startY)/2
                        cv2.circle(orig,(int(centerX),int(centerY)), 3, (0,0,255), -1)

			# draw the bounding box and label on the frame
                        label = "{}, {}, {}, {}".format(frame_id, CLASSES[idx], centerX, centerY)

                        object_arr = [unique_id, CLASSES[idx], centerX, centerY]


                        objectsInScene.append(object_arr)
                        #coding the Object Categorizer
                       
                        cv2.rectangle(orig, (startX, startY), (endX, endY),
				COLORS[idx], 2)




                        y = startY - 15 if startY - 15 > 15 else startY + 15
                        cv2.putText(orig, label, (startX, y),
				cv2.FONT_HERSHEY_SIMPLEX, 0.5, COLORS[idx], 2)
                        unique_id += 1
                cv2.imshow('cv_img', orig)
                cv2.waitKey(2)	
                

        if frame_id == 1:
            allObjects.append(objectsInScene)
        else:
            self.process_objects(objectsInScene, frame_id)
        #### Create CompressedImage ####
                                                                                                         
        # Publish new image
        self.image_pub.publish(str(allObjects[0]))
        
        
        #if frame_id > 5:
            #self.process()
    
    def process_objects(self, frame_next, frame_id):
        for statInd in range(0, len(allObjects[0]) - 1):
            for dynInd in range(0, len(frame_next) - 1):
                if statInd == dynInd:
                    continue
                else:
                    if self.isclose(allObjects[0][statInd][2], frame_next[dynInd][2]) and self.isclose(allObjects[0][statInd][3], frame_next[dynInd][3]):
                        frame_next.remove(frame_next[dynInd])
        
        for i in range(0, len(frame_next)):
            allObjects[0].append(frame_next[i])


    def isclose(self, a, b, rel_tol=1e-09, abs_tol=0.0):
        return abs(a-b) <= max(rel_tol * max(abs(a), abs(b)), abs_tol)
    
def main(args):

    ic = image_feature()

    rospy.init_node('image_feature', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down ROS Image feature detector module")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
