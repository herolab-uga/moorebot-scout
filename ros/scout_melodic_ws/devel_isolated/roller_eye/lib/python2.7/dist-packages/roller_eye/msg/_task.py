# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roller_eye/task.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class task(genpy.Message):
  _md5sum = "9830df15a89026240f987f0f60f06f98"
  _type = "roller_eye/task"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 id
string name
string type
int8 repeateType
int8[] repeateDays
int32 timeYear
int8 timeMonth
int8 timeDay
int8 timeHour
int8 timeMinute
int8 timeSecond
int32 expire
string param
bool notice
bool active"""
  __slots__ = ['id','name','type','repeateType','repeateDays','timeYear','timeMonth','timeDay','timeHour','timeMinute','timeSecond','expire','param','notice','active']
  _slot_types = ['int32','string','string','int8','int8[]','int32','int8','int8','int8','int8','int8','int32','string','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,name,type,repeateType,repeateDays,timeYear,timeMonth,timeDay,timeHour,timeMinute,timeSecond,expire,param,notice,active

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(task, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.name is None:
        self.name = ''
      if self.type is None:
        self.type = ''
      if self.repeateType is None:
        self.repeateType = 0
      if self.repeateDays is None:
        self.repeateDays = []
      if self.timeYear is None:
        self.timeYear = 0
      if self.timeMonth is None:
        self.timeMonth = 0
      if self.timeDay is None:
        self.timeDay = 0
      if self.timeHour is None:
        self.timeHour = 0
      if self.timeMinute is None:
        self.timeMinute = 0
      if self.timeSecond is None:
        self.timeSecond = 0
      if self.expire is None:
        self.expire = 0
      if self.param is None:
        self.param = ''
      if self.notice is None:
        self.notice = False
      if self.active is None:
        self.active = False
    else:
      self.id = 0
      self.name = ''
      self.type = ''
      self.repeateType = 0
      self.repeateDays = []
      self.timeYear = 0
      self.timeMonth = 0
      self.timeDay = 0
      self.timeHour = 0
      self.timeMinute = 0
      self.timeSecond = 0
      self.expire = 0
      self.param = ''
      self.notice = False
      self.active = False

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
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.repeateType
      buff.write(_get_struct_b().pack(_x))
      length = len(self.repeateDays)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.repeateDays))
      _x = self
      buff.write(_get_struct_i5bi().pack(_x.timeYear, _x.timeMonth, _x.timeDay, _x.timeHour, _x.timeMinute, _x.timeSecond, _x.expire))
      _x = self.param
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.notice, _x.active))
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
      (self.id,) = _get_struct_i().unpack(str[start:end])
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
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      start = end
      end += 1
      (self.repeateType,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.repeateDays = s.unpack(str[start:end])
      _x = self
      start = end
      end += 13
      (_x.timeYear, _x.timeMonth, _x.timeDay, _x.timeHour, _x.timeMinute, _x.timeSecond, _x.expire,) = _get_struct_i5bi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.param = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.param = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.notice, _x.active,) = _get_struct_2B().unpack(str[start:end])
      self.notice = bool(self.notice)
      self.active = bool(self.active)
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
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.repeateType
      buff.write(_get_struct_b().pack(_x))
      length = len(self.repeateDays)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.repeateDays.tostring())
      _x = self
      buff.write(_get_struct_i5bi().pack(_x.timeYear, _x.timeMonth, _x.timeDay, _x.timeHour, _x.timeMinute, _x.timeSecond, _x.expire))
      _x = self.param
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.notice, _x.active))
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
      (self.id,) = _get_struct_i().unpack(str[start:end])
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
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      start = end
      end += 1
      (self.repeateType,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.repeateDays = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      _x = self
      start = end
      end += 13
      (_x.timeYear, _x.timeMonth, _x.timeDay, _x.timeHour, _x.timeMinute, _x.timeSecond, _x.expire,) = _get_struct_i5bi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.param = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.param = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.notice, _x.active,) = _get_struct_2B().unpack(str[start:end])
      self.notice = bool(self.notice)
      self.active = bool(self.active)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_i5bi = None
def _get_struct_i5bi():
    global _struct_i5bi
    if _struct_i5bi is None:
        _struct_i5bi = struct.Struct("<i5bi")
    return _struct_i5bi