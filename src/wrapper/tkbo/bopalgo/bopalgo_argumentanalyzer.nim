import bopalgo_types

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


proc newBOPAlgoArgumentAnalyzer*(): BOPAlgoArgumentAnalyzer {.cdecl, constructor,
    importcpp: "BOPAlgo_ArgumentAnalyzer(@)", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc destroyBOPAlgoArgumentAnalyzer*(this: var BOPAlgoArgumentAnalyzer) {.cdecl,
    importcpp: "#.~BOPAlgo_ArgumentAnalyzer()", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc setShape1*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc setShape2*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getShape1*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape1", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getShape2*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape2", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc operationType*(this: var BOPAlgoArgumentAnalyzer): var BOPAlgoOperation {.cdecl,
    importcpp: "OperationType", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc stopOnFirstFaulty*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "StopOnFirstFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc argumentTypeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "ArgumentTypeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc selfInterMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "SelfInterMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc smallEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "SmallEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc rebuildFaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "RebuildFaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc tangentMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "TangentMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc mergeVertexMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "MergeVertexMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc mergeEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "MergeEdgeMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc continuityMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "ContinuityMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc curveOnSurfaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "CurveOnSurfaceMode", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc perform*(this: var BOPAlgoArgumentAnalyzer) {.cdecl, importcpp: "Perform",
    header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc hasFaulty*(this: BOPAlgoArgumentAnalyzer): bool {.noSideEffect, cdecl,
    importcpp: "HasFaulty", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
proc getCheckResult*(this: BOPAlgoArgumentAnalyzer): BOPAlgoListOfCheckResult {.
    noSideEffect, cdecl, importcpp: "GetCheckResult", header: "BOPAlgo_ArgumentAnalyzer.hxx".}
