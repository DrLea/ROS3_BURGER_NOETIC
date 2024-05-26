# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_msgs/BatteryServer.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pr2_msgs.msg
import std_msgs.msg

class BatteryServer(genpy.Message):
  _md5sum = "4f6d6e54c9581beb1df7ea408c0727be"
  _type = "pr2_msgs/BatteryServer"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# DEPRECATED. Use pr2_msgs/BatteryServer2 instead.
Header header
uint32 MAX_BAT_COUNT=4
uint32 MAX_BAT_REG=48
int32 id  # unique ID for each battery server
# Battery System Stats
int32 lastTimeSystem #epoch time
uint16 timeLeft      # in minutes
uint16 averageCharge # in percent
string message
# Battery Controller Flags
int32 lastTimeController #epoch time
uint16 present
uint16 charging
uint16 discharging
uint16 reserved
uint16 powerPresent
uint16 powerNG
uint16 inhibited
# for each battery
pr2_msgs/BatteryState[] battery

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
MSG: pr2_msgs/BatteryState
# DEPRECATED.  Use pr2_msgs/BatteryState2 instead.
# Each batteries registers
int32 lastTimeBattery #epoch time
uint16[48] batReg
uint16[48] batRegFlag
int32[48] batRegTime
"""
  # Pseudo-constants
  MAX_BAT_COUNT = 4
  MAX_BAT_REG = 48

  __slots__ = ['header','id','lastTimeSystem','timeLeft','averageCharge','message','lastTimeController','present','charging','discharging','reserved','powerPresent','powerNG','inhibited','battery']
  _slot_types = ['std_msgs/Header','int32','int32','uint16','uint16','string','int32','uint16','uint16','uint16','uint16','uint16','uint16','uint16','pr2_msgs/BatteryState[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,id,lastTimeSystem,timeLeft,averageCharge,message,lastTimeController,present,charging,discharging,reserved,powerPresent,powerNG,inhibited,battery

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BatteryServer, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.id is None:
        self.id = 0
      if self.lastTimeSystem is None:
        self.lastTimeSystem = 0
      if self.timeLeft is None:
        self.timeLeft = 0
      if self.averageCharge is None:
        self.averageCharge = 0
      if self.message is None:
        self.message = ''
      if self.lastTimeController is None:
        self.lastTimeController = 0
      if self.present is None:
        self.present = 0
      if self.charging is None:
        self.charging = 0
      if self.discharging is None:
        self.discharging = 0
      if self.reserved is None:
        self.reserved = 0
      if self.powerPresent is None:
        self.powerPresent = 0
      if self.powerNG is None:
        self.powerNG = 0
      if self.inhibited is None:
        self.inhibited = 0
      if self.battery is None:
        self.battery = []
    else:
      self.header = std_msgs.msg.Header()
      self.id = 0
      self.lastTimeSystem = 0
      self.timeLeft = 0
      self.averageCharge = 0
      self.message = ''
      self.lastTimeController = 0
      self.present = 0
      self.charging = 0
      self.discharging = 0
      self.reserved = 0
      self.powerPresent = 0
      self.powerNG = 0
      self.inhibited = 0
      self.battery = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i2H().pack(_x.id, _x.lastTimeSystem, _x.timeLeft, _x.averageCharge))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i7H().pack(_x.lastTimeController, _x.present, _x.charging, _x.discharging, _x.reserved, _x.powerPresent, _x.powerNG, _x.inhibited))
      length = len(self.battery)
      buff.write(_struct_I.pack(length))
      for val1 in self.battery:
        _x = val1.lastTimeBattery
        buff.write(_get_struct_i().pack(_x))
        buff.write(_get_struct_48H().pack(*val1.batReg))
        buff.write(_get_struct_48H().pack(*val1.batRegFlag))
        buff.write(_get_struct_48i().pack(*val1.batRegTime))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.battery is None:
        self.battery = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.id, _x.lastTimeSystem, _x.timeLeft, _x.averageCharge,) = _get_struct_2i2H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.lastTimeController, _x.present, _x.charging, _x.discharging, _x.reserved, _x.powerPresent, _x.powerNG, _x.inhibited,) = _get_struct_i7H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.battery = []
      for i in range(0, length):
        val1 = pr2_msgs.msg.BatteryState()
        start = end
        end += 4
        (val1.lastTimeBattery,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 96
        val1.batReg = _get_struct_48H().unpack(str[start:end])
        start = end
        end += 96
        val1.batRegFlag = _get_struct_48H().unpack(str[start:end])
        start = end
        end += 192
        val1.batRegTime = _get_struct_48i().unpack(str[start:end])
        self.battery.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i2H().pack(_x.id, _x.lastTimeSystem, _x.timeLeft, _x.averageCharge))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i7H().pack(_x.lastTimeController, _x.present, _x.charging, _x.discharging, _x.reserved, _x.powerPresent, _x.powerNG, _x.inhibited))
      length = len(self.battery)
      buff.write(_struct_I.pack(length))
      for val1 in self.battery:
        _x = val1.lastTimeBattery
        buff.write(_get_struct_i().pack(_x))
        buff.write(val1.batReg.tostring())
        buff.write(val1.batRegFlag.tostring())
        buff.write(val1.batRegTime.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.battery is None:
        self.battery = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.id, _x.lastTimeSystem, _x.timeLeft, _x.averageCharge,) = _get_struct_2i2H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.lastTimeController, _x.present, _x.charging, _x.discharging, _x.reserved, _x.powerPresent, _x.powerNG, _x.inhibited,) = _get_struct_i7H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.battery = []
      for i in range(0, length):
        val1 = pr2_msgs.msg.BatteryState()
        start = end
        end += 4
        (val1.lastTimeBattery,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 96
        val1.batReg = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=48)
        start = end
        end += 96
        val1.batRegFlag = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=48)
        start = end
        end += 192
        val1.batRegTime = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=48)
        self.battery.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i2H = None
def _get_struct_2i2H():
    global _struct_2i2H
    if _struct_2i2H is None:
        _struct_2i2H = struct.Struct("<2i2H")
    return _struct_2i2H
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_48H = None
def _get_struct_48H():
    global _struct_48H
    if _struct_48H is None:
        _struct_48H = struct.Struct("<48H")
    return _struct_48H
_struct_48i = None
def _get_struct_48i():
    global _struct_48i
    if _struct_48i is None:
        _struct_48i = struct.Struct("<48i")
    return _struct_48i
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_i7H = None
def _get_struct_i7H():
    global _struct_i7H
    if _struct_i7H is None:
        _struct_i7H = struct.Struct("<i7H")
    return _struct_i7H
