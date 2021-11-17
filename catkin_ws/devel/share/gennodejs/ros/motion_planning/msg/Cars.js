// Auto-generated. Do not edit!

// (in-package motion_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cars {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objectID = null;
      this.laneID = null;
      this.objectType = null;
      this.dx = null;
      this.dy = null;
      this.speed = null;
      this.acc = null;
      this.distanceFromAV = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objectID')) {
        this.objectID = initObj.objectID
      }
      else {
        this.objectID = 0;
      }
      if (initObj.hasOwnProperty('laneID')) {
        this.laneID = initObj.laneID
      }
      else {
        this.laneID = 0;
      }
      if (initObj.hasOwnProperty('objectType')) {
        this.objectType = initObj.objectType
      }
      else {
        this.objectType = '';
      }
      if (initObj.hasOwnProperty('dx')) {
        this.dx = initObj.dx
      }
      else {
        this.dx = 0.0;
      }
      if (initObj.hasOwnProperty('dy')) {
        this.dy = initObj.dy
      }
      else {
        this.dy = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('distanceFromAV')) {
        this.distanceFromAV = initObj.distanceFromAV
      }
      else {
        this.distanceFromAV = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cars
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objectID]
    bufferOffset = _serializer.int8(obj.objectID, buffer, bufferOffset);
    // Serialize message field [laneID]
    bufferOffset = _serializer.int8(obj.laneID, buffer, bufferOffset);
    // Serialize message field [objectType]
    bufferOffset = _serializer.string(obj.objectType, buffer, bufferOffset);
    // Serialize message field [dx]
    bufferOffset = _serializer.float32(obj.dx, buffer, bufferOffset);
    // Serialize message field [dy]
    bufferOffset = _serializer.float32(obj.dy, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    // Serialize message field [distanceFromAV]
    bufferOffset = _serializer.float32(obj.distanceFromAV, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cars
    let len;
    let data = new Cars(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objectID]
    data.objectID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [laneID]
    data.laneID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [objectType]
    data.objectType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dx]
    data.dx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dy]
    data.dy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceFromAV]
    data.distanceFromAV = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.objectType.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_planning/Cars';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4141725f390ac8dd13a07016926593a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 objectID 
    int8 laneID
    string objectType
    float32 dx
    float32 dy
    float32 speed
    float32 acc
    float32 distanceFromAV
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cars(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objectID !== undefined) {
      resolved.objectID = msg.objectID;
    }
    else {
      resolved.objectID = 0
    }

    if (msg.laneID !== undefined) {
      resolved.laneID = msg.laneID;
    }
    else {
      resolved.laneID = 0
    }

    if (msg.objectType !== undefined) {
      resolved.objectType = msg.objectType;
    }
    else {
      resolved.objectType = ''
    }

    if (msg.dx !== undefined) {
      resolved.dx = msg.dx;
    }
    else {
      resolved.dx = 0.0
    }

    if (msg.dy !== undefined) {
      resolved.dy = msg.dy;
    }
    else {
      resolved.dy = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.distanceFromAV !== undefined) {
      resolved.distanceFromAV = msg.distanceFromAV;
    }
    else {
      resolved.distanceFromAV = 0.0
    }

    return resolved;
    }
};

module.exports = Cars;
