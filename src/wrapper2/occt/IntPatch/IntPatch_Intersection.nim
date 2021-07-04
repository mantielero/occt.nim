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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntPatch_SequenceOfPoint, IntPatch_SequenceOfLine, ../Standard/Standard_Real,
  ../IntSurf/IntSurf_ListOfPntOn2S, ../GeomAbs/GeomAbs_SurfaceType,
  ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_Line"
type
  IntPatch_Intersection* {.importcpp: "IntPatch_Intersection",
                          header: "IntPatch_Intersection.hxx", bycopy.} = object


proc constructIntPatch_Intersection*(): IntPatch_Intersection {.constructor,
    importcpp: "IntPatch_Intersection(@)", header: "IntPatch_Intersection.hxx".}
proc constructIntPatch_Intersection*(S1: handle[Adaptor3d_HSurface];
                                    D1: handle[Adaptor3d_TopolTool];
                                    S2: handle[Adaptor3d_HSurface];
                                    D2: handle[Adaptor3d_TopolTool];
                                    TolArc: Standard_Real; TolTang: Standard_Real): IntPatch_Intersection {.
    constructor, importcpp: "IntPatch_Intersection(@)",
    header: "IntPatch_Intersection.hxx".}
proc constructIntPatch_Intersection*(S1: handle[Adaptor3d_HSurface];
                                    D1: handle[Adaptor3d_TopolTool];
                                    TolArc: Standard_Real; TolTang: Standard_Real): IntPatch_Intersection {.
    constructor, importcpp: "IntPatch_Intersection(@)",
    header: "IntPatch_Intersection.hxx".}
proc SetTolerances*(this: var IntPatch_Intersection; TolArc: Standard_Real;
                   TolTang: Standard_Real; UVMaxStep: Standard_Real;
                   Fleche: Standard_Real) {.importcpp: "SetTolerances",
    header: "IntPatch_Intersection.hxx".}
proc Perform*(this: var IntPatch_Intersection; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
             D2: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real;
             TolTang: Standard_Real; isGeomInt: Standard_Boolean = Standard_True;
             theIsReqToKeepRLine: Standard_Boolean = Standard_False;
             theIsReqToPostWLProc: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "IntPatch_Intersection.hxx".}
proc Perform*(this: var IntPatch_Intersection; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
             D2: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real;
             TolTang: Standard_Real; LOfPnts: var IntSurf_ListOfPntOn2S;
             isGeomInt: Standard_Boolean = Standard_True;
             theIsReqToKeepRLine: Standard_Boolean = Standard_False;
             theIsReqToPostWLProc: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "IntPatch_Intersection.hxx".}
proc Perform*(this: var IntPatch_Intersection; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
             D2: handle[Adaptor3d_TopolTool]; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; TolArc: Standard_Real;
             TolTang: Standard_Real) {.importcpp: "Perform",
                                     header: "IntPatch_Intersection.hxx".}
proc Perform*(this: var IntPatch_Intersection; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real;
             TolTang: Standard_Real) {.importcpp: "Perform",
                                     header: "IntPatch_Intersection.hxx".}
proc IsDone*(this: IntPatch_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_Intersection.hxx".}
proc IsEmpty*(this: IntPatch_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_Intersection.hxx".}
proc TangentFaces*(this: IntPatch_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "TangentFaces", header: "IntPatch_Intersection.hxx".}
proc OppositeFaces*(this: IntPatch_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "OppositeFaces", header: "IntPatch_Intersection.hxx".}
proc NbPnts*(this: IntPatch_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_Intersection.hxx".}
proc Point*(this: IntPatch_Intersection; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Point", header: "IntPatch_Intersection.hxx".}
proc NbLines*(this: IntPatch_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_Intersection.hxx".}
proc Line*(this: IntPatch_Intersection; Index: Standard_Integer): handle[
    IntPatch_Line] {.noSideEffect, importcpp: "Line",
                    header: "IntPatch_Intersection.hxx".}
proc SequenceOfLine*(this: IntPatch_Intersection): IntPatch_SequenceOfLine {.
    noSideEffect, importcpp: "SequenceOfLine", header: "IntPatch_Intersection.hxx".}
proc Dump*(this: IntPatch_Intersection; Mode: Standard_Integer;
          S1: handle[Adaptor3d_HSurface]; D1: handle[Adaptor3d_TopolTool];
          S2: handle[Adaptor3d_HSurface]; D2: handle[Adaptor3d_TopolTool]) {.
    noSideEffect, importcpp: "Dump", header: "IntPatch_Intersection.hxx".}