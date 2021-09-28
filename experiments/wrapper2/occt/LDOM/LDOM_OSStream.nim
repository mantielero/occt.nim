##  Created on: 2001-10-01
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

## ! Class LDOM_SBuffer inherits std::streambuf and
## ! redefines some virtual methods of it (overflow() and xsputn()).
## ! This class contains pointers on first and current element
## ! of sequence, also it has methods for the sequence management.

type
  LDOM_SBuffer* {.importcpp: "LDOM_SBuffer", header: "LDOM_OSStream.hxx", bycopy.} = object of Streambuf ##
                                                                                               ## !
                                                                                               ## One
                                                                                               ## element
                                                                                               ## of
                                                                                               ## sequence.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Can
                                                                                               ## only
                                                                                               ## be
                                                                                               ## allocated
                                                                                               ## by
                                                                                               ## the
                                                                                               ## allocator
                                                                                               ## and
                                                                                               ## assumes
                                                                                               ##
                                                                                               ## !
                                                                                               ## it
                                                                                               ## is
                                                                                               ## IncAllocator,
                                                                                               ## so
                                                                                               ## destructor
                                                                                               ## isn't
                                                                                               ## required.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Constructor.
                                                                                               ## Sets
                                                                                               ## a
                                                                                               ## default
                                                                                               ## value
                                                                                               ## for
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## length
                                                                                               ## of
                                                                                               ## each
                                                                                               ## sequence
                                                                                               ## element.
    ##  default length of one element
    ##  full length of contained data
    ##  the head of the sequence
    ##  current element of the sequence


proc constructLDOM_SBuffer*(theMaxBuf: int): LDOM_SBuffer {.constructor,
    importcpp: "LDOM_SBuffer(@)", header: "LDOM_OSStream.hxx".}
proc str*(this: LDOM_SBuffer): StandardCString {.noSideEffect, importcpp: "str",
    header: "LDOM_OSStream.hxx".}
proc length*(this: LDOM_SBuffer): int {.noSideEffect, importcpp: "Length",
                                    header: "LDOM_OSStream.hxx".}
proc clear*(this: var LDOM_SBuffer) {.importcpp: "Clear", header: "LDOM_OSStream.hxx".}
proc overflow*(this: var LDOM_SBuffer; c: cint = eof): cint {.importcpp: "overflow",
    header: "LDOM_OSStream.hxx".}
proc underflow*(this: var LDOM_SBuffer): cint {.importcpp: "underflow",
    header: "LDOM_OSStream.hxx".}
proc xsputn*(this: var LDOM_SBuffer; s: cstring; n: Streamsize): Streamsize {.
    importcpp: "xsputn", header: "LDOM_OSStream.hxx".}
proc destroyLDOM_SBuffer*(this: var LDOM_SBuffer) {.importcpp: "#.~LDOM_SBuffer()",
    header: "LDOM_OSStream.hxx".}
## !!!Ignored construct:  myAlloc ;
## Error: identifier expected, but got: ;!!!

## ! Subclass if std::ostream allowing to increase performance
## ! of outputting data into a string avoiding reallocation of buffer.
## ! Class LDOM_OSStream implements output into a sequence of
## ! strings and getting the result as a string.
## ! It inherits Standard_OStream (std::ostream).
## ! Beside methods of std::ostream, it also has additional
## ! useful methods: str(), Length() and Clear().

type
  LDOM_OSStream* {.importcpp: "LDOM_OSStream", header: "LDOM_OSStream.hxx", bycopy.} = object of StandardOStream ##
                                                                                                       ## !
                                                                                                       ## Constructor
                                                                                                       ##
                                                                                                       ## byte
                                                                                                       ## order
                                                                                                       ## mark
                                                                                                       ## defined
                                                                                                       ## at
                                                                                                       ## the
                                                                                                       ## start
                                                                                                       ## of
                                                                                                       ## a
                                                                                                       ## stream


proc constructLDOM_OSStream*(theMaxBuf: int): LDOM_OSStream {.constructor,
    importcpp: "LDOM_OSStream(@)", header: "LDOM_OSStream.hxx".}
proc destroyLDOM_OSStream*(this: var LDOM_OSStream) {.
    importcpp: "#.~LDOM_OSStream()", header: "LDOM_OSStream.hxx".}
proc str*(this: LDOM_OSStream): StandardCString {.noSideEffect, importcpp: "str",
    header: "LDOM_OSStream.hxx".}
proc length*(this: LDOM_OSStream): int {.noSideEffect, importcpp: "Length",
                                     header: "LDOM_OSStream.hxx".}
proc clear*(this: var LDOM_OSStream) {.importcpp: "Clear", header: "LDOM_OSStream.hxx".}
type
  LDOM_OSStreamBOMType* {.size: sizeof(cint), importcpp: "LDOM_OSStream::BOMType",
                         header: "LDOM_OSStream.hxx".} = enum
    BOM_UNDEFINED, BOM_UTF8, BOM_UTF16BE, BOM_UTF16LE, BOM_UTF32BE, BOM_UTF32LE,
    BOM_UTF7, BOM_UTF1, BOM_UTFEBCDIC, BOM_SCSU, BOM_BOCU1, BOM_GB18030















































