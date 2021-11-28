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


proc newBOPAlgoArgumentAnalyzer*(): BOPAlgoArgumentAnalyzer {.cdecl, constructor,
    importcpp: "BOPAlgo_ArgumentAnalyzer(@)", dynlib: tkbo.}
proc destroyBOPAlgoArgumentAnalyzer*(this: var BOPAlgoArgumentAnalyzer) {.cdecl,
    importcpp: "#.~BOPAlgo_ArgumentAnalyzer()", dynlib: tkbo.}
proc setShape1*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape1", dynlib: tkbo.}
proc setShape2*(this: var BOPAlgoArgumentAnalyzer; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape2", dynlib: tkbo.}
proc getShape1*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape1", dynlib: tkbo.}
proc getShape2*(this: BOPAlgoArgumentAnalyzer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape2", dynlib: tkbo.}
proc operationType*(this: var BOPAlgoArgumentAnalyzer): var BOPAlgoOperation {.cdecl,
    importcpp: "OperationType", dynlib: tkbo.}
proc stopOnFirstFaulty*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "StopOnFirstFaulty", dynlib: tkbo.}
proc argumentTypeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "ArgumentTypeMode", dynlib: tkbo.}
proc selfInterMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "SelfInterMode", dynlib: tkbo.}
proc smallEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "SmallEdgeMode", dynlib: tkbo.}
proc rebuildFaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "RebuildFaceMode", dynlib: tkbo.}
proc tangentMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "TangentMode", dynlib: tkbo.}
proc mergeVertexMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "MergeVertexMode", dynlib: tkbo.}
proc mergeEdgeMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "MergeEdgeMode", dynlib: tkbo.}
proc continuityMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "ContinuityMode", dynlib: tkbo.}
proc curveOnSurfaceMode*(this: var BOPAlgoArgumentAnalyzer): var bool {.cdecl,
    importcpp: "CurveOnSurfaceMode", dynlib: tkbo.}
proc perform*(this: var BOPAlgoArgumentAnalyzer) {.cdecl, importcpp: "Perform",
    dynlib: tkbo.}
proc hasFaulty*(this: BOPAlgoArgumentAnalyzer): bool {.noSideEffect, cdecl,
    importcpp: "HasFaulty", dynlib: tkbo.}
proc getCheckResult*(this: BOPAlgoArgumentAnalyzer): BOPAlgoListOfCheckResult {.
    noSideEffect, cdecl, importcpp: "GetCheckResult", dynlib: tkbo.}