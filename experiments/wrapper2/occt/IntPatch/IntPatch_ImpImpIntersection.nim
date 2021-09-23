##  Created on: 1992-05-07
##  Created by: Jacques GOUSSARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntPatch_SequenceOfPoint, IntPatch_SequenceOfLine, IntPatch_TheSOnBounds,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_Line"
type
  IntPatch_ImpImpIntersection* {.importcpp: "IntPatch_ImpImpIntersection",
                                header: "IntPatch_ImpImpIntersection.hxx", bycopy.} = object

  IntPatch_ImpImpIntersectionIntStatus* {.size: sizeof(cint),
      importcpp: "IntPatch_ImpImpIntersection::IntStatus",
      header: "IntPatch_ImpImpIntersection.hxx".} = enum ## ! OK. Good intersection result.
    IntStatus_OK, ## ! Intersection curve is too long (e.g. as in the bug #26894).
                 ## ! We cannot provide precise computation of value and
                 ## ! derivatives of this curve having used floating-point model
                 ## ! determined by IEEE 754 standard. As result, OCCT algorithms
                 ## ! cannot work with that curve correctly.
    IntStatus_InfiniteSectionCurve, ## ! Algorithm cannot finish correctly.
    IntStatus_Fail


proc constructIntPatch_ImpImpIntersection*(): IntPatch_ImpImpIntersection {.
    constructor, importcpp: "IntPatch_ImpImpIntersection(@)",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc constructIntPatch_ImpImpIntersection*(S1: handle[Adaptor3d_HSurface];
    D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
    D2: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real; TolTang: Standard_Real;
    theIsReqToKeepRLine: Standard_Boolean = Standard_False): IntPatch_ImpImpIntersection {.
    constructor, importcpp: "IntPatch_ImpImpIntersection(@)",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc Perform*(this: var IntPatch_ImpImpIntersection; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
             D2: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real;
             TolTang: Standard_Real;
             theIsReqToKeepRLine: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "IntPatch_ImpImpIntersection.hxx".}
proc IsDone*(this: IntPatch_ImpImpIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_ImpImpIntersection.hxx".}
proc GetStatus*(this: IntPatch_ImpImpIntersection): IntPatch_ImpImpIntersectionIntStatus {.
    noSideEffect, importcpp: "GetStatus", header: "IntPatch_ImpImpIntersection.hxx".}
proc IsEmpty*(this: IntPatch_ImpImpIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_ImpImpIntersection.hxx".}
proc TangentFaces*(this: IntPatch_ImpImpIntersection): Standard_Boolean {.
    noSideEffect, importcpp: "TangentFaces",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc OppositeFaces*(this: IntPatch_ImpImpIntersection): Standard_Boolean {.
    noSideEffect, importcpp: "OppositeFaces",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc NbPnts*(this: IntPatch_ImpImpIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_ImpImpIntersection.hxx".}
proc Point*(this: IntPatch_ImpImpIntersection; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Point", header: "IntPatch_ImpImpIntersection.hxx".}
proc NbLines*(this: IntPatch_ImpImpIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_ImpImpIntersection.hxx".}
proc Line*(this: IntPatch_ImpImpIntersection; Index: Standard_Integer): handle[
    IntPatch_Line] {.noSideEffect, importcpp: "Line",
                    header: "IntPatch_ImpImpIntersection.hxx".}