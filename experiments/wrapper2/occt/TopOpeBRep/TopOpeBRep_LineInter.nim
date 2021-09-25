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
  TopOpeBRepLineInter* {.importcpp: "TopOpeBRep_LineInter",
                        header: "TopOpeBRep_LineInter.hxx", bycopy.} = object


proc constructTopOpeBRepLineInter*(): TopOpeBRepLineInter {.constructor,
    importcpp: "TopOpeBRep_LineInter(@)", header: "TopOpeBRep_LineInter.hxx".}
proc setLine*(this: var TopOpeBRepLineInter; L: Handle[IntPatchLine];
             s1: BRepAdaptorSurface; s2: BRepAdaptorSurface) {.importcpp: "SetLine",
    header: "TopOpeBRep_LineInter.hxx".}
proc setFaces*(this: var TopOpeBRepLineInter; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "TopOpeBRep_LineInter.hxx".}
proc typeLineCurve*(this: TopOpeBRepLineInter): TopOpeBRepTypeLineCurve {.
    noSideEffect, importcpp: "TypeLineCurve", header: "TopOpeBRep_LineInter.hxx".}
proc nbVPoint*(this: TopOpeBRepLineInter): int {.noSideEffect, importcpp: "NbVPoint",
    header: "TopOpeBRep_LineInter.hxx".}
proc vPoint*(this: TopOpeBRepLineInter; i: int): TopOpeBRepVPointInter {.noSideEffect,
    importcpp: "VPoint", header: "TopOpeBRep_LineInter.hxx".}
proc changeVPoint*(this: var TopOpeBRepLineInter; i: int): var TopOpeBRepVPointInter {.
    importcpp: "ChangeVPoint", header: "TopOpeBRep_LineInter.hxx".}
proc setINL*(this: var TopOpeBRepLineInter) {.importcpp: "SetINL",
    header: "TopOpeBRep_LineInter.hxx".}
proc inl*(this: TopOpeBRepLineInter): bool {.noSideEffect, importcpp: "INL",
    header: "TopOpeBRep_LineInter.hxx".}
proc setIsVClosed*(this: var TopOpeBRepLineInter) {.importcpp: "SetIsVClosed",
    header: "TopOpeBRep_LineInter.hxx".}
proc isVClosed*(this: TopOpeBRepLineInter): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "TopOpeBRep_LineInter.hxx".}
proc setOK*(this: var TopOpeBRepLineInter; b: bool) {.importcpp: "SetOK",
    header: "TopOpeBRep_LineInter.hxx".}
proc ok*(this: TopOpeBRepLineInter): bool {.noSideEffect, importcpp: "OK",
                                        header: "TopOpeBRep_LineInter.hxx".}
proc setHasVPonR*(this: var TopOpeBRepLineInter) {.importcpp: "SetHasVPonR",
    header: "TopOpeBRep_LineInter.hxx".}
proc hasVPonR*(this: TopOpeBRepLineInter): bool {.noSideEffect,
    importcpp: "HasVPonR", header: "TopOpeBRep_LineInter.hxx".}
proc setVPBounds*(this: var TopOpeBRepLineInter) {.importcpp: "SetVPBounds",
    header: "TopOpeBRep_LineInter.hxx".}
proc vPBounds*(this: TopOpeBRepLineInter; f: var int; l: var int; n: var int) {.
    noSideEffect, importcpp: "VPBounds", header: "TopOpeBRep_LineInter.hxx".}
proc isPeriodic*(this: TopOpeBRepLineInter): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "TopOpeBRep_LineInter.hxx".}
proc period*(this: TopOpeBRepLineInter): float {.noSideEffect, importcpp: "Period",
    header: "TopOpeBRep_LineInter.hxx".}
proc bounds*(this: TopOpeBRepLineInter; f: var float; l: var float) {.noSideEffect,
    importcpp: "Bounds", header: "TopOpeBRep_LineInter.hxx".}
proc hasVInternal*(this: var TopOpeBRepLineInter): bool {.importcpp: "HasVInternal",
    header: "TopOpeBRep_LineInter.hxx".}
proc nbWPoint*(this: TopOpeBRepLineInter): int {.noSideEffect, importcpp: "NbWPoint",
    header: "TopOpeBRep_LineInter.hxx".}
proc wPoint*(this: var TopOpeBRepLineInter; i: int): TopOpeBRepWPointInter {.
    importcpp: "WPoint", header: "TopOpeBRep_LineInter.hxx".}
proc transitionOnS1*(this: TopOpeBRepLineInter): IntSurfTypeTrans {.noSideEffect,
    importcpp: "TransitionOnS1", header: "TopOpeBRep_LineInter.hxx".}
proc transitionOnS2*(this: TopOpeBRepLineInter): IntSurfTypeTrans {.noSideEffect,
    importcpp: "TransitionOnS2", header: "TopOpeBRep_LineInter.hxx".}
proc situationS1*(this: TopOpeBRepLineInter): IntSurfSituation {.noSideEffect,
    importcpp: "SituationS1", header: "TopOpeBRep_LineInter.hxx".}
proc situationS2*(this: TopOpeBRepLineInter): IntSurfSituation {.noSideEffect,
    importcpp: "SituationS2", header: "TopOpeBRep_LineInter.hxx".}
proc curve*(this: TopOpeBRepLineInter): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRep_LineInter.hxx".}
proc curve*(this: TopOpeBRepLineInter; parmin: float; parmax: float): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRep_LineInter.hxx".}
proc arc*(this: TopOpeBRepLineInter): TopoDS_Shape {.noSideEffect, importcpp: "Arc",
    header: "TopOpeBRep_LineInter.hxx".}
proc arcIsEdge*(this: TopOpeBRepLineInter; i: int): bool {.noSideEffect,
    importcpp: "ArcIsEdge", header: "TopOpeBRep_LineInter.hxx".}
proc lineW*(this: TopOpeBRepLineInter): Handle[IntPatchWLine] {.noSideEffect,
    importcpp: "LineW", header: "TopOpeBRep_LineInter.hxx".}
proc lineG*(this: TopOpeBRepLineInter): Handle[IntPatchGLine] {.noSideEffect,
    importcpp: "LineG", header: "TopOpeBRep_LineInter.hxx".}
proc lineR*(this: TopOpeBRepLineInter): Handle[IntPatchRLine] {.noSideEffect,
    importcpp: "LineR", header: "TopOpeBRep_LineInter.hxx".}
proc hasFirstPoint*(this: TopOpeBRepLineInter): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "TopOpeBRep_LineInter.hxx".}
proc hasLastPoint*(this: TopOpeBRepLineInter): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "TopOpeBRep_LineInter.hxx".}
proc computeFaceFaceTransition*(this: var TopOpeBRepLineInter) {.
    importcpp: "ComputeFaceFaceTransition", header: "TopOpeBRep_LineInter.hxx".}
proc faceFaceTransition*(this: TopOpeBRepLineInter; i: int): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_LineInter.hxx".}
proc index*(this: var TopOpeBRepLineInter; i: int) {.importcpp: "Index",
    header: "TopOpeBRep_LineInter.hxx".}
proc index*(this: TopOpeBRepLineInter): int {.noSideEffect, importcpp: "Index",
    header: "TopOpeBRep_LineInter.hxx".}
proc dumpType*(this: TopOpeBRepLineInter) {.noSideEffect, importcpp: "DumpType",
    header: "TopOpeBRep_LineInter.hxx".}
proc dumpVPoint*(this: TopOpeBRepLineInter; i: int; s1: TCollectionAsciiString;
                s2: TCollectionAsciiString) {.noSideEffect,
    importcpp: "DumpVPoint", header: "TopOpeBRep_LineInter.hxx".}
proc dumpBipoint*(this: TopOpeBRepLineInter; b: TopOpeBRepBipoint;
                 s1: TCollectionAsciiString; s2: TCollectionAsciiString) {.
    noSideEffect, importcpp: "DumpBipoint", header: "TopOpeBRep_LineInter.hxx".}
proc setTraceIndex*(this: var TopOpeBRepLineInter; exF1: int; exF2: int) {.
    importcpp: "SetTraceIndex", header: "TopOpeBRep_LineInter.hxx".}
proc getTraceIndex*(this: TopOpeBRepLineInter; exF1: var int; exF2: var int) {.
    noSideEffect, importcpp: "GetTraceIndex", header: "TopOpeBRep_LineInter.hxx".}
proc dumpLineTransitions*(this: TopOpeBRepLineInter; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "DumpLineTransitions",
    header: "TopOpeBRep_LineInter.hxx".}
