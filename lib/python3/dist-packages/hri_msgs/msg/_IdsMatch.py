# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hri_msgs/IdsMatch.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class IdsMatch(genpy.Message):
  _md5sum = "47ee5557c84afd004bec4ac7f5fa56f7"
  _type = "hri_msgs/IdsMatch"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
# Such messages should be published on the /humans/candidate_matches topic.
#
# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.
# This can be use for instance if one of the ID (eg, a face id) is not valid anymore
# (face not tracked anymore)
#
# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and
# `id2` can not be equal.
#
# ## Examples
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:
# 0.63, }
#
# Another example: a module that detect both faces and skeleton might publish a
# 100% confidence match between the two:
#
# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:
# 1.0, }
#

int8 UNSET=0
int8 PERSON=1
int8 FACE=2
int8 BODY=3
int8 VOICE=4

string id1
int8 id1_type
string id2
int8 id2_type

float32 confidence
"""
  # Pseudo-constants
  UNSET = 0
  PERSON = 1
  FACE = 2
  BODY = 3
  VOICE = 4

  __slots__ = ['id1','id1_type','id2','id2_type','confidence']
  _slot_types = ['string','int8','string','int8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id1,id1_type,id2,id2_type,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IdsMatch, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id1 is None:
        self.id1 = ''
      if self.id1_type is None:
        self.id1_type = 0
      if self.id2 is None:
        self.id2 = ''
      if self.id2_type is None:
        self.id2_type = 0
      if self.confidence is None:
        self.confidence = 0.
    else:
      self.id1 = ''
      self.id1_type = 0
      self.id2 = ''
      self.id2_type = 0
      self.confidence = 0.

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
      _x = self.id1
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id1_type
      buff.write(_get_struct_b().pack(_x))
      _x = self.id2
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_bf().pack(_x.id2_type, _x.confidence))
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
        self.id1 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id1 = str[start:end]
      start = end
      end += 1
      (self.id1_type,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id2 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id2 = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.id2_type, _x.confidence,) = _get_struct_bf().unpack(str[start:end])
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
      _x = self.id1
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id1_type
      buff.write(_get_struct_b().pack(_x))
      _x = self.id2
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_bf().pack(_x.id2_type, _x.confidence))
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
        self.id1 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id1 = str[start:end]
      start = end
      end += 1
      (self.id1_type,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id2 = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id2 = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.id2_type, _x.confidence,) = _get_struct_bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
_struct_bf = None
def _get_struct_bf():
    global _struct_bf
    if _struct_bf is None:
        _struct_bf = struct.Struct("<bf")
    return _struct_bf