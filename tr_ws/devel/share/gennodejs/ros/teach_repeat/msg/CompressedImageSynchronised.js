// Auto-generated. Do not edit!

// (in-package teach_repeat.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class CompressedImageSynchronised {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new sensor_msgs.msg.CompressedImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompressedImageSynchronised
    // Serialize message field [left]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompressedImageSynchronised
    let len;
    let data = new CompressedImageSynchronised(null);
    // Deserialize message field [left]
    data.left = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.left);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.right);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teach_repeat/CompressedImageSynchronised';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6e5e9dab29899863c78cfe4653e4f3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/CompressedImage left
    sensor_msgs/CompressedImage right
    ================================================================================
    MSG: sensor_msgs/CompressedImage
    # This message contains a compressed image
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
    
    string format        # Specifies the format of the data
                         #   Acceptable values:
                         #     jpeg, png
    uint8[] data         # Compressed image buffer
    
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
    const resolved = new CompressedImageSynchronised(null);
    if (msg.left !== undefined) {
      resolved.left = sensor_msgs.msg.CompressedImage.Resolve(msg.left)
    }
    else {
      resolved.left = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.right !== undefined) {
      resolved.right = sensor_msgs.msg.CompressedImage.Resolve(msg.right)
    }
    else {
      resolved.right = new sensor_msgs.msg.CompressedImage()
    }

    return resolved;
    }
};

module.exports = CompressedImageSynchronised;
