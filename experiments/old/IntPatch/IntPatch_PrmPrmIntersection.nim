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
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat;
             clearFlag: bool = true) {.importcpp: "Perform",
                                   header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat;
             listOfPnts: var IntSurfListOfPntOn2S) {.importcpp: "Perform",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; u1: cfloat; v1: cfloat; u2: cfloat;
             v2: cfloat; tolTangency: cfloat; epsilon: cfloat; deflection: cfloat;
             increment: cfloat) {.importcpp: "Perform",
                                header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface]; polyhedron2: IntPatchPolyhedron;
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: cfloat;
             epsilon: cfloat; deflection: cfloat; increment: cfloat) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc isDone*(this: IntPatchPrmPrmIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_PrmPrmIntersection.hxx".}
proc isEmpty*(this: IntPatchPrmPrmIntersection): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbLines*(this: IntPatchPrmPrmIntersection): cint {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_PrmPrmIntersection.hxx".}
proc line*(this: IntPatchPrmPrmIntersection; index: cint): Handle[IntPatchLine] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_PrmPrmIntersection.hxx".}
proc newLine*(this: IntPatchPrmPrmIntersection; caro1: Handle[Adaptor3dHSurface];
             caro2: Handle[Adaptor3dHSurface]; indexLine: cint; lowPoint: cint;
             highPoint: cint; nbPoints: cint): Handle[IntPatchLine] {.noSideEffect,
    importcpp: "NewLine", header: "IntPatch_PrmPrmIntersection.hxx".}
proc grilleInteger*(this: IntPatchPrmPrmIntersection; ix: cint; iy: cint; iz: cint): cint {.
    noSideEffect, importcpp: "GrilleInteger",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc integerGrille*(this: IntPatchPrmPrmIntersection; t: cint; ix: var cint;
                   iy: var cint; iz: var cint) {.noSideEffect,
    importcpp: "IntegerGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc dansGrille*(this: IntPatchPrmPrmIntersection; t: cint): cint {.noSideEffect,
    importcpp: "DansGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbPointsGrille*(this: IntPatchPrmPrmIntersection): cint {.noSideEffect,
    importcpp: "NbPointsGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitLin*(this: IntPatchPrmPrmIntersection; x1: cint; y1: cint; z1: cint;
                x2: cint; y2: cint; z2: cint;
                map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "RemplitLin", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitTri*(this: IntPatchPrmPrmIntersection; x1: cint; y1: cint; z1: cint;
                x2: cint; y2: cint; z2: cint; x3: cint; y3: cint; z3: cint;
                map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "RemplitTri", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplit*(this: IntPatchPrmPrmIntersection; a: cint; b: cint; c: cint;
             map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "Remplit", header: "IntPatch_PrmPrmIntersection.hxx".}
proc codeReject*(this: IntPatchPrmPrmIntersection; x1: cfloat; y1: cfloat; z1: cfloat;
                x2: cfloat; y2: cfloat; z2: cfloat; x3: cfloat; y3: cfloat; z3: cfloat): cint {.
    noSideEffect, importcpp: "CodeReject",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc pointDepart*(this: IntPatchPrmPrmIntersection;
                 lineOn2S: var Handle[IntSurfLineOn2S];
                 s1: Handle[Adaptor3dHSurface]; su1: cint; sv1: cint;
                 s2: Handle[Adaptor3dHSurface]; su2: cint; sv2: cint) {.noSideEffect,
    importcpp: "PointDepart", header: "IntPatch_PrmPrmIntersection.hxx".}

























