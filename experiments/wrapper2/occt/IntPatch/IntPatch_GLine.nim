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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_GLine"
discard "forward decl of IntPatch_GLine"
type
  HandleIntPatchGLine* = Handle[IntPatchGLine]

## ! Implementation of an intersection line represented
## ! by a conic.

type
  IntPatchGLine* {.importcpp: "IntPatch_GLine", header: "IntPatch_GLine.hxx", bycopy.} = object of IntPatchLine ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## Line
                                                                                                      ## as
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


proc constructIntPatchGLine*(L: Lin; tang: bool; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(L: Lin; tang: bool; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(L: Lin; tang: bool): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(c: Circ; tang: bool; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(c: Circ; tang: bool; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(c: Circ; tang: bool): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(e: Elips; tang: bool; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(e: Elips; tang: bool; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(e: Elips; tang: bool): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(p: Parab; tang: bool; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(p: Parab; tang: bool; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(p: Parab; tang: bool): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(h: Hypr; tang: bool; trans1: IntSurfTypeTrans;
                            trans2: IntSurfTypeTrans): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(h: Hypr; tang: bool; situ1: IntSurfSituation;
                            situ2: IntSurfSituation): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatchGLine*(h: Hypr; tang: bool): IntPatchGLine {.constructor,
    importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc addVertex*(this: var IntPatchGLine; pnt: IntPatchPoint) {.importcpp: "AddVertex",
    header: "IntPatch_GLine.hxx".}
proc replace*(this: var IntPatchGLine; index: int; pnt: IntPatchPoint) {.
    importcpp: "Replace", header: "IntPatch_GLine.hxx".}
proc setFirstPoint*(this: var IntPatchGLine; indFirst: int) {.
    importcpp: "SetFirstPoint", header: "IntPatch_GLine.hxx".}
proc setLastPoint*(this: var IntPatchGLine; indLast: int) {.importcpp: "SetLastPoint",
    header: "IntPatch_GLine.hxx".}
proc line*(this: IntPatchGLine): Lin {.noSideEffect, importcpp: "Line",
                                   header: "IntPatch_GLine.hxx".}
proc circle*(this: IntPatchGLine): Circ {.noSideEffect, importcpp: "Circle",
                                      header: "IntPatch_GLine.hxx".}
proc ellipse*(this: IntPatchGLine): Elips {.noSideEffect, importcpp: "Ellipse",
                                        header: "IntPatch_GLine.hxx".}
proc parabola*(this: IntPatchGLine): Parab {.noSideEffect, importcpp: "Parabola",
    header: "IntPatch_GLine.hxx".}
proc hyperbola*(this: IntPatchGLine): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "IntPatch_GLine.hxx".}
proc hasFirstPoint*(this: IntPatchGLine): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_GLine.hxx".}
proc hasLastPoint*(this: IntPatchGLine): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_GLine.hxx".}
proc firstPoint*(this: IntPatchGLine): IntPatchPoint {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_GLine.hxx".}
proc lastPoint*(this: IntPatchGLine): IntPatchPoint {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_GLine.hxx".}
proc nbVertex*(this: IntPatchGLine): int {.noSideEffect, importcpp: "NbVertex",
                                       header: "IntPatch_GLine.hxx".}
proc vertex*(this: IntPatchGLine; index: int): IntPatchPoint {.noSideEffect,
    importcpp: "Vertex", header: "IntPatch_GLine.hxx".}
proc computeVertexParameters*(this: var IntPatchGLine; tol: float) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_GLine.hxx".}
type
  IntPatchGLinebaseType* = IntPatchLine

proc getTypeName*(): cstring {.importcpp: "IntPatch_GLine::get_type_name(@)",
                            header: "IntPatch_GLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_GLine::get_type_descriptor(@)",
    header: "IntPatch_GLine.hxx".}
proc dynamicType*(this: IntPatchGLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_GLine.hxx".}
