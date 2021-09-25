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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_PrmPrmIntersection_T3Bits"
discard "forward decl of IntSurf_LineOn2S"
type
  IntPatchPrmPrmIntersection* {.importcpp: "IntPatch_PrmPrmIntersection",
                               header: "IntPatch_PrmPrmIntersection.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## Constructor


proc constructIntPatchPrmPrmIntersection*(): IntPatchPrmPrmIntersection {.
    constructor, importcpp: "IntPatch_PrmPrmIntersection(@)",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface]; polyhedron2: IntPatchPolyhedron;
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float;
             clearFlag: bool = true) {.importcpp: "Perform",
                                   header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float;
             listOfPnts: var IntSurfListOfPntOn2S) {.importcpp: "Perform",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; u1: float; v1: float; u2: float;
             v2: float; tolTangency: float; epsilon: float; deflection: float;
             increment: float) {.importcpp: "Perform",
                               header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface]; polyhedron2: IntPatchPolyhedron;
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: float;
             epsilon: float; deflection: float; increment: float) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc isDone*(this: IntPatchPrmPrmIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_PrmPrmIntersection.hxx".}
proc isEmpty*(this: IntPatchPrmPrmIntersection): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbLines*(this: IntPatchPrmPrmIntersection): int {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_PrmPrmIntersection.hxx".}
proc line*(this: IntPatchPrmPrmIntersection; index: int): Handle[IntPatchLine] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_PrmPrmIntersection.hxx".}
proc newLine*(this: IntPatchPrmPrmIntersection; caro1: Handle[Adaptor3dHSurface];
             caro2: Handle[Adaptor3dHSurface]; indexLine: int; lowPoint: int;
             highPoint: int; nbPoints: int): Handle[IntPatchLine] {.noSideEffect,
    importcpp: "NewLine", header: "IntPatch_PrmPrmIntersection.hxx".}
proc grilleInteger*(this: IntPatchPrmPrmIntersection; ix: int; iy: int; iz: int): int {.
    noSideEffect, importcpp: "GrilleInteger",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc integerGrille*(this: IntPatchPrmPrmIntersection; t: int; ix: var int; iy: var int;
                   iz: var int) {.noSideEffect, importcpp: "IntegerGrille",
                               header: "IntPatch_PrmPrmIntersection.hxx".}
proc dansGrille*(this: IntPatchPrmPrmIntersection; t: int): int {.noSideEffect,
    importcpp: "DansGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbPointsGrille*(this: IntPatchPrmPrmIntersection): int {.noSideEffect,
    importcpp: "NbPointsGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitLin*(this: IntPatchPrmPrmIntersection; x1: int; y1: int; z1: int; x2: int;
                y2: int; z2: int; map: var IntPatchPrmPrmIntersectionT3Bits) {.
    noSideEffect, importcpp: "RemplitLin",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitTri*(this: IntPatchPrmPrmIntersection; x1: int; y1: int; z1: int; x2: int;
                y2: int; z2: int; x3: int; y3: int; z3: int;
                map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "RemplitTri", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplit*(this: IntPatchPrmPrmIntersection; a: int; b: int; c: int;
             map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "Remplit", header: "IntPatch_PrmPrmIntersection.hxx".}
proc codeReject*(this: IntPatchPrmPrmIntersection; x1: float; y1: float; z1: float;
                x2: float; y2: float; z2: float; x3: float; y3: float; z3: float): int {.
    noSideEffect, importcpp: "CodeReject",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc pointDepart*(this: IntPatchPrmPrmIntersection;
                 lineOn2S: var Handle[IntSurfLineOn2S];
                 s1: Handle[Adaptor3dHSurface]; su1: int; sv1: int;
                 s2: Handle[Adaptor3dHSurface]; su2: int; sv2: int) {.noSideEffect,
    importcpp: "PointDepart", header: "IntPatch_PrmPrmIntersection.hxx".}
