# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosbag_fancy_msgs/TopicStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TopicStatus(genpy.Message):
  _md5sum = "ab1d1b0e9b845daddfffb9265d5bb87c"
  _type = "rosbag_fancy_msgs/TopicStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
string name

uint32 publishers
uint64 messages
uint64 messages_in_current_bag
float32 rate
uint64 bytes
float32 bandwidth
"""
  __slots__ = ['name','publishers','messages','messages_in_current_bag','rate','bytes','bandwidth']
  _slot_types = ['string','uint32','uint64','uint64','float32','uint64','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,publishers,messages,messages_in_current_bag,rate,bytes,bandwidth

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TopicStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.publishers is None:
        self.publishers = 0
      if self.messages is None:
        self.messages = 0
      if self.messages_in_current_bag is None:
        self.messages_in_current_bag = 0
      if self.rate is None:
        self.rate = 0.
      if self.bytes is None:
        self.bytes = 0
      if self.bandwidth is None:
        self.bandwidth = 0.
    else:
      self.name = ''
      self.publishers = 0
      self.messages = 0
      self.messages_in_current_bag = 0
      self.rate = 0.
      self.bytes = 0
      self.bandwidth = 0.

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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I2QfQf().pack(_x.publishers, _x.messages, _x.messages_in_current_bag, _x.rate, _x.bytes, _x.bandwidth))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.publishers, _x.messages, _x.messages_in_current_bag, _x.rate, _x.bytes, _x.bandwidth,) = _get_struct_I2QfQf().unpack(str[start:end])
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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_I2QfQf().pack(_x.publishers, _x.messages, _x.messages_in_current_bag, _x.rate, _x.bytes, _x.bandwidth))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.publishers, _x.messages, _x.messages_in_current_bag, _x.rate, _x.bytes, _x.bandwidth,) = _get_struct_I2QfQf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I2QfQf = None
def _get_struct_I2QfQf():
    global _struct_I2QfQf
    if _struct_I2QfQf is None:
        _struct_I2QfQf = struct.Struct("<I2QfQf")
    return _struct_I2QfQf
