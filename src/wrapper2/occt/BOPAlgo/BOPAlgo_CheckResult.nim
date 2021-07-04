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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, BOPAlgo_CheckStatus,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_CheckResult* {.importcpp: "BOPAlgo_CheckResult",
                        header: "BOPAlgo_CheckResult.hxx", bycopy.} = object ## ! empty
                                                                        ## constructor


proc constructBOPAlgo_CheckResult*(): BOPAlgo_CheckResult {.constructor,
    importcpp: "BOPAlgo_CheckResult(@)", header: "BOPAlgo_CheckResult.hxx".}
proc SetShape1*(this: var BOPAlgo_CheckResult; TheShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPAlgo_CheckResult.hxx".}
proc AddFaultyShape1*(this: var BOPAlgo_CheckResult; TheShape: TopoDS_Shape) {.
    importcpp: "AddFaultyShape1", header: "BOPAlgo_CheckResult.hxx".}
proc SetShape2*(this: var BOPAlgo_CheckResult; TheShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPAlgo_CheckResult.hxx".}
proc AddFaultyShape2*(this: var BOPAlgo_CheckResult; TheShape: TopoDS_Shape) {.
    importcpp: "AddFaultyShape2", header: "BOPAlgo_CheckResult.hxx".}
proc GetShape1*(this: BOPAlgo_CheckResult): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape1", header: "BOPAlgo_CheckResult.hxx".}
proc GetShape2*(this: BOPAlgo_CheckResult): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape2", header: "BOPAlgo_CheckResult.hxx".}
proc GetFaultyShapes1*(this: BOPAlgo_CheckResult): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GetFaultyShapes1", header: "BOPAlgo_CheckResult.hxx".}
proc GetFaultyShapes2*(this: BOPAlgo_CheckResult): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GetFaultyShapes2", header: "BOPAlgo_CheckResult.hxx".}
proc SetCheckStatus*(this: var BOPAlgo_CheckResult; TheStatus: BOPAlgo_CheckStatus) {.
    importcpp: "SetCheckStatus", header: "BOPAlgo_CheckResult.hxx".}
proc GetCheckStatus*(this: BOPAlgo_CheckResult): BOPAlgo_CheckStatus {.noSideEffect,
    importcpp: "GetCheckStatus", header: "BOPAlgo_CheckResult.hxx".}
proc SetMaxDistance1*(this: var BOPAlgo_CheckResult; theDist: Standard_Real) {.
    importcpp: "SetMaxDistance1", header: "BOPAlgo_CheckResult.hxx".}
proc SetMaxDistance2*(this: var BOPAlgo_CheckResult; theDist: Standard_Real) {.
    importcpp: "SetMaxDistance2", header: "BOPAlgo_CheckResult.hxx".}
proc SetMaxParameter1*(this: var BOPAlgo_CheckResult; thePar: Standard_Real) {.
    importcpp: "SetMaxParameter1", header: "BOPAlgo_CheckResult.hxx".}
proc SetMaxParameter2*(this: var BOPAlgo_CheckResult; thePar: Standard_Real) {.
    importcpp: "SetMaxParameter2", header: "BOPAlgo_CheckResult.hxx".}
proc GetMaxDistance1*(this: BOPAlgo_CheckResult): Standard_Real {.noSideEffect,
    importcpp: "GetMaxDistance1", header: "BOPAlgo_CheckResult.hxx".}
proc GetMaxDistance2*(this: BOPAlgo_CheckResult): Standard_Real {.noSideEffect,
    importcpp: "GetMaxDistance2", header: "BOPAlgo_CheckResult.hxx".}
proc GetMaxParameter1*(this: BOPAlgo_CheckResult): Standard_Real {.noSideEffect,
    importcpp: "GetMaxParameter1", header: "BOPAlgo_CheckResult.hxx".}
proc GetMaxParameter2*(this: BOPAlgo_CheckResult): Standard_Real {.noSideEffect,
    importcpp: "GetMaxParameter2", header: "BOPAlgo_CheckResult.hxx".}