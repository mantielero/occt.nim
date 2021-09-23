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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, BOPAlgo_Algo, BOPAlgo_Operation,
  BOPAlgo_ListOfCheckResult, ../Standard/Standard_Real, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_ArgumentAnalyzer* {.importcpp: "BOPAlgo_ArgumentAnalyzer",
                             header: "BOPAlgo_ArgumentAnalyzer.hxx", bycopy.} = object of BOPAlgo_Algo ##
                                                                                                ## !
                                                                                                ## empty
                                                                                                ## constructor
                                                                                                ##
                                                                                                ## !
                                                                                                ## Prepares
                                                                                                ## data;


proc constructBOPAlgo_ArgumentAnalyzer*(): BOPAlgo_ArgumentAnalyzer {.constructor,
    importcpp: "BOPAlgo_ArgumentAnalyzer(@)",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc destroyBOPAlgo_ArgumentAnalyzer*(this: var BOPAlgo_ArgumentAnalyzer) {.
    importcpp: "#.~BOPAlgo_ArgumentAnalyzer()",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc SetShape1*(this: var BOPAlgo_ArgumentAnalyzer; TheShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc SetShape2*(this: var BOPAlgo_ArgumentAnalyzer; TheShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc GetShape1*(this: BOPAlgo_ArgumentAnalyzer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc GetShape2*(this: BOPAlgo_ArgumentAnalyzer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc OperationType*(this: var BOPAlgo_ArgumentAnalyzer): var BOPAlgo_Operation {.
    importcpp: "OperationType", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc StopOnFirstFaulty*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "StopOnFirstFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc ArgumentTypeMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "ArgumentTypeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc SelfInterMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "SelfInterMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc SmallEdgeMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "SmallEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc RebuildFaceMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "RebuildFaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc TangentMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "TangentMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc MergeVertexMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "MergeVertexMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc MergeEdgeMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "MergeEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc ContinuityMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "ContinuityMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc CurveOnSurfaceMode*(this: var BOPAlgo_ArgumentAnalyzer): var Standard_Boolean {.
    importcpp: "CurveOnSurfaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc Perform*(this: var BOPAlgo_ArgumentAnalyzer) {.importcpp: "Perform",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc HasFaulty*(this: BOPAlgo_ArgumentAnalyzer): Standard_Boolean {.noSideEffect,
    importcpp: "HasFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc GetCheckResult*(this: BOPAlgo_ArgumentAnalyzer): BOPAlgo_ListOfCheckResult {.
    noSideEffect, importcpp: "GetCheckResult",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}