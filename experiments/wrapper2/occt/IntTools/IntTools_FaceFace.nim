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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../IntPatch/IntPatch_Intersection, ../GeomInt/GeomInt_LineConstructor,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  IntTools_SequenceOfCurves, ../TopoDS/TopoDS_Face,
  IntTools_SequenceOfPntOn2Faces, ../IntSurf/IntSurf_ListOfPntOn2S

discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of IntTools_Context"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntTools_FaceFace* {.importcpp: "IntTools_FaceFace",
                      header: "IntTools_FaceFace.hxx", bycopy.} = object ## ! Empty constructor.
                                                                    ## ! Creates curves from the
                                                                    ## IntPatch_Line.


proc constructIntTools_FaceFace*(): IntTools_FaceFace {.constructor,
    importcpp: "IntTools_FaceFace(@)", header: "IntTools_FaceFace.hxx".}
proc SetParameters*(this: var IntTools_FaceFace; ApproxCurves: Standard_Boolean;
                   ComputeCurveOnS1: Standard_Boolean;
                   ComputeCurveOnS2: Standard_Boolean;
                   ApproximationTolerance: Standard_Real) {.
    importcpp: "SetParameters", header: "IntTools_FaceFace.hxx".}
proc Perform*(this: var IntTools_FaceFace; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "Perform", header: "IntTools_FaceFace.hxx".}
proc IsDone*(this: IntTools_FaceFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_FaceFace.hxx".}
proc Lines*(this: IntTools_FaceFace): IntTools_SequenceOfCurves {.noSideEffect,
    importcpp: "Lines", header: "IntTools_FaceFace.hxx".}
proc Points*(this: IntTools_FaceFace): IntTools_SequenceOfPntOn2Faces {.
    noSideEffect, importcpp: "Points", header: "IntTools_FaceFace.hxx".}
proc Face1*(this: IntTools_FaceFace): TopoDS_Face {.noSideEffect, importcpp: "Face1",
    header: "IntTools_FaceFace.hxx".}
proc Face2*(this: IntTools_FaceFace): TopoDS_Face {.noSideEffect, importcpp: "Face2",
    header: "IntTools_FaceFace.hxx".}
proc TangentFaces*(this: IntTools_FaceFace): Standard_Boolean {.noSideEffect,
    importcpp: "TangentFaces", header: "IntTools_FaceFace.hxx".}
proc PrepareLines3D*(this: var IntTools_FaceFace;
                    bToSplit: Standard_Boolean = Standard_True) {.
    importcpp: "PrepareLines3D", header: "IntTools_FaceFace.hxx".}
proc SetList*(this: var IntTools_FaceFace; ListOfPnts: var IntSurf_ListOfPntOn2S) {.
    importcpp: "SetList", header: "IntTools_FaceFace.hxx".}
proc SetContext*(this: var IntTools_FaceFace; aContext: handle[IntTools_Context]) {.
    importcpp: "SetContext", header: "IntTools_FaceFace.hxx".}
proc SetFuzzyValue*(this: var IntTools_FaceFace; theFuzz: Standard_Real) {.
    importcpp: "SetFuzzyValue", header: "IntTools_FaceFace.hxx".}
proc FuzzyValue*(this: IntTools_FaceFace): Standard_Real {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_FaceFace.hxx".}
proc Context*(this: IntTools_FaceFace): handle[IntTools_Context] {.noSideEffect,
    importcpp: "Context", header: "IntTools_FaceFace.hxx".}