##  Created on: 1993-01-28
##  Created by: Laurent BUCHARD
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
  IntPatch_SequenceOfLine, ../Standard/Standard_Real,
  ../IntSurf/IntSurf_ListOfPntOn2S, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_PrmPrmIntersection_T3Bits"
discard "forward decl of IntSurf_LineOn2S"
type
  IntPatch_PrmPrmIntersection* {.importcpp: "IntPatch_PrmPrmIntersection",
                                header: "IntPatch_PrmPrmIntersection.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## Constructor


proc constructIntPatch_PrmPrmIntersection*(): IntPatch_PrmPrmIntersection {.
    constructor, importcpp: "IntPatch_PrmPrmIntersection(@)",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface]; Polyhedron1: IntPatch_Polyhedron;
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface]; Polyhedron2: IntPatch_Polyhedron;
             Domain2: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real) {.importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface]; Polyhedron1: IntPatch_Polyhedron;
             Domain1: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real) {.importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface];
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface];
             Domain2: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real; ClearFlag: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface];
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface];
             Domain2: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real; ListOfPnts: var IntSurf_ListOfPntOn2S) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface];
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface];
             Domain2: handle[Adaptor3d_TopolTool]; U1: Standard_Real;
             V1: Standard_Real; U2: Standard_Real; V2: Standard_Real;
             TolTangency: Standard_Real; Epsilon: Standard_Real;
             Deflection: Standard_Real; Increment: Standard_Real) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface];
             Domain1: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real) {.importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface];
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface]; Polyhedron2: IntPatch_Polyhedron;
             Domain2: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real) {.importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_PrmPrmIntersection;
             Caro1: handle[Adaptor3d_HSurface]; Polyhedron1: IntPatch_Polyhedron;
             Domain1: handle[Adaptor3d_TopolTool];
             Caro2: handle[Adaptor3d_HSurface];
             Domain2: handle[Adaptor3d_TopolTool]; TolTangency: Standard_Real;
             Epsilon: Standard_Real; Deflection: Standard_Real;
             Increment: Standard_Real) {.importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc IsDone*(this: IntPatch_PrmPrmIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_PrmPrmIntersection.hxx".}
proc IsEmpty*(this: IntPatch_PrmPrmIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_PrmPrmIntersection.hxx".}
proc NbLines*(this: IntPatch_PrmPrmIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Line*(this: IntPatch_PrmPrmIntersection; Index: Standard_Integer): handle[
    IntPatch_Line] {.noSideEffect, importcpp: "Line",
                    header: "IntPatch_PrmPrmIntersection.hxx".}
proc NewLine*(this: IntPatch_PrmPrmIntersection; Caro1: handle[Adaptor3d_HSurface];
             Caro2: handle[Adaptor3d_HSurface]; IndexLine: Standard_Integer;
             LowPoint: Standard_Integer; HighPoint: Standard_Integer;
             NbPoints: Standard_Integer): handle[IntPatch_Line] {.noSideEffect,
    importcpp: "NewLine", header: "IntPatch_PrmPrmIntersection.hxx".}
proc GrilleInteger*(this: IntPatch_PrmPrmIntersection; ix: Standard_Integer;
                   iy: Standard_Integer; iz: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GrilleInteger",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc IntegerGrille*(this: IntPatch_PrmPrmIntersection; t: Standard_Integer;
                   ix: var Standard_Integer; iy: var Standard_Integer;
                   iz: var Standard_Integer) {.noSideEffect,
    importcpp: "IntegerGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc DansGrille*(this: IntPatch_PrmPrmIntersection; t: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "DansGrille",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc NbPointsGrille*(this: IntPatch_PrmPrmIntersection): Standard_Integer {.
    noSideEffect, importcpp: "NbPointsGrille",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc RemplitLin*(this: IntPatch_PrmPrmIntersection; x1: Standard_Integer;
                y1: Standard_Integer; z1: Standard_Integer; x2: Standard_Integer;
                y2: Standard_Integer; z2: Standard_Integer;
                Map: var IntPatch_PrmPrmIntersection_T3Bits) {.noSideEffect,
    importcpp: "RemplitLin", header: "IntPatch_PrmPrmIntersection.hxx".}
proc RemplitTri*(this: IntPatch_PrmPrmIntersection; x1: Standard_Integer;
                y1: Standard_Integer; z1: Standard_Integer; x2: Standard_Integer;
                y2: Standard_Integer; z2: Standard_Integer; x3: Standard_Integer;
                y3: Standard_Integer; z3: Standard_Integer;
                Map: var IntPatch_PrmPrmIntersection_T3Bits) {.noSideEffect,
    importcpp: "RemplitTri", header: "IntPatch_PrmPrmIntersection.hxx".}
proc Remplit*(this: IntPatch_PrmPrmIntersection; a: Standard_Integer;
             b: Standard_Integer; c: Standard_Integer;
             Map: var IntPatch_PrmPrmIntersection_T3Bits) {.noSideEffect,
    importcpp: "Remplit", header: "IntPatch_PrmPrmIntersection.hxx".}
proc CodeReject*(this: IntPatch_PrmPrmIntersection; x1: Standard_Real;
                y1: Standard_Real; z1: Standard_Real; x2: Standard_Real;
                y2: Standard_Real; z2: Standard_Real; x3: Standard_Real;
                y3: Standard_Real; z3: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "CodeReject",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc PointDepart*(this: IntPatch_PrmPrmIntersection;
                 LineOn2S: var handle[IntSurf_LineOn2S];
                 S1: handle[Adaptor3d_HSurface]; SU1: Standard_Integer;
                 SV1: Standard_Integer; S2: handle[Adaptor3d_HSurface];
                 SU2: Standard_Integer; SV2: Standard_Integer) {.noSideEffect,
    importcpp: "PointDepart", header: "IntPatch_PrmPrmIntersection.hxx".}