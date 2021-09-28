##  Created on: 1994-04-15
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! This class converts a floting number (Real) to a string
## ! It can be used if the standard C-C++ output functions
## ! (sprintf or std::cout<<) are not convenient. That is to say :
## ! - to suppress trailing '0' and 'E+00' (if desired)
## ! - to control exponant output and floating point output
## !
## ! Formats are given in the form used by printf-sprintf

type
  InterfaceFloatWriter* {.importcpp: "Interface_FloatWriter",
                         header: "Interface_FloatWriter.hxx", bycopy.} = object ## !
                                                                           ## Creates a
                                                                           ## FloatWriter ready to work, with
                                                                           ## default
                                                                           ## options  -
                                                                           ## ! - zero
                                                                           ## suppress
                                                                           ## option is set
                                                                           ## ! - main
                                                                           ## format is set to "%E"
                                                                           ## ! -
                                                                           ## secondary
                                                                           ## format is set to "%f" for
                                                                           ## values
                                                                           ## between 0.1 and
                                                                           ## ! 1000. in
                                                                           ## absolute
                                                                           ## values
                                                                           ## ! If
                                                                           ## <chars> is given (and
                                                                           ## positive), it will
                                                                           ## produce
                                                                           ## options
                                                                           ## ! to
                                                                           ## produce this count of
                                                                           ## characters :
                                                                           ## "%<chars>f","%<chars>%E"


proc constructInterfaceFloatWriter*(chars: cint = 0): InterfaceFloatWriter {.
    constructor, importcpp: "Interface_FloatWriter(@)",
    header: "Interface_FloatWriter.hxx".}
proc setFormat*(this: var InterfaceFloatWriter; form: StandardCString;
               reset: bool = true) {.importcpp: "SetFormat",
                                 header: "Interface_FloatWriter.hxx".}
proc setFormatForRange*(this: var InterfaceFloatWriter; form: StandardCString;
                       r1: cfloat; r2: cfloat) {.importcpp: "SetFormatForRange",
    header: "Interface_FloatWriter.hxx".}
proc setZeroSuppress*(this: var InterfaceFloatWriter; mode: bool) {.
    importcpp: "SetZeroSuppress", header: "Interface_FloatWriter.hxx".}
proc setDefaults*(this: var InterfaceFloatWriter; chars: cint = 0) {.
    importcpp: "SetDefaults", header: "Interface_FloatWriter.hxx".}
proc options*(this: InterfaceFloatWriter; zerosup: var bool; range: var bool;
             r1: var cfloat; r2: var cfloat) {.noSideEffect, importcpp: "Options",
    header: "Interface_FloatWriter.hxx".}
proc mainFormat*(this: InterfaceFloatWriter): StandardCString {.noSideEffect,
    importcpp: "MainFormat", header: "Interface_FloatWriter.hxx".}
proc formatForRange*(this: InterfaceFloatWriter): StandardCString {.noSideEffect,
    importcpp: "FormatForRange", header: "Interface_FloatWriter.hxx".}
proc write*(this: InterfaceFloatWriter; val: cfloat; text: StandardCString): cint {.
    noSideEffect, importcpp: "Write", header: "Interface_FloatWriter.hxx".}
proc convert*(val: cfloat; text: StandardCString; zerosup: bool; range1: cfloat;
             range2: cfloat; mainform: StandardCString; rangeform: StandardCString): cint {.
    importcpp: "Interface_FloatWriter::Convert(@)",
    header: "Interface_FloatWriter.hxx".}

























