##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

##  VC9 does not have stdint.h

when (defined(_MSC_VER) and (_MSC_VER < 1600)):
  ##  old MSVC - hasn't stdint header
  type
    uint8_t* = cu__int8
    uint16_t* = cu__int16
    uint32_t* = cu__int32
    uint64_t* = cu__int64
    int8_t* = c__int8
    int16_t* = c__int16
    int32_t* = c__int32
    int64_t* = c__int64
else:
  discard
when (defined(_MSC_VER) and (_MSC_VER < 1800)):
  ##  only Visual Studio 2013 (vc12) provides <cinttypes> header
  ##  we do not defined all macros here - only used by OCCT framework
  const
    PRId64* = "I64d"
    PRIu64* = "I64u"
    SCNd64* = "I64d"
    SCNu64* = "I64u"
  when defined(_WIN64):
    const
      PRIdPTR* = "I64d"
      PRIuPTR* = "I64u"
      SCNdPTR* = "I64d"
      SCNuPTR* = "I64u"
  else:
    const
      PRIdPTR* = "d"
      PRIuPTR* = "u"
      SCNdPTR* = "d"
      SCNuPTR* = "u"
else:
  ##  should be just <cinttypes> since C++11
  ##  however we use this code for compatibility with old C99 compilers
const
  Standard_False* = false
  Standard_True* = true

import
  Standard_Macro

type
  Standard_Integer* = cint
  Standard_Real* = cdouble
  Standard_Boolean* = bool
  Standard_ShortReal* = cfloat
  Standard_Character* = char
  Standard_Byte* = cuchar
  Standard_Address* = pointer
  Standard_Size* = csize_t
  Standard_Time* = time_t

##  Unicode primitives, char16_t, char32_t

type
  Standard_Utf8Char* = char

## !< signed   UTF-8 char

type
  Standard_Utf8UChar* = cuchar

## !< unsigned UTF-8 char

when ((defined(__GNUC__) and not defined(__clang__) and
    ((__GNUC__ == 4 and __GNUC_MINOR__ <= 3) or __GNUC__ < 4)) or
    (defined(_MSC_VER) and (_MSC_VER < 1600))):
  ##  compatibility with old GCC and MSVC compilers
  type
    Standard_ExtCharacter* = uint16_t
    Standard_Utf16Char* = uint16_t
    Standard_Utf32Char* = uint32_t
else:
  type
    Standard_ExtCharacter* = char16_t
    Standard_Utf16Char* = char16_t
  ## !< UTF-16 char (always unsigned)
  type
    Standard_Utf32Char* = char32_t
  ## !< UTF-32 char (always unsigned)
type
  Standard_WideChar* = wchar_t

## !< wide char (unsigned UTF-16 on Windows platform and signed UTF-32 on Linux)
##

type
  Standard_CString* = ptr Standard_Character
  Standard_ExtString* = ptr Standard_ExtCharacter
