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

discard "forward decl of IntAna_Curve"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_ALine"
discard "forward decl of IntPatch_ALine"
type
  HandleIntPatchALine* = Handle[IntPatchALine]

## ! Implementation of an intersection line described by a
## ! parametrized curve.

type
  IntPatchALine* {.importcpp: "IntPatch_ALine", header: "IntPatch_ALine.hxx", bycopy.} = object of IntPatchLine ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## analytic
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


proc constructIntPatchALine*(c: IntAnaCurve; tang: StandardBoolean;
                            trans1: IntSurfTypeTrans; trans2: IntSurfTypeTrans): IntPatchALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc constructIntPatchALine*(c: IntAnaCurve; tang: StandardBoolean;
                            situ1: IntSurfSituation; situ2: IntSurfSituation): IntPatchALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc constructIntPatchALine*(c: IntAnaCurve; tang: StandardBoolean): IntPatchALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc addVertex*(this: var IntPatchALine; pnt: IntPatchPoint) {.importcpp: "AddVertex",
    header: "IntPatch_ALine.hxx".}
proc replace*(this: var IntPatchALine; index: StandardInteger; pnt: IntPatchPoint) {.
    importcpp: "Replace", header: "IntPatch_ALine.hxx".}
proc setFirstPoint*(this: var IntPatchALine; indFirst: StandardInteger) {.
    importcpp: "SetFirstPoint", header: "IntPatch_ALine.hxx".}
proc setLastPoint*(this: var IntPatchALine; indLast: StandardInteger) {.
    importcpp: "SetLastPoint", header: "IntPatch_ALine.hxx".}
proc firstParameter*(this: IntPatchALine; isIncluded: var StandardBoolean): StandardReal {.
    noSideEffect, importcpp: "FirstParameter", header: "IntPatch_ALine.hxx".}
proc lastParameter*(this: IntPatchALine; isIncluded: var StandardBoolean): StandardReal {.
    noSideEffect, importcpp: "LastParameter", header: "IntPatch_ALine.hxx".}
proc value*(this: var IntPatchALine; u: StandardReal): GpPnt {.importcpp: "Value",
    header: "IntPatch_ALine.hxx".}
proc d1*(this: var IntPatchALine; u: StandardReal; p: var GpPnt; du: var GpVec): StandardBoolean {.
    importcpp: "D1", header: "IntPatch_ALine.hxx".}
proc findParameter*(this: IntPatchALine; p: GpPnt; theParams: var TColStdListOfReal) {.
    noSideEffect, importcpp: "FindParameter", header: "IntPatch_ALine.hxx".}
proc hasFirstPoint*(this: IntPatchALine): StandardBoolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_ALine.hxx".}
proc hasLastPoint*(this: IntPatchALine): StandardBoolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_ALine.hxx".}
proc firstPoint*(this: IntPatchALine): IntPatchPoint {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_ALine.hxx".}
proc lastPoint*(this: IntPatchALine): IntPatchPoint {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_ALine.hxx".}
proc nbVertex*(this: IntPatchALine): StandardInteger {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_ALine.hxx".}
proc vertex*(this: IntPatchALine; index: StandardInteger): IntPatchPoint {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_ALine.hxx".}
proc changeVertex*(this: var IntPatchALine; theIndex: StandardInteger): var IntPatchPoint {.
    importcpp: "ChangeVertex", header: "IntPatch_ALine.hxx".}
proc computeVertexParameters*(this: var IntPatchALine; tol: StandardReal) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_ALine.hxx".}
proc curve*(this: IntPatchALine): IntAnaCurve {.noSideEffect, importcpp: "Curve",
    header: "IntPatch_ALine.hxx".}
type
  IntPatchALinebaseType* = IntPatchLine

proc getTypeName*(): cstring {.importcpp: "IntPatch_ALine::get_type_name(@)",
                            header: "IntPatch_ALine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_ALine::get_type_descriptor(@)",
    header: "IntPatch_ALine.hxx".}
proc dynamicType*(this: IntPatchALine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_ALine.hxx".}

