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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, TopOpeBRep_TypeLineCurve, TopOpeBRep_WPointInter,
  TopOpeBRep_HArray1OfVPointInter, ../TopoDS/TopoDS_Face,
  ../TopOpeBRepDS/TopOpeBRepDS_Transition, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Real, ../IntSurf/IntSurf_TypeTrans,
  ../IntSurf/IntSurf_Situation, ../Standard/Standard_OStream

discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_ALine"
discard "forward decl of IntPatch_RLine"
discard "forward decl of IntPatch_WLine"
discard "forward decl of IntPatch_GLine"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_WPointInter"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopOpeBRep_Bipoint"
type
  TopOpeBRep_LineInter* {.importcpp: "TopOpeBRep_LineInter",
                         header: "TopOpeBRep_LineInter.hxx", bycopy.} = object


proc constructTopOpeBRep_LineInter*(): TopOpeBRep_LineInter {.constructor,
    importcpp: "TopOpeBRep_LineInter(@)", header: "TopOpeBRep_LineInter.hxx".}
proc SetLine*(this: var TopOpeBRep_LineInter; L: handle[IntPatch_Line];
             S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface) {.
    importcpp: "SetLine", header: "TopOpeBRep_LineInter.hxx".}
proc SetFaces*(this: var TopOpeBRep_LineInter; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "TopOpeBRep_LineInter.hxx".}
proc TypeLineCurve*(this: TopOpeBRep_LineInter): TopOpeBRep_TypeLineCurve {.
    noSideEffect, importcpp: "TypeLineCurve", header: "TopOpeBRep_LineInter.hxx".}
proc NbVPoint*(this: TopOpeBRep_LineInter): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoint", header: "TopOpeBRep_LineInter.hxx".}
proc VPoint*(this: TopOpeBRep_LineInter; I: Standard_Integer): TopOpeBRep_VPointInter {.
    noSideEffect, importcpp: "VPoint", header: "TopOpeBRep_LineInter.hxx".}
proc ChangeVPoint*(this: var TopOpeBRep_LineInter; I: Standard_Integer): var TopOpeBRep_VPointInter {.
    importcpp: "ChangeVPoint", header: "TopOpeBRep_LineInter.hxx".}
proc SetINL*(this: var TopOpeBRep_LineInter) {.importcpp: "SetINL",
    header: "TopOpeBRep_LineInter.hxx".}
proc INL*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "INL", header: "TopOpeBRep_LineInter.hxx".}
proc SetIsVClosed*(this: var TopOpeBRep_LineInter) {.importcpp: "SetIsVClosed",
    header: "TopOpeBRep_LineInter.hxx".}
proc IsVClosed*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "TopOpeBRep_LineInter.hxx".}
proc SetOK*(this: var TopOpeBRep_LineInter; B: Standard_Boolean) {.importcpp: "SetOK",
    header: "TopOpeBRep_LineInter.hxx".}
proc OK*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "OK", header: "TopOpeBRep_LineInter.hxx".}
proc SetHasVPonR*(this: var TopOpeBRep_LineInter) {.importcpp: "SetHasVPonR",
    header: "TopOpeBRep_LineInter.hxx".}
proc HasVPonR*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "HasVPonR", header: "TopOpeBRep_LineInter.hxx".}
proc SetVPBounds*(this: var TopOpeBRep_LineInter) {.importcpp: "SetVPBounds",
    header: "TopOpeBRep_LineInter.hxx".}
proc VPBounds*(this: TopOpeBRep_LineInter; f: var Standard_Integer;
              l: var Standard_Integer; n: var Standard_Integer) {.noSideEffect,
    importcpp: "VPBounds", header: "TopOpeBRep_LineInter.hxx".}
proc IsPeriodic*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "TopOpeBRep_LineInter.hxx".}
proc Period*(this: TopOpeBRep_LineInter): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "TopOpeBRep_LineInter.hxx".}
proc Bounds*(this: TopOpeBRep_LineInter; f: var Standard_Real; l: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "TopOpeBRep_LineInter.hxx".}
proc HasVInternal*(this: var TopOpeBRep_LineInter): Standard_Boolean {.
    importcpp: "HasVInternal", header: "TopOpeBRep_LineInter.hxx".}
proc NbWPoint*(this: TopOpeBRep_LineInter): Standard_Integer {.noSideEffect,
    importcpp: "NbWPoint", header: "TopOpeBRep_LineInter.hxx".}
proc WPoint*(this: var TopOpeBRep_LineInter; I: Standard_Integer): TopOpeBRep_WPointInter {.
    importcpp: "WPoint", header: "TopOpeBRep_LineInter.hxx".}
proc TransitionOnS1*(this: TopOpeBRep_LineInter): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS1", header: "TopOpeBRep_LineInter.hxx".}
proc TransitionOnS2*(this: TopOpeBRep_LineInter): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS2", header: "TopOpeBRep_LineInter.hxx".}
proc SituationS1*(this: TopOpeBRep_LineInter): IntSurf_Situation {.noSideEffect,
    importcpp: "SituationS1", header: "TopOpeBRep_LineInter.hxx".}
proc SituationS2*(this: TopOpeBRep_LineInter): IntSurf_Situation {.noSideEffect,
    importcpp: "SituationS2", header: "TopOpeBRep_LineInter.hxx".}
proc Curve*(this: TopOpeBRep_LineInter): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRep_LineInter.hxx".}
proc Curve*(this: TopOpeBRep_LineInter; parmin: Standard_Real; parmax: Standard_Real): handle[
    Geom_Curve] {.noSideEffect, importcpp: "Curve",
                 header: "TopOpeBRep_LineInter.hxx".}
proc Arc*(this: TopOpeBRep_LineInter): TopoDS_Shape {.noSideEffect, importcpp: "Arc",
    header: "TopOpeBRep_LineInter.hxx".}
proc ArcIsEdge*(this: TopOpeBRep_LineInter; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ArcIsEdge", header: "TopOpeBRep_LineInter.hxx".}
proc LineW*(this: TopOpeBRep_LineInter): handle[IntPatch_WLine] {.noSideEffect,
    importcpp: "LineW", header: "TopOpeBRep_LineInter.hxx".}
proc LineG*(this: TopOpeBRep_LineInter): handle[IntPatch_GLine] {.noSideEffect,
    importcpp: "LineG", header: "TopOpeBRep_LineInter.hxx".}
proc LineR*(this: TopOpeBRep_LineInter): handle[IntPatch_RLine] {.noSideEffect,
    importcpp: "LineR", header: "TopOpeBRep_LineInter.hxx".}
proc HasFirstPoint*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "TopOpeBRep_LineInter.hxx".}
proc HasLastPoint*(this: TopOpeBRep_LineInter): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "TopOpeBRep_LineInter.hxx".}
proc ComputeFaceFaceTransition*(this: var TopOpeBRep_LineInter) {.
    importcpp: "ComputeFaceFaceTransition", header: "TopOpeBRep_LineInter.hxx".}
proc FaceFaceTransition*(this: TopOpeBRep_LineInter; I: Standard_Integer): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_LineInter.hxx".}
proc Index*(this: var TopOpeBRep_LineInter; I: Standard_Integer) {.importcpp: "Index",
    header: "TopOpeBRep_LineInter.hxx".}
proc Index*(this: TopOpeBRep_LineInter): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_LineInter.hxx".}
proc DumpType*(this: TopOpeBRep_LineInter) {.noSideEffect, importcpp: "DumpType",
    header: "TopOpeBRep_LineInter.hxx".}
proc DumpVPoint*(this: TopOpeBRep_LineInter; I: Standard_Integer;
                s1: TCollection_AsciiString; s2: TCollection_AsciiString) {.
    noSideEffect, importcpp: "DumpVPoint", header: "TopOpeBRep_LineInter.hxx".}
proc DumpBipoint*(this: TopOpeBRep_LineInter; B: TopOpeBRep_Bipoint;
                 s1: TCollection_AsciiString; s2: TCollection_AsciiString) {.
    noSideEffect, importcpp: "DumpBipoint", header: "TopOpeBRep_LineInter.hxx".}
proc SetTraceIndex*(this: var TopOpeBRep_LineInter; exF1: Standard_Integer;
                   exF2: Standard_Integer) {.importcpp: "SetTraceIndex",
    header: "TopOpeBRep_LineInter.hxx".}
proc GetTraceIndex*(this: TopOpeBRep_LineInter; exF1: var Standard_Integer;
                   exF2: var Standard_Integer) {.noSideEffect,
    importcpp: "GetTraceIndex", header: "TopOpeBRep_LineInter.hxx".}
proc DumpLineTransitions*(this: TopOpeBRep_LineInter; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "DumpLineTransitions",
    header: "TopOpeBRep_LineInter.hxx".}