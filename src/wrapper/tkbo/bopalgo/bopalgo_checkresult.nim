##  Created on: 2004-09-03
##  Created by: Oleg FEDYAEV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
type
  BOPAlgoCheckResult* {.importcpp: "BOPAlgo_CheckResult",
                       header: "BOPAlgo_CheckResult.hxx", bycopy.} = object ## ! empty
                                                                       ## constructor


proc newBOPAlgoCheckResult*(): BOPAlgoCheckResult {.cdecl, constructor,
    importcpp: "BOPAlgo_CheckResult(@)", dynlib: tkbo.}
proc setShape1*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape1", dynlib: tkbo.}
proc addFaultyShape1*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddFaultyShape1", dynlib: tkbo.}
proc setShape2*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape2", dynlib: tkbo.}
proc addFaultyShape2*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddFaultyShape2", dynlib: tkbo.}
proc getShape1*(this: BOPAlgoCheckResult): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape1", dynlib: tkbo.}
proc getShape2*(this: BOPAlgoCheckResult): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape2", dynlib: tkbo.}
proc getFaultyShapes1*(this: BOPAlgoCheckResult): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "GetFaultyShapes1", dynlib: tkbo.}
proc getFaultyShapes2*(this: BOPAlgoCheckResult): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "GetFaultyShapes2", dynlib: tkbo.}
proc setCheckStatus*(this: var BOPAlgoCheckResult; theStatus: BOPAlgoCheckStatus) {.
    cdecl, importcpp: "SetCheckStatus", dynlib: tkbo.}
proc getCheckStatus*(this: BOPAlgoCheckResult): BOPAlgoCheckStatus {.noSideEffect,
    cdecl, importcpp: "GetCheckStatus", dynlib: tkbo.}
proc setMaxDistance1*(this: var BOPAlgoCheckResult; theDist: cfloat) {.cdecl,
    importcpp: "SetMaxDistance1", dynlib: tkbo.}
proc setMaxDistance2*(this: var BOPAlgoCheckResult; theDist: cfloat) {.cdecl,
    importcpp: "SetMaxDistance2", dynlib: tkbo.}
proc setMaxParameter1*(this: var BOPAlgoCheckResult; thePar: cfloat) {.cdecl,
    importcpp: "SetMaxParameter1", dynlib: tkbo.}
proc setMaxParameter2*(this: var BOPAlgoCheckResult; thePar: cfloat) {.cdecl,
    importcpp: "SetMaxParameter2", dynlib: tkbo.}
proc getMaxDistance1*(this: BOPAlgoCheckResult): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMaxDistance1", dynlib: tkbo.}
proc getMaxDistance2*(this: BOPAlgoCheckResult): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMaxDistance2", dynlib: tkbo.}
proc getMaxParameter1*(this: BOPAlgoCheckResult): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMaxParameter1", dynlib: tkbo.}
proc getMaxParameter2*(this: BOPAlgoCheckResult): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMaxParameter2", dynlib: tkbo.}