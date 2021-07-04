##  Created on: 1992-10-26
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceError"
type
  IGESData_ParamCursor* {.importcpp: "IGESData_ParamCursor",
                         header: "IGESData_ParamCursor.hxx", bycopy.} = object ## !
                                                                          ## Creates a Cursor to read a
                                                                          ## precise
                                                                          ## parameter of
                                                                          ## ParamReader,
                                                                          ## !
                                                                          ## identified by its
                                                                          ## number, then set
                                                                          ## Current Number to "num + 1"
                                                                          ## ! (this
                                                                          ## constructor allows to simply give a Number to a method
                                                                          ## !
                                                                          ## Read... from
                                                                          ## ParamReader, which will be
                                                                          ## translated into a
                                                                          ## !
                                                                          ## ParamCursor by
                                                                          ## compiler)


proc constructIGESData_ParamCursor*(num: Standard_Integer): IGESData_ParamCursor {.
    constructor, importcpp: "IGESData_ParamCursor(@)",
    header: "IGESData_ParamCursor.hxx".}
proc constructIGESData_ParamCursor*(num: Standard_Integer; nb: Standard_Integer;
                                   size: Standard_Integer = 1): IGESData_ParamCursor {.
    constructor, importcpp: "IGESData_ParamCursor(@)",
    header: "IGESData_ParamCursor.hxx".}
proc SetTerm*(this: var IGESData_ParamCursor; size: Standard_Integer;
             autoadv: Standard_Boolean = Standard_True) {.importcpp: "SetTerm",
    header: "IGESData_ParamCursor.hxx".}
proc SetOne*(this: var IGESData_ParamCursor;
            autoadv: Standard_Boolean = Standard_True) {.importcpp: "SetOne",
    header: "IGESData_ParamCursor.hxx".}
proc SetXY*(this: var IGESData_ParamCursor;
           autoadv: Standard_Boolean = Standard_True) {.importcpp: "SetXY",
    header: "IGESData_ParamCursor.hxx".}
proc SetXYZ*(this: var IGESData_ParamCursor;
            autoadv: Standard_Boolean = Standard_True) {.importcpp: "SetXYZ",
    header: "IGESData_ParamCursor.hxx".}
proc SetAdvance*(this: var IGESData_ParamCursor; advance: Standard_Boolean) {.
    importcpp: "SetAdvance", header: "IGESData_ParamCursor.hxx".}
proc Start*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "Start", header: "IGESData_ParamCursor.hxx".}
proc Limit*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "Limit", header: "IGESData_ParamCursor.hxx".}
proc Count*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "Count", header: "IGESData_ParamCursor.hxx".}
proc ItemSize*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "ItemSize", header: "IGESData_ParamCursor.hxx".}
proc TermSize*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "TermSize", header: "IGESData_ParamCursor.hxx".}
proc Offset*(this: IGESData_ParamCursor): Standard_Integer {.noSideEffect,
    importcpp: "Offset", header: "IGESData_ParamCursor.hxx".}
proc Advance*(this: IGESData_ParamCursor): Standard_Boolean {.noSideEffect,
    importcpp: "Advance", header: "IGESData_ParamCursor.hxx".}