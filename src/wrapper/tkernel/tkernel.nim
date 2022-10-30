{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}

when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

# --------
# STANDARD
# --------
import standard/standard_types


type
  Ostream* = StandardOStream #object
  StreamBuffer* = object
  Counter* = object
  MessageProgressScopeNullString* = object


import standard/standard
#include standard/standard_abortivetransaction
import standard/standard_address
import standard/standard_arraystreambuffer
import standard/standard_assert
import standard/standard_atomic
import standard/standard_boolean
import standard/standard_byte
import standard/standard_character
import standard/standard_clocalesentry
import standard/standard_condition
#include standard/standard_constructionerror
import standard/standard_cstring
import standard/standard_definealloc
import standard/standard_defineexception
import standard/standard_definehandle
#include standard/standard_dimensionerror
#include standard/standard_dimensionmismatch
#include standard/standard_dividebyzero
#include standard/standard_domainerror
#include standard/standard_dump
import standard/standard_errorhandler
import standard/standard_extcharacter
import standard/standard_extstring
import standard/standard_failure
import standard/standard_guid
import standard/standard_handle
import standard/standard_handlerstatus
#include standard/standard_immutableobject
import standard/standard_integer
#import standard/standard_istream
import standard/standard_jmpbuf
#include standard/standard_licenseerror
#include standard/standard_licensenotfound
import standard/standard_macro
import standard/standard_math
import standard/standard_mmgropt
import standard/standard_mmgrraw
import standard/standard_mmgrroot
import standard/standard_mmgrtbballoc
#include standard/standard_multiplydefined
import standard/standard_mutex
#include standard/standard_negativevalue
#include standard/standard_nomoreobject
#include standard/standard_nosuchobject
#include standard/standard_notimplemented
#include standard/standard_nullobject
#include standard/standard_nullvalue
#include standard/standard_numericerror
#import standard/standard_ostream
#include standard/standard_outofmemory
#include standard/standard_outofrange
#include standard/standard_overflow
#import standard/standard_pbyte
import standard/standard_pcharacter
#import standard/standard_perrorhandler
import standard/standard_persistent
#import standard/standard_pextcharacter
import standard/standard_primitivetypes
#include standard/standard_programerror
#include standard/standard_rangeerror
import standard/standard_readbuffer
import standard/standard_readlinebuffer
import standard/standard_real
import standard/standard_shortreal
import standard/standard_size
#import standard/standard_sstream
import standard/standard_std
#import standard/standard_stream
import standard/standard_threadid
import standard/standard_time
#include standard/standard_toomanyusers
import standard/standard_transient
import standard/standard_type
import standard/standard_typedef
#include standard/standard_typemismatch
#include standard/standard_underflow
import standard/standard_uuid
import standard/standard_version
#include standard/standard_warningdisablefunctioncast
#include standard/standard_warningsdisable
#include standard/standard_warningsrestore

export standard_types, standard, standard_address, standard_arraystreambuffer
export standard_assert, standard_atomic, standard_boolean, standard_byte
export standard_character, standard_clocalesentry, standard_condition
export standard_cstring, standard_definealloc, standard_defineexception
export standard_definehandle, standard_errorhandler, standard_extcharacter
export standard_extstring, standard_failure, standard_guid, standard_handle
export standard_handlerstatus, standard_integer
export standard_jmpbuf, standard_macro, standard_math, standard_mmgropt
export standard_mmgrraw, standard_mmgrroot, standard_mmgrtbballoc, standard_mutex
export standard_pcharacter
export standard_persistent, standard_primitivetypes
export standard_readbuffer, standard_readlinebuffer, standard_real
export standard_shortreal, standard_size, standard_std
export standard_threadid, standard_time, standard_transient
export standard_type, standard_typedef, standard_uuid, standard_version

# -----------
# NCOLLECTION
# -----------
import ncollection/ncollection_types

import ncollection/ncollection_accallocator
import ncollection/ncollection_alignedallocator
import ncollection/ncollection_array1
import ncollection/ncollection_array2
import ncollection/ncollection_baseallocator
import ncollection/ncollection_baselist
import ncollection/ncollection_basemap
import ncollection/ncollection_basesequence
import ncollection/ncollection_basevector
import ncollection/ncollection_buffer
import ncollection/ncollection_cellfilter
import ncollection/ncollection_datamap
import ncollection/ncollection_defaulthasher
import ncollection/ncollection_definealloc
#include ncollection/ncollection_definearray1
#include ncollection/ncollection_definearray2
#include ncollection/ncollection_definedatamap
#include ncollection/ncollection_definedoublemap
import ncollection/ncollection_defineharray1
import ncollection/ncollection_defineharray2
import ncollection/ncollection_definehsequence
#include ncollection/ncollection_defineindexeddatamap
#include ncollection/ncollection_defineindexedmap
#include ncollection/ncollection_definelist
#include ncollection/ncollection_definemap
#include ncollection/ncollection_definesequence
#include ncollection/ncollection_definevector
import ncollection/ncollection_doublemap
import ncollection/ncollection_ebtree
import ncollection/ncollection_handle
import ncollection/ncollection_harray1
import ncollection/ncollection_harray2
import ncollection/ncollection_heapallocator
import ncollection/ncollection_hsequence
import ncollection/ncollection_incallocator
import ncollection/ncollection_indexeddatamap
import ncollection/ncollection_indexedmap
import ncollection/ncollection_lerp
import ncollection/ncollection_list
import ncollection/ncollection_listnode
import ncollection/ncollection_localarray
import ncollection/ncollection_map
import ncollection/ncollection_mat4
import ncollection/ncollection_sequence
import ncollection/ncollection_shared
import ncollection/ncollection_sparsearray
import ncollection/ncollection_sparsearraybase
import ncollection/ncollection_stdallocator
import ncollection/ncollection_stliterator
import ncollection/ncollection_string
import ncollection/ncollection_tlistiterator
import ncollection/ncollection_tlistnode
import ncollection/ncollection_typedef
import ncollection/ncollection_ubtree
import ncollection/ncollection_ubtreefiller
import ncollection/ncollection_utfiterator
import ncollection/ncollection_utfstring
import ncollection/ncollection_vec2
import ncollection/ncollection_vec3
import ncollection/ncollection_vec4
import ncollection/ncollection_vector
import ncollection/ncollection_winheapallocator



export ncollection_types
export ncollection_accallocator, ncollection_alignedallocator, ncollection_array1
export ncollection_array2, ncollection_baseallocator, ncollection_baselist
export ncollection_basemap, ncollection_basesequence, ncollection_basevector
export ncollection_buffer, ncollection_cellfilter, ncollection_datamap
export ncollection_defaulthasher, ncollection_definealloc, ncollection_defineharray1
export ncollection_defineharray2, ncollection_definehsequence, ncollection_doublemap
export ncollection_ebtree, ncollection_handle, ncollection_harray1, ncollection_harray2
export ncollection_heapallocator, ncollection_hsequence, ncollection_incallocator
export ncollection_indexeddatamap, ncollection_indexedmap, ncollection_lerp
export ncollection_list, ncollection_listnode, ncollection_localarray, ncollection_map
export ncollection_mat4, ncollection_sequence, ncollection_shared, ncollection_sparsearray
export ncollection_sparsearraybase, ncollection_stdallocator, ncollection_stliterator
export ncollection_string, ncollection_tlistiterator, ncollection_tlistnode
export ncollection_typedef, ncollection_ubtree, ncollection_ubtreefiller
export ncollection_utfiterator, ncollection_utfstring, ncollection_vec2
export ncollection_vec3, ncollection_vec4, ncollection_vector
export ncollection_winheapallocator

# ------------------------------------------
# TCOLSTD | TCOLLECTION | MESSAGE | QUANTITY
# ------------------------------------------
import tcolstd/tcolstd_includes
import tcollection/tcollection_includes
import message/message_includes

import quantity/quantity_includes

export tcolstd_includes, tcollection_includes, message_includes, quantity_includes
