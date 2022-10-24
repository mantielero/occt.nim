import standard_types

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

#when (defined(msc_Ver) and (msc_Ver < 1600)):
#  ##  old MSVC - hasn't stdint header
#  type
#    uint8T* = cu__int8
#    uint16T* = cu__int16
#    uint32T* = cu__int32
#    uint64T* = cu__int64
#    int8T* = c__int8
#    int16T* = c__int16
#    int32T* = c__int32
#    int64T* = c__int64
#else:
#  discard
#when (defined(msc_Ver) and (msc_Ver < 1800)):
#  ##  only Visual Studio 2013 (vc12) provides <cinttypes> header
#  ##  we do not defined all macros here - only used by OCCT framework
#  const
#    PRId64* = "I64d"
#    PRIu64* = "I64u"
#    SCNd64* = "I64d"
#    SCNu64* = "I64u"
#  when defined(WIN64):
#    const
#      PRIdPTR* = "I64d"
#      PRIuPTR* = "I64u"
#      SCNdPTR* = "I64d"
#      SCNuPTR* = "I64u"
#  else:
#    const
#      PRIdPTR* = "d"
#      PRIuPTR* = "u"
#      SCNdPTR* = "d"
#      SCNuPTR* = "u"
##else:
#  ##  should be just <cinttypes> since C++11
#  ##  however we use this code for compatibility with old C99 compilers
const
  StandardFalse* = false
  StandardTrue* = true









