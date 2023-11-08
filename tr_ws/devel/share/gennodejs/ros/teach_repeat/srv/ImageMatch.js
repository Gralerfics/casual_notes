// Auto-generated. Do not edit!

// (in-package teach_repeat.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ImageMatchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.normalisedImage = null;
      this.imageIndex = null;
      this.searchRange = null;
    }
    else {
      if (initObj.hasOwnProperty('normalisedImage')) {
        this.normalisedImage = initObj.normalisedImage
      }
      else {
        this.normalisedImage = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('imageIndex')) {
        this.imageIndex = initObj.imageIndex
      }
      else {
        this.imageIndex = new std_msgs.msg.UInt32();
      }
      if (initObj.hasOwnProperty('searchRange')) {
        this.searchRange = initObj.searchRange
      }
      else {
        this.searchRange = new std_msgs.msg.UInt32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageMatchRequest
    // Serialize message field [normalisedImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.normalisedImage, buffer, bufferOffset);
    // Serialize message field [imageIndex]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.imageIndex, buffer, bufferOffset);
    // Serialize message field [searchRange]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.searchRange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageMatchRequest
    let len;
    let data = new ImageMatchRequest(null);
    // Deserialize message field [normalisedImage]
    data.normalisedImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [imageIndex]
    data.imageIndex = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [searchRange]
    data.searchRange = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.normalisedImage);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'teach_repeat/ImageMatchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8068ccda2d8b8592777c3770dade93d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image normalisedImage
    std_msgs/UInt32 imageIndex
    std_msgs/UInt32 searchRange # total images searched = 1 + 2*searchRange
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    MSG: std_msgs/UInt32
    uint32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageMatchRequest(null);
    if (msg.normalisedImage !== undefined) {
      resolved.normalisedImage = sensor_msgs.msg.Image.Resolve(msg.normalisedImage)
    }
    else {
      resolved.normalisedImage = new sensor_msgs.msg.Image()
    }

    if (msg.imageIndex !== undefined) {
      resolved.imageIndex = std_msgs.msg.UInt32.Resolve(msg.imageIndex)
    }
    else {
      resolved.imageIndex = new std_msgs.msg.UInt32()
    }

    if (msg.searchRange !== undefined) {
      resolved.searchRange = std_msgs.msg.UInt32.Resolve(msg.searchRange)
    }
    else {
      resolved.searchRange = new std_msgs.msg.UInt32()
    }

    return resolved;
    }
};

class ImageMatchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offsets = null;
      this.correlations = null;
    }
    else {
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = new std_msgs.msg.Int32MultiArray();
      }
      if (initObj.hasOwnProperty('correlations')) {
        this.correlations = initObj.correlations
      }
      else {
        this.correlations = new std_msgs.msg.Float32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageMatchResponse
    // Serialize message field [offsets]
    bufferOffset = std_msgs.msg.Int32MultiArray.serialize(obj.offsets, buffer, bufferOffset);
    // Serialize message field [correlations]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.correlations, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageMatchResponse
    let len;
    let data = new ImageMatchResponse(null);
    // Deserialize message field [offsets]
    data.offsets = std_msgs.msg.Int32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [correlations]
    data.correlations = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int32MultiArray.getMessageSize(object.offsets);
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.correlations);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'teach_repeat/ImageMatchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1edb88eeb88cf8ce0651530e66accc09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32MultiArray offsets
    std_msgs/Float32MultiArray correlations
    
    ================================================================================
    MSG: std_msgs/Int32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int32[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageMatchResponse(null);
    if (msg.offsets !== undefined) {
      resolved.offsets = std_msgs.msg.Int32MultiArray.Resolve(msg.offsets)
    }
    else {
      resolved.offsets = new std_msgs.msg.Int32MultiArray()
    }

    if (msg.correlations !== undefined) {
      resolved.correlations = std_msgs.msg.Float32MultiArray.Resolve(msg.correlations)
    }
    else {
      resolved.correlations = new std_msgs.msg.Float32MultiArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: ImageMatchRequest,
  Response: ImageMatchResponse,
  md5sum() { return 'bf90076cbd0aaa2c3002ff8e25b2d560'; },
  datatype() { return 'teach_repeat/ImageMatch'; }
};
