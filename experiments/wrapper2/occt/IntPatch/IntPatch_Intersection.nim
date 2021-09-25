##  Created on: 1993-01-21
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  IntPatchIntersection* {.importcpp: "IntPatch_Intersection",
                         header: "IntPatch_Intersection.hxx", bycopy.} = object


proc constructIntPatchIntersection*(): IntPatchIntersection {.constructor,
    importcpp: "IntPatch_Intersection(@)", header: "IntPatch_Intersection.hxx".}
proc constructIntPatchIntersection*(s1: Handle[Adaptor3dHSurface];
                                   d1: Handle[Adaptor3dTopolTool];
                                   s2: Handle[Adaptor3dHSurface];
                                   d2: Handle[Adaptor3dTopolTool]; tolArc: float;
                                   tolTang: float): IntPatchIntersection {.
    constructor, importcpp: "IntPatch_Intersection(@)",
    header: "IntPatch_Intersection.hxx".}
proc constructIntPatchIntersection*(s1: Handle[Adaptor3dHSurface];
                                   d1: Handle[Adaptor3dTopolTool]; tolArc: float;
                                   tolTang: float): IntPatchIntersection {.
    constructor, importcpp: "IntPatch_Intersection(@)",
    header: "IntPatch_Intersection.hxx".}
proc setTolerances*(this: var IntPatchIntersection; tolArc: float; tolTang: float;
                   uVMaxStep: float; fleche: float) {.importcpp: "SetTolerances",
    header: "IntPatch_Intersection.hxx".}
proc perform*(this: var IntPatchIntersection; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
             d2: Handle[Adaptor3dTopolTool]; tolArc: float; tolTang: float;
             isGeomInt: bool = true; theIsReqToKeepRLine: bool = false;
             theIsReqToPostWLProc: bool = true) {.importcpp: "Perform",
    header: "IntPatch_Intersection.hxx".}
proc perform*(this: var IntPatchIntersection; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
             d2: Handle[Adaptor3dTopolTool]; tolArc: float; tolTang: float;
             lOfPnts: var IntSurfListOfPntOn2S; isGeomInt: bool = true;
             theIsReqToKeepRLine: bool = false; theIsReqToPostWLProc: bool = true) {.
    importcpp: "Perform", header: "IntPatch_Intersection.hxx".}
proc perform*(this: var IntPatchIntersection; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
             d2: Handle[Adaptor3dTopolTool]; u1: float; v1: float; u2: float; v2: float;
             tolArc: float; tolTang: float) {.importcpp: "Perform",
    header: "IntPatch_Intersection.hxx".}
proc perform*(this: var IntPatchIntersection; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; tolArc: float; tolTang: float) {.
    importcpp: "Perform", header: "IntPatch_Intersection.hxx".}
proc isDone*(this: IntPatchIntersection): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntPatch_Intersection.hxx".}
proc isEmpty*(this: IntPatchIntersection): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "IntPatch_Intersection.hxx".}
proc tangentFaces*(this: IntPatchIntersection): bool {.noSideEffect,
    importcpp: "TangentFaces", header: "IntPatch_Intersection.hxx".}
proc oppositeFaces*(this: IntPatchIntersection): bool {.noSideEffect,
    importcpp: "OppositeFaces", header: "IntPatch_Intersection.hxx".}
proc nbPnts*(this: IntPatchIntersection): int {.noSideEffect, importcpp: "NbPnts",
    header: "IntPatch_Intersection.hxx".}
proc point*(this: IntPatchIntersection; index: int): IntPatchPoint {.noSideEffect,
    importcpp: "Point", header: "IntPatch_Intersection.hxx".}
proc nbLines*(this: IntPatchIntersection): int {.noSideEffect, importcpp: "NbLines",
    header: "IntPatch_Intersection.hxx".}
proc line*(this: IntPatchIntersection; index: int): Handle[IntPatchLine] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_Intersection.hxx".}
proc sequenceOfLine*(this: IntPatchIntersection): IntPatchSequenceOfLine {.
    noSideEffect, importcpp: "SequenceOfLine", header: "IntPatch_Intersection.hxx".}
proc dump*(this: IntPatchIntersection; mode: int; s1: Handle[Adaptor3dHSurface];
          d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
          d2: Handle[Adaptor3dTopolTool]) {.noSideEffect, importcpp: "Dump",
    header: "IntPatch_Intersection.hxx".}
