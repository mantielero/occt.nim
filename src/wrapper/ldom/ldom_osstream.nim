import ../standard/standard_types
import ldom_types



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



proc newLDOM_SBuffer*(theMaxBuf: cint): LDOM_SBuffer {.cdecl, constructor,
    importcpp: "LDOM_SBuffer(@)", header: "LDOM_OSStream.hxx".}
proc str*(this: LDOM_SBuffer): cstring {.noSideEffect, cdecl, importcpp: "str",
                                     header: "LDOM_OSStream.hxx".}
proc length*(this: LDOM_SBuffer): cint {.noSideEffect, cdecl, importcpp: "Length",
                                     header: "LDOM_OSStream.hxx".}
proc clear*(this: var LDOM_SBuffer) {.cdecl, importcpp: "Clear",
                                  header: "LDOM_OSStream.hxx".}
proc overflow*(this: var LDOM_SBuffer; c: cint = eof): cint {.cdecl,
    importcpp: "overflow", header: "LDOM_OSStream.hxx".}
proc underflow*(this: var LDOM_SBuffer): cint {.cdecl, importcpp: "underflow",
    header: "LDOM_OSStream.hxx".}
proc xsputn*(this: var LDOM_SBuffer; s: cstring; n: Streamsize): Streamsize {.cdecl,
    importcpp: "xsputn", header: "LDOM_OSStream.hxx".}
proc destroyLDOM_SBuffer*(this: var LDOM_SBuffer) {.cdecl,
    importcpp: "#.~LDOM_SBuffer()", header: "LDOM_OSStream.hxx".}
## ! Subclass if std::ostream allowing to increase performance
## ! of outputting data into a string avoiding reallocation of buffer.
## ! Class LDOM_OSStream implements output into a sequence of
## ! strings and getting the result as a string.
## ! It inherits Standard_OStream (std::ostream).
## ! Beside methods of std::ostream, it also has additional
## ! useful methods: str(), Length() and Clear().



proc newLDOM_OSStream*(theMaxBuf: cint): LDOM_OSStream {.cdecl, constructor,
    importcpp: "LDOM_OSStream(@)", header: "LDOM_OSStream.hxx".}
proc destroyLDOM_OSStream*(this: var LDOM_OSStream) {.cdecl,
    importcpp: "#.~LDOM_OSStream()", header: "LDOM_OSStream.hxx".}
proc str*(this: LDOM_OSStream): cstring {.noSideEffect, cdecl, importcpp: "str",
                                      header: "LDOM_OSStream.hxx".}
proc length*(this: LDOM_OSStream): cint {.noSideEffect, cdecl, importcpp: "Length",
                                      header: "LDOM_OSStream.hxx".}
proc clear*(this: var LDOM_OSStream) {.cdecl, importcpp: "Clear",
                                   header: "LDOM_OSStream.hxx".}



