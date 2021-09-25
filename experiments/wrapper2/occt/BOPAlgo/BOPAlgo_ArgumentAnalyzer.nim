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
  BOPAlgoArgumentAnalyzer* {.importcpp: "BOPAlgo_ArgumentAnalyzer",
                            header: "BOPAlgo_ArgumentAnalyzer.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                              ## !
                                                                                              ## empty
                                                                                              ## constructor
                                                                                              ##
                                                                                              ## !
                                                                                              ## Prepares
                                                                                              ## data;


proc constructBOPAlgoArgumentAnalyzer*(): BOPAlgoArgumentAnalyzer {.constructor,
    importcpp: "BOPAlgo_ArgumentAnalyzer(@)",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc destroyBOPAlgoArgumentAnalyzer*(this: var BOPAlgoArgumentAnalyzer) {.
    importcpp: "#.~BOPAlgo_ArgumentAnalyzer()",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc setShape1*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.
    importcpp: "SetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc setShape2*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.
    importcpp: "SetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getShape1*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getShape2*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc operationType*(this: var BOPAlgoArgumentAnalyzer): var BOPAlgoOperation {.
    importcpp: "OperationType", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc stopOnFirstFaulty*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "StopOnFirstFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc argumentTypeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "ArgumentTypeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc selfInterMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "SelfInterMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc smallEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "SmallEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc rebuildFaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "RebuildFaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc tangentMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "TangentMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc mergeVertexMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "MergeVertexMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc mergeEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "MergeEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc continuityMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "ContinuityMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc curveOnSurfaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.
    importcpp: "CurveOnSurfaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc perform*(this: var BOPAlgoArgumentAnalyzer) {.importcpp: "Perform",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc hasFaulty*(this: BOPAlgoArgumentAnalyzer): bool {.noSideEffect,
    importcpp: "HasFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getCheckResult*(this: BOPAlgoArgumentAnalyzer): BOPAlgoListOfCheckResult {.
    noSideEffect, importcpp: "GetCheckResult",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
