##  Created on: 1991-05-27
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Integer, IntPatch_SequenceOfPoint,
  ../Standard/Standard_Real, IntPatch_PointLine, ../IntSurf/IntSurf_LineOn2S,
  ../IntSurf/IntSurf_Situation, ../IntSurf/IntSurf_TypeTrans

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IntPatch_WLine"
discard "forward decl of IntPatch_WLine"
type
  Handle_IntPatch_WLine* = handle[IntPatch_WLine]

## ! Definition of set of points as a result of the intersection
## ! between 2 parametrised patches.

type
  IntPatch_WLine* {.importcpp: "IntPatch_WLine", header: "IntPatch_WLine.hxx", bycopy.} = object of IntPatch_PointLine ##
                                                                                                             ## !
                                                                                                             ## Enumeration
                                                                                                             ## of
                                                                                                             ## ways
                                                                                                             ## of
                                                                                                             ## WLine
                                                                                                             ## creation.
    ## ! identifies the way of <*this> creation

  IntPatch_WLineIntPatch_WLType* {.size: sizeof(cint),
                                  importcpp: "IntPatch_WLine::IntPatch_WLType",
                                  header: "IntPatch_WLine.hxx".} = enum
    IntPatch_WLUnknown, IntPatch_WLImpImp, IntPatch_WLImpPrm, IntPatch_WLPrmPrm


proc constructIntPatch_WLine*(Line: handle[IntSurf_LineOn2S];
                             Tang: Standard_Boolean; Trans1: IntSurf_TypeTrans;
                             Trans2: IntSurf_TypeTrans): IntPatch_WLine {.
    constructor, importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc constructIntPatch_WLine*(Line: handle[IntSurf_LineOn2S];
                             Tang: Standard_Boolean; Situ1: IntSurf_Situation;
                             Situ2: IntSurf_Situation): IntPatch_WLine {.
    constructor, importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc constructIntPatch_WLine*(Line: handle[IntSurf_LineOn2S];
                             Tang: Standard_Boolean): IntPatch_WLine {.constructor,
    importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc AddVertex*(this: var IntPatch_WLine; Pnt: IntPatch_Point;
               theIsPrepend: Standard_Boolean = Standard_False) {.
    importcpp: "AddVertex", header: "IntPatch_WLine.hxx".}
proc SetPoint*(this: var IntPatch_WLine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "SetPoint", header: "IntPatch_WLine.hxx".}
proc Replace*(this: var IntPatch_WLine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "Replace", header: "IntPatch_WLine.hxx".}
proc SetFirstPoint*(this: var IntPatch_WLine; IndFirst: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPatch_WLine.hxx".}
proc SetLastPoint*(this: var IntPatch_WLine; IndLast: Standard_Integer) {.
    importcpp: "SetLastPoint", header: "IntPatch_WLine.hxx".}
proc NbPnts*(this: IntPatch_WLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_WLine.hxx".}
proc Point*(this: IntPatch_WLine; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point", header: "IntPatch_WLine.hxx".}
proc HasFirstPoint*(this: IntPatch_WLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_WLine.hxx".}
proc HasLastPoint*(this: IntPatch_WLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_WLine.hxx".}
proc FirstPoint*(this: IntPatch_WLine): IntPatch_Point {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_WLine.hxx".}
proc LastPoint*(this: IntPatch_WLine): IntPatch_Point {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_WLine.hxx".}
proc FirstPoint*(this: IntPatch_WLine; Indfirst: var Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "FirstPoint", header: "IntPatch_WLine.hxx".}
proc LastPoint*(this: IntPatch_WLine; Indlast: var Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "LastPoint", header: "IntPatch_WLine.hxx".}
proc NbVertex*(this: IntPatch_WLine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_WLine.hxx".}
proc Vertex*(this: IntPatch_WLine; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_WLine.hxx".}
proc ChangeVertex*(this: var IntPatch_WLine; Index: Standard_Integer): var IntPatch_Point {.
    importcpp: "ChangeVertex", header: "IntPatch_WLine.hxx".}
proc ComputeVertexParameters*(this: var IntPatch_WLine; Tol: Standard_Real) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_WLine.hxx".}
proc Curve*(this: IntPatch_WLine): handle[IntSurf_LineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_WLine.hxx".}
proc IsOutSurf1Box*(this: IntPatch_WLine; theP: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf1Box", header: "IntPatch_WLine.hxx".}
proc IsOutSurf2Box*(this: IntPatch_WLine; theP: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf2Box", header: "IntPatch_WLine.hxx".}
proc IsOutBox*(this: IntPatch_WLine; theP: gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_WLine.hxx".}
proc SetPeriod*(this: var IntPatch_WLine; pu1: Standard_Real; pv1: Standard_Real;
               pu2: Standard_Real; pv2: Standard_Real) {.importcpp: "SetPeriod",
    header: "IntPatch_WLine.hxx".}
proc U1Period*(this: IntPatch_WLine): Standard_Real {.noSideEffect,
    importcpp: "U1Period", header: "IntPatch_WLine.hxx".}
proc V1Period*(this: IntPatch_WLine): Standard_Real {.noSideEffect,
    importcpp: "V1Period", header: "IntPatch_WLine.hxx".}
proc U2Period*(this: IntPatch_WLine): Standard_Real {.noSideEffect,
    importcpp: "U2Period", header: "IntPatch_WLine.hxx".}
proc V2Period*(this: IntPatch_WLine): Standard_Real {.noSideEffect,
    importcpp: "V2Period", header: "IntPatch_WLine.hxx".}
proc SetArcOnS1*(this: var IntPatch_WLine; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetArcOnS1", header: "IntPatch_WLine.hxx".}
proc HasArcOnS1*(this: IntPatch_WLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasArcOnS1", header: "IntPatch_WLine.hxx".}
proc GetArcOnS1*(this: IntPatch_WLine): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "GetArcOnS1", header: "IntPatch_WLine.hxx".}
proc SetArcOnS2*(this: var IntPatch_WLine; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetArcOnS2", header: "IntPatch_WLine.hxx".}
proc HasArcOnS2*(this: IntPatch_WLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasArcOnS2", header: "IntPatch_WLine.hxx".}
proc GetArcOnS2*(this: IntPatch_WLine): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "GetArcOnS2", header: "IntPatch_WLine.hxx".}
proc ClearVertexes*(this: var IntPatch_WLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_WLine.hxx".}
proc RemoveVertex*(this: var IntPatch_WLine; theIndex: Standard_Integer) {.
    importcpp: "RemoveVertex", header: "IntPatch_WLine.hxx".}
proc InsertVertexBefore*(this: var IntPatch_WLine; theIndex: Standard_Integer;
                        thePnt: IntPatch_Point) {.importcpp: "InsertVertexBefore",
    header: "IntPatch_WLine.hxx".}
proc Dump*(this: IntPatch_WLine; theMode: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPatch_WLine.hxx".}
proc EnablePurging*(this: var IntPatch_WLine; theIsEnabled: Standard_Boolean) {.
    importcpp: "EnablePurging", header: "IntPatch_WLine.hxx".}
proc IsPurgingAllowed*(this: var IntPatch_WLine): Standard_Boolean {.
    importcpp: "IsPurgingAllowed", header: "IntPatch_WLine.hxx".}
proc GetCreatingWay*(this: IntPatch_WLine): IntPatch_WLineIntPatch_WLType {.
    noSideEffect, importcpp: "GetCreatingWay", header: "IntPatch_WLine.hxx".}
proc SetCreatingWayInfo*(this: var IntPatch_WLine;
                        theAlgo: IntPatch_WLineIntPatch_WLType) {.
    importcpp: "SetCreatingWayInfo", header: "IntPatch_WLine.hxx".}
type
  IntPatch_WLinebase_type* = IntPatch_PointLine

proc get_type_name*(): cstring {.importcpp: "IntPatch_WLine::get_type_name(@)",
                              header: "IntPatch_WLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_WLine::get_type_descriptor(@)",
    header: "IntPatch_WLine.hxx".}
proc DynamicType*(this: IntPatch_WLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_WLine.hxx".}