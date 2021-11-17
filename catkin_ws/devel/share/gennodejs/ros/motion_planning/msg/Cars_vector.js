// Auto-generated. Do not edit!

// (in-package motion_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cars = require('./Cars.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cars_vector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cars = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cars')) {
        this.cars = initObj.cars
      }
      else {
        this.cars = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cars_vector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cars]
    // Serialize the length for message field [cars]
    bufferOffset = _serializer.uint32(obj.cars.length, buffer, bufferOffset);
    obj.cars.forEach((val) => {
      bufferOffset = Cars.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cars_vector
    let len;
    let data = new Cars_vector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cars]
    // Deserialize array length for message field [cars]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cars = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cars[i] = Cars.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cars.forEach((val) => {
      length += Cars.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_planning/Cars_vector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1f8459a9d28dbba0869e7fd9fb500bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Cars[] cars
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: motion_planning/Cars
    Header header
    int8 objectID 
    int8 laneID
    string objectType
    float32 dx
    float32 dy
    float32 speed
    float32 acc
    float32 distanceFromAV
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cars_vector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cars !== undefined) {
      resolved.cars = new Array(msg.cars.length);
      for (let i = 0; i < resolved.cars.length; ++i) {
        resolved.cars[i] = Cars.Resolve(msg.cars[i]);
      }
    }
    else {
      resolved.cars = []
    }

    return resolved;
    }
};

module.exports = Cars_vector;
