# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from py_trees_msgs/Behaviour.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import uuid_msgs.msg

class Behaviour(genpy.Message):
  _md5sum = "9424ebed2de13e891d81fc5875b727fc"
  _type = "py_trees_msgs/Behaviour"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Possible behaviour states
uint8 INVALID = 1
uint8 RUNNING = 2
uint8 SUCCESS = 3
uint8 FAILURE = 4

# Possible types of behaviour
uint8 UNKNOWN_TYPE = 0
uint8 BEHAVIOUR = 1
uint8 SEQUENCE = 2
uint8 SELECTOR = 3
uint8 PARALLEL = 4
uint8 CHOOSER = 5
uint8 DECORATOR = 6

# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel
uint8 BLACKBOX_LEVEL_DETAIL = 1
uint8 BLACKBOX_LEVEL_COMPONENT = 2
uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3
uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4

# Name given to the behaviour on construction
string name

# Name of the class of this behaviour
string class_name

# The ID of this behaviour
uuid_msgs/UniqueID own_id

# The ID of the parent behaviour (what if it's empty?)
uuid_msgs/UniqueID parent_id

# ID of the tip of this behaviour. If the tip is the behaviour itself or None,
# this is empty
uuid_msgs/UniqueID tip_id

# The IDs of children of this behaviour, if any
uuid_msgs/UniqueID[] child_ids

# A composite, sequence, selector, plain behaviour, etc.
uint8 type

# Blackbox level (for visualisation purposes)
uint8 blackbox_level

# The current state of execution. Can be invalid, running, success or failure
uint8 status

# The message attached to the current execution state
string message

# Whether this node was part of the last tick
bool is_active

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
"""
  # Pseudo-constants
  INVALID = 1
  RUNNING = 2
  SUCCESS = 3
  FAILURE = 4
  UNKNOWN_TYPE = 0
  BEHAVIOUR = 1
  SEQUENCE = 2
  SELECTOR = 3
  PARALLEL = 4
  CHOOSER = 5
  DECORATOR = 6
  BLACKBOX_LEVEL_DETAIL = 1
  BLACKBOX_LEVEL_COMPONENT = 2
  BLACKBOX_LEVEL_BIG_PICTURE = 3
  BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4

  __slots__ = ['name','class_name','own_id','parent_id','tip_id','child_ids','type','blackbox_level','status','message','is_active']
  _slot_types = ['string','string','uuid_msgs/UniqueID','uuid_msgs/UniqueID','uuid_msgs/UniqueID','uuid_msgs/UniqueID[]','uint8','uint8','uint8','string','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,class_name,own_id,parent_id,tip_id,child_ids,type,blackbox_level,status,message,is_active

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Behaviour, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.class_name is None:
        self.class_name = ''
      if self.own_id is None:
        self.own_id = uuid_msgs.msg.UniqueID()
      if self.parent_id is None:
        self.parent_id = uuid_msgs.msg.UniqueID()
      if self.tip_id is None:
        self.tip_id = uuid_msgs.msg.UniqueID()
      if self.child_ids is None:
        self.child_ids = []
      if self.type is None:
        self.type = 0
      if self.blackbox_level is None:
        self.blackbox_level = 0
      if self.status is None:
        self.status = 0
      if self.message is None:
        self.message = ''
      if self.is_active is None:
        self.is_active = False
    else:
      self.name = ''
      self.class_name = ''
      self.own_id = uuid_msgs.msg.UniqueID()
      self.parent_id = uuid_msgs.msg.UniqueID()
      self.tip_id = uuid_msgs.msg.UniqueID()
      self.child_ids = []
      self.type = 0
      self.blackbox_level = 0
      self.status = 0
      self.message = ''
      self.is_active = False

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
      _x = self.class_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.own_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.parent_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.tip_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      length = len(self.child_ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.child_ids:
        _x = val1.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_16B().pack(*_x))
        else:
          buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.type, _x.blackbox_level, _x.status))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.is_active
      buff.write(_get_struct_B().pack(_x))
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
      if self.own_id is None:
        self.own_id = uuid_msgs.msg.UniqueID()
      if self.parent_id is None:
        self.parent_id = uuid_msgs.msg.UniqueID()
      if self.tip_id is None:
        self.tip_id = uuid_msgs.msg.UniqueID()
      if self.child_ids is None:
        self.child_ids = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_name = str[start:end]
      start = end
      end += 16
      self.own_id.uuid = str[start:end]
      start = end
      end += 16
      self.parent_id.uuid = str[start:end]
      start = end
      end += 16
      self.tip_id.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.child_ids = []
      for i in range(0, length):
        val1 = uuid_msgs.msg.UniqueID()
        start = end
        end += 16
        val1.uuid = str[start:end]
        self.child_ids.append(val1)
      _x = self
      start = end
      end += 3
      (_x.type, _x.blackbox_level, _x.status,) = _get_struct_3B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      start = end
      end += 1
      (self.is_active,) = _get_struct_B().unpack(str[start:end])
      self.is_active = bool(self.is_active)
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
      _x = self.class_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.own_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.parent_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.tip_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      length = len(self.child_ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.child_ids:
        _x = val1.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_16B().pack(*_x))
        else:
          buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.type, _x.blackbox_level, _x.status))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.is_active
      buff.write(_get_struct_B().pack(_x))
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
      if self.own_id is None:
        self.own_id = uuid_msgs.msg.UniqueID()
      if self.parent_id is None:
        self.parent_id = uuid_msgs.msg.UniqueID()
      if self.tip_id is None:
        self.tip_id = uuid_msgs.msg.UniqueID()
      if self.child_ids is None:
        self.child_ids = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_name = str[start:end]
      start = end
      end += 16
      self.own_id.uuid = str[start:end]
      start = end
      end += 16
      self.parent_id.uuid = str[start:end]
      start = end
      end += 16
      self.tip_id.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.child_ids = []
      for i in range(0, length):
        val1 = uuid_msgs.msg.UniqueID()
        start = end
        end += 16
        val1.uuid = str[start:end]
        self.child_ids.append(val1)
      _x = self
      start = end
      end += 3
      (_x.type, _x.blackbox_level, _x.status,) = _get_struct_3B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      start = end
      end += 1
      (self.is_active,) = _get_struct_B().unpack(str[start:end])
      self.is_active = bool(self.is_active)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
_struct_16s = None
def _get_struct_16s():
    global _struct_16s
    if _struct_16s is None:
        _struct_16s = struct.Struct("<16s")
    return _struct_16s
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B