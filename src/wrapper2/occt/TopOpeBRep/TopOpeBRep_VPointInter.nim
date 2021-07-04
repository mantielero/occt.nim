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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRep_PThePointOfIntersection,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Real,
  ../IntSurf/IntSurf_Transition, ../Standard/Standard_OStream

discard "forward decl of Standard_DomainError"
discard "forward decl of IntPatch_Point"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRep_VPointInter* {.importcpp: "TopOpeBRep_VPointInter",
                           header: "TopOpeBRep_VPointInter.hxx", bycopy.} = object


proc constructTopOpeBRep_VPointInter*(): TopOpeBRep_VPointInter {.constructor,
    importcpp: "TopOpeBRep_VPointInter(@)", header: "TopOpeBRep_VPointInter.hxx".}
proc SetPoint*(this: var TopOpeBRep_VPointInter; P: IntPatch_Point) {.
    importcpp: "SetPoint", header: "TopOpeBRep_VPointInter.hxx".}
proc SetShapes*(this: var TopOpeBRep_VPointInter; I1: Standard_Integer;
               I2: Standard_Integer) {.importcpp: "SetShapes",
                                     header: "TopOpeBRep_VPointInter.hxx".}
proc GetShapes*(this: TopOpeBRep_VPointInter; I1: var Standard_Integer;
               I2: var Standard_Integer) {.noSideEffect, importcpp: "GetShapes",
                                        header: "TopOpeBRep_VPointInter.hxx".}
proc TransitionOnS1*(this: TopOpeBRep_VPointInter): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc TransitionOnS2*(this: TopOpeBRep_VPointInter): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc TransitionLineArc1*(this: TopOpeBRep_VPointInter): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionLineArc1",
    header: "TopOpeBRep_VPointInter.hxx".}
proc TransitionLineArc2*(this: TopOpeBRep_VPointInter): IntSurf_Transition {.
    noSideEffect, importcpp: "TransitionLineArc2",
    header: "TopOpeBRep_VPointInter.hxx".}
proc IsOnDomS1*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnDomS1", header: "TopOpeBRep_VPointInter.hxx".}
proc IsOnDomS2*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnDomS2", header: "TopOpeBRep_VPointInter.hxx".}
proc ParametersOnS1*(this: TopOpeBRep_VPointInter; u: var Standard_Real;
                    v: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc ParametersOnS2*(this: TopOpeBRep_VPointInter; u: var Standard_Real;
                    v: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc Value*(this: TopOpeBRep_VPointInter): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "TopOpeBRep_VPointInter.hxx".}
proc Tolerance*(this: TopOpeBRep_VPointInter): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_VPointInter.hxx".}
proc ArcOnS1*(this: TopOpeBRep_VPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "ArcOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc ArcOnS2*(this: TopOpeBRep_VPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "ArcOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc ParameterOnLine*(this: TopOpeBRep_VPointInter): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnLine", header: "TopOpeBRep_VPointInter.hxx".}
proc ParameterOnArc1*(this: TopOpeBRep_VPointInter): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc1", header: "TopOpeBRep_VPointInter.hxx".}
proc IsVertexOnS1*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertexOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc VertexOnS1*(this: TopOpeBRep_VPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "VertexOnS1", header: "TopOpeBRep_VPointInter.hxx".}
proc ParameterOnArc2*(this: TopOpeBRep_VPointInter): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc2", header: "TopOpeBRep_VPointInter.hxx".}
proc IsVertexOnS2*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertexOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc VertexOnS2*(this: TopOpeBRep_VPointInter): TopoDS_Shape {.noSideEffect,
    importcpp: "VertexOnS2", header: "TopOpeBRep_VPointInter.hxx".}
proc IsInternal*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsInternal", header: "TopOpeBRep_VPointInter.hxx".}
proc IsMultiple*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "TopOpeBRep_VPointInter.hxx".}
proc State*(this: TopOpeBRep_VPointInter; I: Standard_Integer): TopAbs_State {.
    noSideEffect, importcpp: "State", header: "TopOpeBRep_VPointInter.hxx".}
proc State*(this: var TopOpeBRep_VPointInter; S: TopAbs_State; I: Standard_Integer) {.
    importcpp: "State", header: "TopOpeBRep_VPointInter.hxx".}
proc EdgeON*(this: var TopOpeBRep_VPointInter; Eon: TopoDS_Shape; Par: Standard_Real;
            I: Standard_Integer) {.importcpp: "EdgeON",
                                 header: "TopOpeBRep_VPointInter.hxx".}
proc EdgeON*(this: TopOpeBRep_VPointInter; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "EdgeON", header: "TopOpeBRep_VPointInter.hxx".}
proc EdgeONParameter*(this: TopOpeBRep_VPointInter; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "EdgeONParameter",
    header: "TopOpeBRep_VPointInter.hxx".}
proc ShapeIndex*(this: TopOpeBRep_VPointInter): Standard_Integer {.noSideEffect,
    importcpp: "ShapeIndex", header: "TopOpeBRep_VPointInter.hxx".}
proc ShapeIndex*(this: var TopOpeBRep_VPointInter; I: Standard_Integer) {.
    importcpp: "ShapeIndex", header: "TopOpeBRep_VPointInter.hxx".}
proc Edge*(this: TopOpeBRep_VPointInter; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Edge", header: "TopOpeBRep_VPointInter.hxx".}
proc EdgeParameter*(this: TopOpeBRep_VPointInter; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "EdgeParameter", header: "TopOpeBRep_VPointInter.hxx".}
proc SurfaceParameters*(this: TopOpeBRep_VPointInter; I: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "SurfaceParameters",
    header: "TopOpeBRep_VPointInter.hxx".}
proc IsVertex*(this: TopOpeBRep_VPointInter; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsVertex", header: "TopOpeBRep_VPointInter.hxx".}
proc Vertex*(this: TopOpeBRep_VPointInter; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Vertex", header: "TopOpeBRep_VPointInter.hxx".}
proc UpdateKeep*(this: var TopOpeBRep_VPointInter) {.importcpp: "UpdateKeep",
    header: "TopOpeBRep_VPointInter.hxx".}
proc Keep*(this: TopOpeBRep_VPointInter): Standard_Boolean {.noSideEffect,
    importcpp: "Keep", header: "TopOpeBRep_VPointInter.hxx".}
proc ChangeKeep*(this: var TopOpeBRep_VPointInter; keep: Standard_Boolean) {.
    importcpp: "ChangeKeep", header: "TopOpeBRep_VPointInter.hxx".}
proc EqualpP*(this: TopOpeBRep_VPointInter; VP: TopOpeBRep_VPointInter): Standard_Boolean {.
    noSideEffect, importcpp: "EqualpP", header: "TopOpeBRep_VPointInter.hxx".}
proc ParonE*(this: TopOpeBRep_VPointInter; E: TopoDS_Edge; par: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "ParonE", header: "TopOpeBRep_VPointInter.hxx".}
proc Index*(this: var TopOpeBRep_VPointInter; I: Standard_Integer) {.
    importcpp: "Index", header: "TopOpeBRep_VPointInter.hxx".}
proc Index*(this: TopOpeBRep_VPointInter): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_VPointInter.hxx".}
proc Dump*(this: TopOpeBRep_VPointInter; I: Standard_Integer; F: TopoDS_Face;
          OS: var Standard_OStream): var Standard_OStream {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRep_VPointInter.hxx".}
proc Dump*(this: TopOpeBRep_VPointInter; F1: TopoDS_Face; F2: TopoDS_Face;
          OS: var Standard_OStream): var Standard_OStream {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRep_VPointInter.hxx".}
proc PThePointOfIntersectionDummy*(this: TopOpeBRep_VPointInter): TopOpeBRep_PThePointOfIntersection {.
    noSideEffect, importcpp: "PThePointOfIntersectionDummy",
    header: "TopOpeBRep_VPointInter.hxx".}