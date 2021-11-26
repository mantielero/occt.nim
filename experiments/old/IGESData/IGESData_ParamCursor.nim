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

discard "forward decl of Interface_InterfaceError"
type
  IGESDataParamCursor* {.importcpp: "IGESData_ParamCursor",
                        header: "IGESData_ParamCursor.hxx", bycopy.} = object ## ! Creates a Cursor to read a precise
                                                                         ## parameter of
                                                                         ## ParamReader,
                                                                         ## !
                                                                         ## identified by its number, then set Current Number to "num + 1"
                                                                         ## ! (this
                                                                         ## constructor allows to simply give a Number to a method
                                                                         ## ! Read... from
                                                                         ## ParamReader, which will be
                                                                         ## translated into a
                                                                         ## !
                                                                         ## ParamCursor by
                                                                         ## compiler)


proc constructIGESDataParamCursor*(num: cint): IGESDataParamCursor {.constructor,
    importcpp: "IGESData_ParamCursor(@)", header: "IGESData_ParamCursor.hxx".}
proc constructIGESDataParamCursor*(num: cint; nb: cint; size: cint = 1): IGESDataParamCursor {.
    constructor, importcpp: "IGESData_ParamCursor(@)",
    header: "IGESData_ParamCursor.hxx".}
proc setTerm*(this: var IGESDataParamCursor; size: cint; autoadv: bool = true) {.
    importcpp: "SetTerm", header: "IGESData_ParamCursor.hxx".}
proc setOne*(this: var IGESDataParamCursor; autoadv: bool = true) {.importcpp: "SetOne",
    header: "IGESData_ParamCursor.hxx".}
proc setXY*(this: var IGESDataParamCursor; autoadv: bool = true) {.importcpp: "SetXY",
    header: "IGESData_ParamCursor.hxx".}
proc setXYZ*(this: var IGESDataParamCursor; autoadv: bool = true) {.importcpp: "SetXYZ",
    header: "IGESData_ParamCursor.hxx".}
proc setAdvance*(this: var IGESDataParamCursor; advance: bool) {.
    importcpp: "SetAdvance", header: "IGESData_ParamCursor.hxx".}
proc start*(this: IGESDataParamCursor): cint {.noSideEffect, importcpp: "Start",
    header: "IGESData_ParamCursor.hxx".}
proc limit*(this: IGESDataParamCursor): cint {.noSideEffect, importcpp: "Limit",
    header: "IGESData_ParamCursor.hxx".}
proc count*(this: IGESDataParamCursor): cint {.noSideEffect, importcpp: "Count",
    header: "IGESData_ParamCursor.hxx".}
proc itemSize*(this: IGESDataParamCursor): cint {.noSideEffect,
    importcpp: "ItemSize", header: "IGESData_ParamCursor.hxx".}
proc termSize*(this: IGESDataParamCursor): cint {.noSideEffect,
    importcpp: "TermSize", header: "IGESData_ParamCursor.hxx".}
proc offset*(this: IGESDataParamCursor): cint {.noSideEffect, importcpp: "Offset",
    header: "IGESData_ParamCursor.hxx".}
proc advance*(this: IGESDataParamCursor): bool {.noSideEffect, importcpp: "Advance",
    header: "IGESData_ParamCursor.hxx".}

























