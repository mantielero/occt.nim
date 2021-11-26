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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_Line"
type
  IntPatchImpImpIntersection* {.importcpp: "IntPatch_ImpImpIntersection",
                               header: "IntPatch_ImpImpIntersection.hxx", bycopy.} = object

  IntPatchImpImpIntersectionIntStatus* {.size: sizeof(cint), importcpp: "IntPatch_ImpImpIntersection::IntStatus", header: "IntPatch_ImpImpIntersection.hxx".} = enum ##
                                                                                                                                                            ## !
                                                                                                                                                            ## OK.
                                                                                                                                                            ## Good
                                                                                                                                                            ## intersection
                                                                                                                                                            ## result.
    IntStatusOK, ## ! Intersection curve is too long (e.g. as in the bug #26894).
                ## ! We cannot provide precise computation of value and
                ## ! derivatives of this curve having used floating-point model
                ## ! determined by IEEE 754 standard. As result, OCCT algorithms
                ## ! cannot work with that curve correctly.
    IntStatusInfiniteSectionCurve, ## ! Algorithm cannot finish correctly.
    IntStatusFail


proc constructIntPatchImpImpIntersection*(): IntPatchImpImpIntersection {.
    constructor, importcpp: "IntPatch_ImpImpIntersection(@)",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc constructIntPatchImpImpIntersection*(s1: Handle[Adaptor3dHSurface];
    d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
    d2: Handle[Adaptor3dTopolTool]; tolArc: cfloat; tolTang: cfloat;
    theIsReqToKeepRLine: bool = false): IntPatchImpImpIntersection {.constructor,
    importcpp: "IntPatch_ImpImpIntersection(@)",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc perform*(this: var IntPatchImpImpIntersection; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
             d2: Handle[Adaptor3dTopolTool]; tolArc: cfloat; tolTang: cfloat;
             theIsReqToKeepRLine: bool = false) {.importcpp: "Perform",
    header: "IntPatch_ImpImpIntersection.hxx".}
proc isDone*(this: IntPatchImpImpIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_ImpImpIntersection.hxx".}
proc getStatus*(this: IntPatchImpImpIntersection): IntPatchImpImpIntersectionIntStatus {.
    noSideEffect, importcpp: "GetStatus", header: "IntPatch_ImpImpIntersection.hxx".}
proc isEmpty*(this: IntPatchImpImpIntersection): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_ImpImpIntersection.hxx".}
proc tangentFaces*(this: IntPatchImpImpIntersection): bool {.noSideEffect,
    importcpp: "TangentFaces", header: "IntPatch_ImpImpIntersection.hxx".}
proc oppositeFaces*(this: IntPatchImpImpIntersection): bool {.noSideEffect,
    importcpp: "OppositeFaces", header: "IntPatch_ImpImpIntersection.hxx".}
proc nbPnts*(this: IntPatchImpImpIntersection): cint {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_ImpImpIntersection.hxx".}
proc point*(this: IntPatchImpImpIntersection; index: cint): IntPatchPoint {.
    noSideEffect, importcpp: "Point", header: "IntPatch_ImpImpIntersection.hxx".}
proc nbLines*(this: IntPatchImpImpIntersection): cint {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_ImpImpIntersection.hxx".}
proc line*(this: IntPatchImpImpIntersection; index: cint): Handle[IntPatchLine] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_ImpImpIntersection.hxx".}

























