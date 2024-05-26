// Auto-generated. Do not edit!

// (in-package hri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FacialActionUnits {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.intensity = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('intensity')) {
        this.intensity = initObj.intensity
      }
      else {
        this.intensity = [];
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FacialActionUnits
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [intensity]
    bufferOffset = _arraySerializer.float32(obj.intensity, buffer, bufferOffset, null);
    // Serialize message field [confidence]
    bufferOffset = _arraySerializer.float32(obj.confidence, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FacialActionUnits
    let len;
    let data = new FacialActionUnits(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [intensity]
    data.intensity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [confidence]
    data.confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.intensity.length;
    length += 4 * object.confidence.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/FacialActionUnits';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51deeb0e003e99c3f3ea2a5073d9d710';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message the intensity of each actions unit (AU), with their confidence, for a specific face.
    #
    # It follows the naming convention of the  Facial Action Coding System (FACS) developed by Ekman.
    
    Header header
    
    # AU codes
    # List taken from https://en.wikipedia.org/wiki/Facial_Action_Coding_System
    
    # Main codes
    uint8 NEUTRAL_FACE=0  # Neutral face 
    uint8 INNER_BROW_RAISER=1  # Inner brow raiser 
    uint8 OUTER_BROW_RAISER=2  # Outer brow raiser 
    uint8 BROW_LOWERER=4  # Brow lowerer 
    uint8 UPPER_LID_RAISER=5  # Upper lid raiser 
    uint8 CHEEK_RAISER=6  # Cheek raiser 
    uint8 LID_TIGHTENER=7  # Lid tightener 
    uint8 LIPS_TOWARD_EACH_OTHER=8  # Lips toward each other 
    uint8 NOSE_WRINKLER=9  # Nose wrinkler 
    uint8 UPPER_LIP_RAISER=10  # Upper lip raiser 
    uint8 NASOLABIAL_DEEPENER=11  # Nasolabial deepener 
    uint8 LIP_CORNER_PULLER=12  # Lip corner puller 
    uint8 SHARP_LIP_PULLER=13  # Sharp lip puller 
    uint8 DIMPLER=14  # Dimpler 
    uint8 LIP_CORNER_DEPRESSOR=15  # Lip corner depressor 
    uint8 LOWER_LIP_DEPRESSOR=16  # Lower lip depressor 
    uint8 CHIN_RAISER=17  # Chin raiser 
    uint8 LIP_PUCKER=18  # Lip pucker 
    uint8 TONGUE_SHOW=19  # Tongue show 
    uint8 LIP_STRETCHER=20  # Lip stretcher 
    uint8 NECK_TIGHTENER=21  # Neck tightener 
    uint8 LIP_FUNNELER=22  # Lip funneler 
    uint8 LIP_TIGHTENER=23  # Lip tightener 
    uint8 LIP_PRESSOR=24  # Lip pressor 
    uint8 LIPS_PART=25  # Lips part 
    uint8 JAW_DROP=26  # Jaw drop 
    uint8 MOUTH_STRETCH=27  # Mouth stretch 
    uint8 LIP_SUCK=28  # Lip suck 
    
    # Head movement codes
    uint8 HEAD_TURN_LEFT=51  # Head turn left
    uint8 HEAD_TURN_RIGHT=52  # Head turn right
    uint8 HEAD_UP=53  # Head up
    uint8 HEAD_DOWN=54  # Head down
    uint8 HEAD_TILT_LEFT=55  # Head tilt left
    uint8 HEAD_TILT_RIGHT=56  # Head tilt right
    uint8 HEAD_FORWARD=57  # Head forward
    uint8 HEAD_BACK=58  # Head back
    
    # Eye movement codes
    uint8 EYES_TURN_LEFT=61  # Eyes turn left
    uint8 EYES_TURN_RIGHT=62  # Eyes turn right
    uint8 EYES_UP=63  # Eyes up
    uint8 EYES_DOWN=64  # Eyes down
    uint8 WALLEYE=65  # Walleye
    uint8 CROSS_EYE=66  # Cross-eye
    uint8 EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON=69  # Eyes positioned to look at other person : The 4, 5, or 7, alone or in combination, occurs while the eye position is fixed on the other person in the conversation.
    
    # Visibility codes
    uint8 BROWS_AND_FOREHEAD_NOT_VISIBLE=70  # Brows and forehead not visible
    uint8 EYES_NOT_VISIBLE=71  # Eyes not visible
    uint8 LOWER_FACE_NOT_VISIBLE=72  # Lower face not visible
    uint8 ENTIRE_FACE_NOT_VISIBLE=73  # Entire face not visible
    uint8 UNSOCIABLE=74  # Unsociable
    
    # Gross behavior codes
    uint8 JAW_THRUST=29  # Jaw thrust
    uint8 JAW_SIDEWAYS=30  # Jaw sideways
    uint8 JAW_CLENCHER=31  # Jaw clencher : masseter
    uint8 LIP_BITE=32  # [Lip] bite
    uint8 CHEEK_BLOW=33  # [Cheek] blow
    uint8 CHEEK_PUFF=34  # [Cheek] puff
    uint8 CHEEK_SUCK=35  # [Cheek] suck
    uint8 TONGUE_BULGE=36  # [Tongue] bulge
    uint8 LIP_WIPE=37  # Lip wipe
    uint8 NOSTRIL_DILATOR=38  # Nostril dilator : nasalis (pars alaris)
    uint8 NOSTRIL_COMPRESSOR=39  # Nostril compressor : nasalis (pars transversa) and depressor septi nasi
    uint8 SNIFF=40  # Sniff
    uint8 LID_DROOP=41  # Lid droop : Levator palpebrae superioris (relaxation)
    uint8 SLIT=42  # Slit : Orbicularis oculi muscle
    uint8 EYES_CLOSED=43  # Eyes closed : Relaxation of Levator palpebrae superioris
    uint8 SQUINT=44  # Squint : Corrugator supercilii and orbicularis oculi muscle
    uint8 BLINK=45  # Blink : Relaxation of Levator palpebrae superioris; contraction of orbicularis oculi (pars palpebralis)
    uint8 WINK=46  # Wink : orbicularis oculi
    uint8 SPEECH=50  # Speech
    uint8 SWALLOW=80  # Swallow
    uint8 CHEWING=81  # Chewing
    uint8 SHOULDER_SHRUG=82  # Shoulder shrug
    uint8 HEAD_SHAKE_BACK_AND_FORTH=84  # Head shake back and forth
    uint8 HEAD_NOD_UP_AND_DOWN=85  # Head nod up and down
    uint8 FLASH=91  # Flash
    uint8 PARTIAL_FLASH=92  # Partial flash
    uint8 SHIVER_TREMBLE=97  # Shiver/tremble
    uint8 FAST_UP_DOWN_LOOK=98  # Fast up-down look
    
    
    float32[] intensity # array of 99 AUs intensities, one per AU, ordered per AU codes
    float32[] confidence # array of 99 AUs intensity confidences, one per AU, ordered per AU codes
    
    
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
    const resolved = new FacialActionUnits(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.intensity !== undefined) {
      resolved.intensity = msg.intensity;
    }
    else {
      resolved.intensity = []
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = []
    }

    return resolved;
    }
};

// Constants for message
FacialActionUnits.Constants = {
  NEUTRAL_FACE: 0,
  INNER_BROW_RAISER: 1,
  OUTER_BROW_RAISER: 2,
  BROW_LOWERER: 4,
  UPPER_LID_RAISER: 5,
  CHEEK_RAISER: 6,
  LID_TIGHTENER: 7,
  LIPS_TOWARD_EACH_OTHER: 8,
  NOSE_WRINKLER: 9,
  UPPER_LIP_RAISER: 10,
  NASOLABIAL_DEEPENER: 11,
  LIP_CORNER_PULLER: 12,
  SHARP_LIP_PULLER: 13,
  DIMPLER: 14,
  LIP_CORNER_DEPRESSOR: 15,
  LOWER_LIP_DEPRESSOR: 16,
  CHIN_RAISER: 17,
  LIP_PUCKER: 18,
  TONGUE_SHOW: 19,
  LIP_STRETCHER: 20,
  NECK_TIGHTENER: 21,
  LIP_FUNNELER: 22,
  LIP_TIGHTENER: 23,
  LIP_PRESSOR: 24,
  LIPS_PART: 25,
  JAW_DROP: 26,
  MOUTH_STRETCH: 27,
  LIP_SUCK: 28,
  HEAD_TURN_LEFT: 51,
  HEAD_TURN_RIGHT: 52,
  HEAD_UP: 53,
  HEAD_DOWN: 54,
  HEAD_TILT_LEFT: 55,
  HEAD_TILT_RIGHT: 56,
  HEAD_FORWARD: 57,
  HEAD_BACK: 58,
  EYES_TURN_LEFT: 61,
  EYES_TURN_RIGHT: 62,
  EYES_UP: 63,
  EYES_DOWN: 64,
  WALLEYE: 65,
  CROSS_EYE: 66,
  EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON: 69,
  BROWS_AND_FOREHEAD_NOT_VISIBLE: 70,
  EYES_NOT_VISIBLE: 71,
  LOWER_FACE_NOT_VISIBLE: 72,
  ENTIRE_FACE_NOT_VISIBLE: 73,
  UNSOCIABLE: 74,
  JAW_THRUST: 29,
  JAW_SIDEWAYS: 30,
  JAW_CLENCHER: 31,
  LIP_BITE: 32,
  CHEEK_BLOW: 33,
  CHEEK_PUFF: 34,
  CHEEK_SUCK: 35,
  TONGUE_BULGE: 36,
  LIP_WIPE: 37,
  NOSTRIL_DILATOR: 38,
  NOSTRIL_COMPRESSOR: 39,
  SNIFF: 40,
  LID_DROOP: 41,
  SLIT: 42,
  EYES_CLOSED: 43,
  SQUINT: 44,
  BLINK: 45,
  WINK: 46,
  SPEECH: 50,
  SWALLOW: 80,
  CHEWING: 81,
  SHOULDER_SHRUG: 82,
  HEAD_SHAKE_BACK_AND_FORTH: 84,
  HEAD_NOD_UP_AND_DOWN: 85,
  FLASH: 91,
  PARTIAL_FLASH: 92,
  SHIVER_TREMBLE: 97,
  FAST_UP_DOWN_LOOK: 98,
}

module.exports = FacialActionUnits;
