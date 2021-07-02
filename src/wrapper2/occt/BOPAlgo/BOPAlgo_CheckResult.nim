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


proc constructBOPAlgoCheckResult*(): BOPAlgoCheckResult {.constructor,
    importcpp: "BOPAlgo_CheckResult(@)", header: "BOPAlgo_CheckResult.hxx".}
proc setShape1*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPAlgo_CheckResult.hxx".}
proc addFaultyShape1*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.
    importcpp: "AddFaultyShape1", header: "BOPAlgo_CheckResult.hxx".}
proc setShape2*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPAlgo_CheckResult.hxx".}
proc addFaultyShape2*(this: var BOPAlgoCheckResult; theShape: TopoDS_Shape) {.
    importcpp: "AddFaultyShape2", header: "BOPAlgo_CheckResult.hxx".}
proc getShape1*(this: BOPAlgoCheckResult): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape1", header: "BOPAlgo_CheckResult.hxx".}
proc getShape2*(this: BOPAlgoCheckResult): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape2", header: "BOPAlgo_CheckResult.hxx".}
proc getFaultyShapes1*(this: BOPAlgoCheckResult): TopToolsListOfShape {.
    noSideEffect, importcpp: "GetFaultyShapes1", header: "BOPAlgo_CheckResult.hxx".}
proc getFaultyShapes2*(this: BOPAlgoCheckResult): TopToolsListOfShape {.
    noSideEffect, importcpp: "GetFaultyShapes2", header: "BOPAlgo_CheckResult.hxx".}
proc setCheckStatus*(this: var BOPAlgoCheckResult; theStatus: BOPAlgoCheckStatus) {.
    importcpp: "SetCheckStatus", header: "BOPAlgo_CheckResult.hxx".}
proc getCheckStatus*(this: BOPAlgoCheckResult): BOPAlgoCheckStatus {.noSideEffect,
    importcpp: "GetCheckStatus", header: "BOPAlgo_CheckResult.hxx".}
proc setMaxDistance1*(this: var BOPAlgoCheckResult; theDist: StandardReal) {.
    importcpp: "SetMaxDistance1", header: "BOPAlgo_CheckResult.hxx".}
proc setMaxDistance2*(this: var BOPAlgoCheckResult; theDist: StandardReal) {.
    importcpp: "SetMaxDistance2", header: "BOPAlgo_CheckResult.hxx".}
proc setMaxParameter1*(this: var BOPAlgoCheckResult; thePar: StandardReal) {.
    importcpp: "SetMaxParameter1", header: "BOPAlgo_CheckResult.hxx".}
proc setMaxParameter2*(this: var BOPAlgoCheckResult; thePar: StandardReal) {.
    importcpp: "SetMaxParameter2", header: "BOPAlgo_CheckResult.hxx".}
proc getMaxDistance1*(this: BOPAlgoCheckResult): StandardReal {.noSideEffect,
    importcpp: "GetMaxDistance1", header: "BOPAlgo_CheckResult.hxx".}
proc getMaxDistance2*(this: BOPAlgoCheckResult): StandardReal {.noSideEffect,
    importcpp: "GetMaxDistance2", header: "BOPAlgo_CheckResult.hxx".}
proc getMaxParameter1*(this: BOPAlgoCheckResult): StandardReal {.noSideEffect,
    importcpp: "GetMaxParameter1", header: "BOPAlgo_CheckResult.hxx".}
proc getMaxParameter2*(this: BOPAlgoCheckResult): StandardReal {.noSideEffect,
    importcpp: "GetMaxParameter2", header: "BOPAlgo_CheckResult.hxx".}

