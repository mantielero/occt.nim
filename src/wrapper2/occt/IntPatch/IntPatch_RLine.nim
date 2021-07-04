##  Created on: 1992-04-06
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  IntPatch_SequenceOfPoint, IntPatch_PointLine, ../IntSurf/IntSurf_LineOn2S,
  ../IntSurf/IntSurf_Situation, ../IntSurf/IntSurf_TypeTrans

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntPatch_RLine"
discard "forward decl of IntPatch_RLine"
type
  Handle_IntPatch_RLine* = handle[IntPatch_RLine]

## ! Implementation of an intersection line described by a
## ! restriction line on one of the surfaces.

type
  IntPatch_RLine* {.importcpp: "IntPatch_RLine", header: "IntPatch_RLine.hxx", bycopy.} = object of IntPatch_PointLine ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## restriction
                                                                                                             ## as
                                                                                                             ## an
                                                                                                             ## intersection
                                                                                                             ## line
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## when
                                                                                                             ## the
                                                                                                             ## transitions
                                                                                                             ## are
                                                                                                             ## In
                                                                                                             ## or
                                                                                                             ## Out.


proc constructIntPatch_RLine*(Tang: Standard_Boolean; Trans1: IntSurf_TypeTrans;
                             Trans2: IntSurf_TypeTrans): IntPatch_RLine {.
    constructor, importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc constructIntPatch_RLine*(Tang: Standard_Boolean; Situ1: IntSurf_Situation;
                             Situ2: IntSurf_Situation): IntPatch_RLine {.
    constructor, importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc constructIntPatch_RLine*(Tang: Standard_Boolean): IntPatch_RLine {.constructor,
    importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc AddVertex*(this: var IntPatch_RLine; Pnt: IntPatch_Point;
               theIsPrepend: Standard_Boolean = Standard_False) {.
    importcpp: "AddVertex", header: "IntPatch_RLine.hxx".}
proc Replace*(this: var IntPatch_RLine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "Replace", header: "IntPatch_RLine.hxx".}
proc SetFirstPoint*(this: var IntPatch_RLine; IndFirst: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPatch_RLine.hxx".}
proc SetLastPoint*(this: var IntPatch_RLine; IndLast: Standard_Integer) {.
    importcpp: "SetLastPoint", header: "IntPatch_RLine.hxx".}
proc Add*(this: var IntPatch_RLine; L: handle[IntSurf_LineOn2S]) {.importcpp: "Add",
    header: "IntPatch_RLine.hxx".}
proc IsArcOnS1*(this: IntPatch_RLine): Standard_Boolean {.noSideEffect,
    importcpp: "IsArcOnS1", header: "IntPatch_RLine.hxx".}
proc IsArcOnS2*(this: IntPatch_RLine): Standard_Boolean {.noSideEffect,
    importcpp: "IsArcOnS2", header: "IntPatch_RLine.hxx".}
proc SetArcOnS1*(this: var IntPatch_RLine; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetArcOnS1", header: "IntPatch_RLine.hxx".}
proc SetArcOnS2*(this: var IntPatch_RLine; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetArcOnS2", header: "IntPatch_RLine.hxx".}
proc SetParamOnS1*(this: var IntPatch_RLine; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "SetParamOnS1", header: "IntPatch_RLine.hxx".}
proc SetParamOnS2*(this: var IntPatch_RLine; p1: var Standard_Real;
                  p2: var Standard_Real) {.importcpp: "SetParamOnS2",
                                        header: "IntPatch_RLine.hxx".}
proc ArcOnS1*(this: IntPatch_RLine): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "ArcOnS1", header: "IntPatch_RLine.hxx".}
proc ArcOnS2*(this: IntPatch_RLine): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "ArcOnS2", header: "IntPatch_RLine.hxx".}
proc ParamOnS1*(this: IntPatch_RLine; p1: var Standard_Real; p2: var Standard_Real) {.
    noSideEffect, importcpp: "ParamOnS1", header: "IntPatch_RLine.hxx".}
proc ParamOnS2*(this: IntPatch_RLine; p1: var Standard_Real; p2: var Standard_Real) {.
    noSideEffect, importcpp: "ParamOnS2", header: "IntPatch_RLine.hxx".}
proc HasFirstPoint*(this: IntPatch_RLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_RLine.hxx".}
proc HasLastPoint*(this: IntPatch_RLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_RLine.hxx".}
proc FirstPoint*(this: IntPatch_RLine): IntPatch_Point {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_RLine.hxx".}
proc LastPoint*(this: IntPatch_RLine): IntPatch_Point {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_RLine.hxx".}
proc NbVertex*(this: IntPatch_RLine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_RLine.hxx".}
proc Vertex*(this: IntPatch_RLine; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_RLine.hxx".}
proc ChangeVertex*(this: var IntPatch_RLine; Index: Standard_Integer): var IntPatch_Point {.
    importcpp: "ChangeVertex", header: "IntPatch_RLine.hxx".}
proc RemoveVertex*(this: var IntPatch_RLine; theIndex: Standard_Integer) {.
    importcpp: "RemoveVertex", header: "IntPatch_RLine.hxx".}
proc HasPolygon*(this: IntPatch_RLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasPolygon", header: "IntPatch_RLine.hxx".}
proc NbPnts*(this: IntPatch_RLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_RLine.hxx".}
proc Point*(this: IntPatch_RLine; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point", header: "IntPatch_RLine.hxx".}
proc SetPoint*(this: var IntPatch_RLine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "SetPoint", header: "IntPatch_RLine.hxx".}
proc ComputeVertexParameters*(this: var IntPatch_RLine; Tol: Standard_Real) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_RLine.hxx".}
proc Curve*(this: IntPatch_RLine): handle[IntSurf_LineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_RLine.hxx".}
proc IsOutSurf1Box*(this: IntPatch_RLine; theP: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf1Box", header: "IntPatch_RLine.hxx".}
proc IsOutSurf2Box*(this: IntPatch_RLine; theP: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf2Box", header: "IntPatch_RLine.hxx".}
proc IsOutBox*(this: IntPatch_RLine; theP: gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_RLine.hxx".}
proc ClearVertexes*(this: var IntPatch_RLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_RLine.hxx".}
proc SetCurve*(this: var IntPatch_RLine; theNewCurve: handle[IntSurf_LineOn2S]) {.
    importcpp: "SetCurve", header: "IntPatch_RLine.hxx".}
proc Dump*(this: IntPatch_RLine; theMode: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPatch_RLine.hxx".}
type
  IntPatch_RLinebase_type* = IntPatch_PointLine

proc get_type_name*(): cstring {.importcpp: "IntPatch_RLine::get_type_name(@)",
                              header: "IntPatch_RLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_RLine::get_type_descriptor(@)",
    header: "IntPatch_RLine.hxx".}
proc DynamicType*(this: IntPatch_RLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_RLine.hxx".}