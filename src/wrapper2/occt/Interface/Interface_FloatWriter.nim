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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Character,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_CString

## ! This class converts a floting number (Real) to a string
## ! It can be used if the standard C-C++ output functions
## ! (sprintf or std::cout<<) are not convenient. That is to say :
## ! - to suppress trailing '0' and 'E+00' (if desired)
## ! - to control exponant output and floating point output
## !
## ! Formats are given in the form used by printf-sprintf

type
  Interface_FloatWriter* {.importcpp: "Interface_FloatWriter",
                          header: "Interface_FloatWriter.hxx", bycopy.} = object ## !
                                                                            ## Creates a
                                                                            ## FloatWriter
                                                                            ## ready to
                                                                            ## work, with
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
                                                                            ## !
                                                                            ## 1000. in
                                                                            ## absolute
                                                                            ## values
                                                                            ## ! If
                                                                            ## <chars> is
                                                                            ## given (and
                                                                            ## positive), it will
                                                                            ## produce
                                                                            ## options
                                                                            ## ! to
                                                                            ## produce this
                                                                            ## count of
                                                                            ## characters :
                                                                            ## "%<chars>f","%<chars>%E"


proc constructInterface_FloatWriter*(chars: Standard_Integer = 0): Interface_FloatWriter {.
    constructor, importcpp: "Interface_FloatWriter(@)",
    header: "Interface_FloatWriter.hxx".}
proc SetFormat*(this: var Interface_FloatWriter; form: Standard_CString;
               reset: Standard_Boolean = Standard_True) {.importcpp: "SetFormat",
    header: "Interface_FloatWriter.hxx".}
proc SetFormatForRange*(this: var Interface_FloatWriter; form: Standard_CString;
                       R1: Standard_Real; R2: Standard_Real) {.
    importcpp: "SetFormatForRange", header: "Interface_FloatWriter.hxx".}
proc SetZeroSuppress*(this: var Interface_FloatWriter; mode: Standard_Boolean) {.
    importcpp: "SetZeroSuppress", header: "Interface_FloatWriter.hxx".}
proc SetDefaults*(this: var Interface_FloatWriter; chars: Standard_Integer = 0) {.
    importcpp: "SetDefaults", header: "Interface_FloatWriter.hxx".}
proc Options*(this: Interface_FloatWriter; zerosup: var Standard_Boolean;
             range: var Standard_Boolean; R1: var Standard_Real; R2: var Standard_Real) {.
    noSideEffect, importcpp: "Options", header: "Interface_FloatWriter.hxx".}
proc MainFormat*(this: Interface_FloatWriter): Standard_CString {.noSideEffect,
    importcpp: "MainFormat", header: "Interface_FloatWriter.hxx".}
proc FormatForRange*(this: Interface_FloatWriter): Standard_CString {.noSideEffect,
    importcpp: "FormatForRange", header: "Interface_FloatWriter.hxx".}
proc Write*(this: Interface_FloatWriter; val: Standard_Real; text: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Write", header: "Interface_FloatWriter.hxx".}
proc Convert*(val: Standard_Real; text: Standard_CString; zerosup: Standard_Boolean;
             Range1: Standard_Real; Range2: Standard_Real;
             mainform: Standard_CString; rangeform: Standard_CString): Standard_Integer {.
    importcpp: "Interface_FloatWriter::Convert(@)",
    header: "Interface_FloatWriter.hxx".}