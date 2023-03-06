{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}

when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

import standard_types

import standard
#include standard_abortivetransaction
import standard_address
import standard_arraystreambuffer
import standard_assert
import standard_atomic
import standard_boolean
import standard_byte
import standard_character
import standard_clocalesentry
import standard_condition
#include standard_constructionerror
import standard_cstring
import standard_definealloc
import standard_defineexception
import standard_definehandle
#include standard_dimensionerror
#include standard_dimensionmismatch
#include standard_dividebyzero
#include standard_domainerror
#include standard_dump
import standard_errorhandler
import standard_extcharacter
import standard_extstring
import standard_failure
import standard_guid
import standard_handle
import standard_handlerstatus
#include standard_immutableobject
import standard_integer
#import standard_istream
import standard_jmpbuf
#include standard_licenseerror
#include standard_licensenotfound
import standard_macro
import standard_math
import standard_mmgropt
import standard_mmgrraw
import standard_mmgrroot
import standard_mmgrtbballoc
#include standard_multiplydefined
import standard_mutex
#include standard_negativevalue
#include standard_nomoreobject
#include standard_nosuchobject
#include standard_notimplemented
#include standard_nullobject
#include standard_nullvalue
#include standard_numericerror
#import standard_ostream
#include standard_outofmemory
#include standard_outofrange
#include standard_overflow
#import standard_pbyte
import standard_pcharacter
#import standard_perrorhandler
import standard_persistent
import standard_pextcharacter
import standard_primitivetypes
#include standard_programerror
#include standard_rangeerror
import standard_readbuffer
import standard_readlinebuffer
import standard_real
import standard_shortreal
import standard_size
#import standard_sstream
import standard_std
#import standard_stream
import standard_threadid
import standard_time
#include standard_toomanyusers
import standard_transient
import standard_type
import standard_typedef
#include standard_typemismatch
#include standard_underflow
import standard_uuid
import standard_version
#include standard_warningdisablefunctioncast
#include standard_warningsdisable
#include standard_warningsrestore

export standard_types, standard, standard_address, standard_arraystreambuffer, standard_assert, standard_atomic, standard_boolean, standard_byte, standard_character, standard_clocalesentry, standard_condition, standard_cstring, standard_definealloc, standard_defineexception, standard_definehandle, standard_errorhandler, standard_extcharacter, standard_extstring, standard_failure, standard_guid, standard_handle, standard_handlerstatus, standard_integer, standard_istream, standard_jmpbuf, standard_macro, standard_math, standard_mmgropt, standard_mmgrraw, standard_mmgrroot, standard_mmgrtbballoc, standard_mutex, standard_ostream, standard_pbyte, standard_pcharacter, standard_perrorhandler, standard_persistent, standard_pextcharacter, standard_primitivetypes, standard_readbuffer, standard_readlinebuffer, standard_real, standard_shortreal, standard_size, standard_sstream, standard_std, standard_stream, standard_threadid, standard_time, standard_transient, standard_type, standard_typedef, standard_uuid, standard_version
