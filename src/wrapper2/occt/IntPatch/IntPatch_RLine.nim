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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntPatch_RLine"
discard "forward decl of IntPatch_RLine"
type
  HandleIntPatchRLine* = Handle[IntPatchRLine]

## ! Implementation of an intersection line described by a
## ! restriction line on one of the surfaces.

type
  IntPatchRLine* {.importcpp: "IntPatch_RLine", header: "IntPatch_RLine.hxx", bycopy.} = object of IntPatchPointLine ##
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


proc constructIntPatchRLine*(tang: StandardBoolean; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchRLine {.constructor,
    importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc constructIntPatchRLine*(tang: StandardBoolean; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchRLine {.constructor,
    importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc constructIntPatchRLine*(tang: StandardBoolean): IntPatchRLine {.constructor,
    importcpp: "IntPatch_RLine(@)", header: "IntPatch_RLine.hxx".}
proc addVertex*(this: var IntPatchRLine; pnt: IntPatchPoint;
               theIsPrepend: StandardBoolean = standardFalse) {.
    importcpp: "AddVertex", header: "IntPatch_RLine.hxx".}
proc replace*(this: var IntPatchRLine; index: StandardInteger; pnt: IntPatchPoint) {.
    importcpp: "Replace", header: "IntPatch_RLine.hxx".}
proc setFirstPoint*(this: var IntPatchRLine; indFirst: StandardInteger) {.
    importcpp: "SetFirstPoint", header: "IntPatch_RLine.hxx".}
proc setLastPoint*(this: var IntPatchRLine; indLast: StandardInteger) {.
    importcpp: "SetLastPoint", header: "IntPatch_RLine.hxx".}
proc add*(this: var IntPatchRLine; L: Handle[IntSurfLineOn2S]) {.importcpp: "Add",
    header: "IntPatch_RLine.hxx".}
proc isArcOnS1*(this: IntPatchRLine): StandardBoolean {.noSideEffect,
    importcpp: "IsArcOnS1", header: "IntPatch_RLine.hxx".}
proc isArcOnS2*(this: IntPatchRLine): StandardBoolean {.noSideEffect,
    importcpp: "IsArcOnS2", header: "IntPatch_RLine.hxx".}
proc setArcOnS1*(this: var IntPatchRLine; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "SetArcOnS1", header: "IntPatch_RLine.hxx".}
proc setArcOnS2*(this: var IntPatchRLine; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "SetArcOnS2", header: "IntPatch_RLine.hxx".}
proc setParamOnS1*(this: var IntPatchRLine; p1: StandardReal; p2: StandardReal) {.
    importcpp: "SetParamOnS1", header: "IntPatch_RLine.hxx".}
proc setParamOnS2*(this: var IntPatchRLine; p1: var StandardReal; p2: var StandardReal) {.
    importcpp: "SetParamOnS2", header: "IntPatch_RLine.hxx".}
proc arcOnS1*(this: IntPatchRLine): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "ArcOnS1", header: "IntPatch_RLine.hxx".}
proc arcOnS2*(this: IntPatchRLine): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "ArcOnS2", header: "IntPatch_RLine.hxx".}
proc paramOnS1*(this: IntPatchRLine; p1: var StandardReal; p2: var StandardReal) {.
    noSideEffect, importcpp: "ParamOnS1", header: "IntPatch_RLine.hxx".}
proc paramOnS2*(this: IntPatchRLine; p1: var StandardReal; p2: var StandardReal) {.
    noSideEffect, importcpp: "ParamOnS2", header: "IntPatch_RLine.hxx".}
proc hasFirstPoint*(this: IntPatchRLine): StandardBoolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_RLine.hxx".}
proc hasLastPoint*(this: IntPatchRLine): StandardBoolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_RLine.hxx".}
proc firstPoint*(this: IntPatchRLine): IntPatchPoint {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_RLine.hxx".}
proc lastPoint*(this: IntPatchRLine): IntPatchPoint {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_RLine.hxx".}
proc nbVertex*(this: IntPatchRLine): StandardInteger {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_RLine.hxx".}
proc vertex*(this: IntPatchRLine; index: StandardInteger): IntPatchPoint {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_RLine.hxx".}
proc changeVertex*(this: var IntPatchRLine; index: StandardInteger): var IntPatchPoint {.
    importcpp: "ChangeVertex", header: "IntPatch_RLine.hxx".}
proc removeVertex*(this: var IntPatchRLine; theIndex: StandardInteger) {.
    importcpp: "RemoveVertex", header: "IntPatch_RLine.hxx".}
proc hasPolygon*(this: IntPatchRLine): StandardBoolean {.noSideEffect,
    importcpp: "HasPolygon", header: "IntPatch_RLine.hxx".}
proc nbPnts*(this: IntPatchRLine): StandardInteger {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_RLine.hxx".}
proc point*(this: IntPatchRLine; index: StandardInteger): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Point", header: "IntPatch_RLine.hxx".}
proc setPoint*(this: var IntPatchRLine; index: StandardInteger; pnt: IntPatchPoint) {.
    importcpp: "SetPoint", header: "IntPatch_RLine.hxx".}
proc computeVertexParameters*(this: var IntPatchRLine; tol: StandardReal) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_RLine.hxx".}
proc curve*(this: IntPatchRLine): Handle[IntSurfLineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_RLine.hxx".}
proc isOutSurf1Box*(this: IntPatchRLine; theP: GpPnt2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOutSurf1Box", header: "IntPatch_RLine.hxx".}
proc isOutSurf2Box*(this: IntPatchRLine; theP: GpPnt2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOutSurf2Box", header: "IntPatch_RLine.hxx".}
proc isOutBox*(this: IntPatchRLine; theP: GpPnt): StandardBoolean {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_RLine.hxx".}
proc clearVertexes*(this: var IntPatchRLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_RLine.hxx".}
proc setCurve*(this: var IntPatchRLine; theNewCurve: Handle[IntSurfLineOn2S]) {.
    importcpp: "SetCurve", header: "IntPatch_RLine.hxx".}
proc dump*(this: IntPatchRLine; theMode: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "IntPatch_RLine.hxx".}
type
  IntPatchRLinebaseType* = IntPatchPointLine

proc getTypeName*(): cstring {.importcpp: "IntPatch_RLine::get_type_name(@)",
                            header: "IntPatch_RLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_RLine::get_type_descriptor(@)",
    header: "IntPatch_RLine.hxx".}
proc dynamicType*(this: IntPatchRLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_RLine.hxx".}

