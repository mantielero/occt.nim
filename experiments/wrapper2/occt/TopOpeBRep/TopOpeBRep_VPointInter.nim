##  Created on: 1993-11-10
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Standard_DomainError"
discard "forward decl of IntPatch_Point"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepVPointInter* {.importcpp: "TopOpeBRep_VPointInter",
                          header: "TopOpeBRep_VPointInter.hxx", bycopy.} = object


proc constructTopOpeBRepVPointInter*(): TopOpeBRepVPointInter {.constructor,
    importcpp: "TopOpeBRep_VPointInter(@)", header: "TopOpeBRep_VPointInter.hxx".}
proc setPoint*(this: var TopOpeBRepVPointInter; p: IntPatchPoint) {.
    importcpp: "SetPoint", header: "TopOpeBRep_VPointInter.hxx".}
proc setShapes*(this: var TopOpeBRepVPointInter; i1: int; i2: int) {.
    importcpp: "SetShapes", header: "TopOpeBRep_VPointInter.hxx".}
proc getShapes*(this: TopOpeBRepVPointInter; i1: var int; i2: var int) {.noSideEffect,
    importcpp: "GetShapes", header: "TopOpeBRep_VPointInter.hxx".}
proc transitionOnS1*(this: TopOpeBRepVPointInter): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc transitionOnS2*(this: TopOpeBRepVPointInter): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc transitionLineArc1*(this: TopOpeBRepVPointInter): IntSurfTransition {.
    noSideEffect, importcpp: "TransitionLineArc1",
    header: "TopOpeBRep_VPointInter.hxx".}
proc transitionLineArc2*(this: TopOpeBRepVPointInter): IntSurfTransition {.
    noSideEffect, importcpp: "TransitionLineArc2",
    header: "TopOpeBRep_VPointInter.hxx".}
proc isOnDomS1*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsOnDomS1", header: "TopOpeBRep_VPointInter.hxx".}
proc isOnDomS2*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsOnDomS2", header: "TopOpeBRep_VPointInter.hxx".}
proc parametersOnS1*(this: TopOpeBRepVPointInter; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParametersOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc parametersOnS2*(this: TopOpeBRepVPointInter; u: var float; v: var float) {.
    noSideEffect, importcpp: "ParametersOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc value*(this: TopOpeBRepVPointInter): Pnt {.noSideEffect, importcpp: "Value",
    header: "TopOpeBRep_VPointInter.hxx".}
proc tolerance*(this: TopOpeBRepVPointInter): float {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_VPointInter.hxx".}
proc arcOnS1*(this: TopOpeBRepVPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "ArcOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc arcOnS2*(this: TopOpeBRepVPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "ArcOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc parameterOnLine*(this: TopOpeBRepVPointInter): float {.noSideEffect,
    importcpp: "ParameterOnLine", header: "TopOpeBRep_VPointInter.hxx".}
proc parameterOnArc1*(this: TopOpeBRepVPointInter): float {.noSideEffect,
    importcpp: "ParameterOnArc1", header: "TopOpeBRep_VPointInter.hxx".}
proc isVertexOnS1*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsVertexOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc vertexOnS1*(this: TopOpeBRepVPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "VertexOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc parameterOnArc2*(this: TopOpeBRepVPointInter): float {.noSideEffect,
    importcpp: "ParameterOnArc2", header: "TopOpeBRep_VPointInter.hxx".}
proc isVertexOnS2*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsVertexOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc vertexOnS2*(this: TopOpeBRepVPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "VertexOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc isInternal*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsInternal", header: "TopOpeBRep_VPointInter.hxx".}
proc isMultiple*(this: TopOpeBRepVPointInter): bool {.noSideEffect,
    importcpp: "IsMultiple", header: "TopOpeBRep_VPointInter.hxx".}
proc state*(this: TopOpeBRepVPointInter; i: int): TopAbsState {.noSideEffect,
    importcpp: "State", header: "TopOpeBRep_VPointInter.hxx".}
proc state*(this: var TopOpeBRepVPointInter; s: TopAbsState; i: int) {.
    importcpp: "State", header: "TopOpeBRep_VPointInter.hxx".}
proc edgeON*(this: var TopOpeBRepVPointInter; eon: TopoDS_Shape; par: float; i: int) {.
    importcpp: "EdgeON", header: "TopOpeBRep_VPointInter.hxx".}
proc edgeON*(this: TopOpeBRepVPointInter; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "EdgeON", header: "TopOpeBRep_VPointInter.hxx".}
proc edgeONParameter*(this: TopOpeBRepVPointInter; i: int): float {.noSideEffect,
    importcpp: "EdgeONParameter", header: "TopOpeBRep_VPointInter.hxx".}
proc shapeIndex*(this: TopOpeBRepVPointInter): int {.noSideEffect,
    importcpp: "ShapeIndex", header: "TopOpeBRep_VPointInter.hxx".}
proc shapeIndex*(this: var TopOpeBRepVPointInter; i: int) {.importcpp: "ShapeIndex",
    header: "TopOpeBRep_VPointInter.hxx".}
proc edge*(this: TopOpeBRepVPointInter; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRep_VPointInter.hxx".}
proc edgeParameter*(this: TopOpeBRepVPointInter; i: int): float {.noSideEffect,
    importcpp: "EdgeParameter", header: "TopOpeBRep_VPointInter.hxx".}
proc surfaceParameters*(this: TopOpeBRepVPointInter; i: int): Pnt2d {.noSideEffect,
    importcpp: "SurfaceParameters", header: "TopOpeBRep_VPointInter.hxx".}
proc isVertex*(this: TopOpeBRepVPointInter; i: int): bool {.noSideEffect,
    importcpp: "IsVertex", header: "TopOpeBRep_VPointInter.hxx".}
proc vertex*(this: TopOpeBRepVPointInter; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRep_VPointInter.hxx".}
proc updateKeep*(this: var TopOpeBRepVPointInter) {.importcpp: "UpdateKeep",
    header: "TopOpeBRep_VPointInter.hxx".}
proc keep*(this: TopOpeBRepVPointInter): bool {.noSideEffect, importcpp: "Keep",
    header: "TopOpeBRep_VPointInter.hxx".}
proc changeKeep*(this: var TopOpeBRepVPointInter; keep: bool) {.
    importcpp: "ChangeKeep", header: "TopOpeBRep_VPointInter.hxx".}
proc equalpP*(this: TopOpeBRepVPointInter; vp: TopOpeBRepVPointInter): bool {.
    noSideEffect, importcpp: "EqualpP", header: "TopOpeBRep_VPointInter.hxx".}
proc paronE*(this: TopOpeBRepVPointInter; e: TopoDS_Edge; par: var float): bool {.
    noSideEffect, importcpp: "ParonE", header: "TopOpeBRep_VPointInter.hxx".}
proc index*(this: var TopOpeBRepVPointInter; i: int) {.importcpp: "Index",
    header: "TopOpeBRep_VPointInter.hxx".}
proc index*(this: TopOpeBRepVPointInter): int {.noSideEffect, importcpp: "Index",
    header: "TopOpeBRep_VPointInter.hxx".}
proc dump*(this: TopOpeBRepVPointInter; i: int; f: TopoDS_Face; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TopOpeBRep_VPointInter.hxx".}
proc dump*(this: TopOpeBRepVPointInter; f1: TopoDS_Face; f2: TopoDS_Face;
          os: var StandardOStream): var StandardOStream {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRep_VPointInter.hxx".}
proc pThePointOfIntersectionDummy*(this: TopOpeBRepVPointInter): TopOpeBRepPThePointOfIntersection {.
    noSideEffect, importcpp: "PThePointOfIntersectionDummy",
    header: "TopOpeBRep_VPointInter.hxx".}
