##  Created on: 2000-11-23
##  Created by: Michael KLOKOV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of IntTools_Context"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntToolsFaceFace* {.importcpp: "IntTools_FaceFace",
                     header: "IntTools_FaceFace.hxx", bycopy.} = object ## ! Empty constructor.
                                                                   ## ! Creates curves from the
                                                                   ## IntPatch_Line.


proc constructIntToolsFaceFace*(): IntToolsFaceFace {.constructor,
    importcpp: "IntTools_FaceFace(@)", header: "IntTools_FaceFace.hxx".}
proc setParameters*(this: var IntToolsFaceFace; approxCurves: bool;
                   computeCurveOnS1: bool; computeCurveOnS2: bool;
                   approximationTolerance: cfloat) {.importcpp: "SetParameters",
    header: "IntTools_FaceFace.hxx".}
proc perform*(this: var IntToolsFaceFace; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "Perform", header: "IntTools_FaceFace.hxx".}
proc isDone*(this: IntToolsFaceFace): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntTools_FaceFace.hxx".}
proc lines*(this: IntToolsFaceFace): IntToolsSequenceOfCurves {.noSideEffect,
    importcpp: "Lines", header: "IntTools_FaceFace.hxx".}
proc points*(this: IntToolsFaceFace): IntToolsSequenceOfPntOn2Faces {.noSideEffect,
    importcpp: "Points", header: "IntTools_FaceFace.hxx".}
proc face1*(this: IntToolsFaceFace): TopoDS_Face {.noSideEffect, importcpp: "Face1",
    header: "IntTools_FaceFace.hxx".}
proc face2*(this: IntToolsFaceFace): TopoDS_Face {.noSideEffect, importcpp: "Face2",
    header: "IntTools_FaceFace.hxx".}
proc tangentFaces*(this: IntToolsFaceFace): bool {.noSideEffect,
    importcpp: "TangentFaces", header: "IntTools_FaceFace.hxx".}
proc prepareLines3D*(this: var IntToolsFaceFace; bToSplit: bool = true) {.
    importcpp: "PrepareLines3D", header: "IntTools_FaceFace.hxx".}
proc setList*(this: var IntToolsFaceFace; listOfPnts: var IntSurfListOfPntOn2S) {.
    importcpp: "SetList", header: "IntTools_FaceFace.hxx".}
proc setContext*(this: var IntToolsFaceFace; aContext: Handle[IntToolsContext]) {.
    importcpp: "SetContext", header: "IntTools_FaceFace.hxx".}
proc setFuzzyValue*(this: var IntToolsFaceFace; theFuzz: cfloat) {.
    importcpp: "SetFuzzyValue", header: "IntTools_FaceFace.hxx".}
proc fuzzyValue*(this: IntToolsFaceFace): cfloat {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_FaceFace.hxx".}
proc context*(this: IntToolsFaceFace): Handle[IntToolsContext] {.noSideEffect,
    importcpp: "Context", header: "IntTools_FaceFace.hxx".}

























