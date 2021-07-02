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
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal) {.importcpp: "Perform",
                                      header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal) {.importcpp: "Perform",
                                      header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal; clearFlag: StandardBoolean = standardTrue) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal; listOfPnts: var IntSurfListOfPntOn2S) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             tolTangency: StandardReal; epsilon: StandardReal;
             deflection: StandardReal; increment: StandardReal) {.
    importcpp: "Perform", header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal) {.importcpp: "Perform",
                                      header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface];
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface]; polyhedron2: IntPatchPolyhedron;
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal) {.importcpp: "Perform",
                                      header: "IntPatch_PrmPrmIntersection.hxx".}
proc perform*(this: var IntPatchPrmPrmIntersection;
             caro1: Handle[Adaptor3dHSurface]; polyhedron1: IntPatchPolyhedron;
             domain1: Handle[Adaptor3dTopolTool];
             caro2: Handle[Adaptor3dHSurface];
             domain2: Handle[Adaptor3dTopolTool]; tolTangency: StandardReal;
             epsilon: StandardReal; deflection: StandardReal;
             increment: StandardReal) {.importcpp: "Perform",
                                      header: "IntPatch_PrmPrmIntersection.hxx".}
proc isDone*(this: IntPatchPrmPrmIntersection): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_PrmPrmIntersection.hxx".}
proc isEmpty*(this: IntPatchPrmPrmIntersection): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbLines*(this: IntPatchPrmPrmIntersection): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_PrmPrmIntersection.hxx".}
proc line*(this: IntPatchPrmPrmIntersection; index: StandardInteger): Handle[
    IntPatchLine] {.noSideEffect, importcpp: "Line",
                   header: "IntPatch_PrmPrmIntersection.hxx".}
proc newLine*(this: IntPatchPrmPrmIntersection; caro1: Handle[Adaptor3dHSurface];
             caro2: Handle[Adaptor3dHSurface]; indexLine: StandardInteger;
             lowPoint: StandardInteger; highPoint: StandardInteger;
             nbPoints: StandardInteger): Handle[IntPatchLine] {.noSideEffect,
    importcpp: "NewLine", header: "IntPatch_PrmPrmIntersection.hxx".}
proc grilleInteger*(this: IntPatchPrmPrmIntersection; ix: StandardInteger;
                   iy: StandardInteger; iz: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "GrilleInteger",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc integerGrille*(this: IntPatchPrmPrmIntersection; t: StandardInteger;
                   ix: var StandardInteger; iy: var StandardInteger;
                   iz: var StandardInteger) {.noSideEffect,
    importcpp: "IntegerGrille", header: "IntPatch_PrmPrmIntersection.hxx".}
proc dansGrille*(this: IntPatchPrmPrmIntersection; t: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "DansGrille",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc nbPointsGrille*(this: IntPatchPrmPrmIntersection): StandardInteger {.
    noSideEffect, importcpp: "NbPointsGrille",
    header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitLin*(this: IntPatchPrmPrmIntersection; x1: StandardInteger;
                y1: StandardInteger; z1: StandardInteger; x2: StandardInteger;
                y2: StandardInteger; z2: StandardInteger;
                map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "RemplitLin", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplitTri*(this: IntPatchPrmPrmIntersection; x1: StandardInteger;
                y1: StandardInteger; z1: StandardInteger; x2: StandardInteger;
                y2: StandardInteger; z2: StandardInteger; x3: StandardInteger;
                y3: StandardInteger; z3: StandardInteger;
                map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "RemplitTri", header: "IntPatch_PrmPrmIntersection.hxx".}
proc remplit*(this: IntPatchPrmPrmIntersection; a: StandardInteger;
             b: StandardInteger; c: StandardInteger;
             map: var IntPatchPrmPrmIntersectionT3Bits) {.noSideEffect,
    importcpp: "Remplit", header: "IntPatch_PrmPrmIntersection.hxx".}
proc codeReject*(this: IntPatchPrmPrmIntersection; x1: StandardReal;
                y1: StandardReal; z1: StandardReal; x2: StandardReal;
                y2: StandardReal; z2: StandardReal; x3: StandardReal;
                y3: StandardReal; z3: StandardReal): StandardInteger {.noSideEffect,
    importcpp: "CodeReject", header: "IntPatch_PrmPrmIntersection.hxx".}
proc pointDepart*(this: IntPatchPrmPrmIntersection;
                 lineOn2S: var Handle[IntSurfLineOn2S];
                 s1: Handle[Adaptor3dHSurface]; su1: StandardInteger;
                 sv1: StandardInteger; s2: Handle[Adaptor3dHSurface];
                 su2: StandardInteger; sv2: StandardInteger) {.noSideEffect,
    importcpp: "PointDepart", header: "IntPatch_PrmPrmIntersection.hxx".}

