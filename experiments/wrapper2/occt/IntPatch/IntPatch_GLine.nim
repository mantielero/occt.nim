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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax2,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, IntPatch_SequenceOfPoint, IntPatch_Line,
  ../IntSurf/IntSurf_TypeTrans, ../IntSurf/IntSurf_Situation, ../gp/gp_Lin,
  ../gp/gp_Circ, ../gp/gp_Elips, ../gp/gp_Parab, ../gp/gp_Hypr

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
  Handle_IntPatch_GLine* = handle[IntPatch_GLine]

## ! Implementation of an intersection line represented
## ! by a conic.

type
  IntPatch_GLine* {.importcpp: "IntPatch_GLine", header: "IntPatch_GLine.hxx", bycopy.} = object of IntPatch_Line ##
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


proc constructIntPatch_GLine*(L: gp_Lin; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(L: gp_Lin; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(L: gp_Lin; Tang: Standard_Boolean): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(C: gp_Circ; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(C: gp_Circ; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(C: gp_Circ; Tang: Standard_Boolean): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(E: gp_Elips; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(E: gp_Elips; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(E: gp_Elips; Tang: Standard_Boolean): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(P: gp_Parab; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(P: gp_Parab; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(P: gp_Parab; Tang: Standard_Boolean): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(H: gp_Hypr; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(H: gp_Hypr; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc constructIntPatch_GLine*(H: gp_Hypr; Tang: Standard_Boolean): IntPatch_GLine {.
    constructor, importcpp: "IntPatch_GLine(@)", header: "IntPatch_GLine.hxx".}
proc AddVertex*(this: var IntPatch_GLine; Pnt: IntPatch_Point) {.
    importcpp: "AddVertex", header: "IntPatch_GLine.hxx".}
proc Replace*(this: var IntPatch_GLine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "Replace", header: "IntPatch_GLine.hxx".}
proc SetFirstPoint*(this: var IntPatch_GLine; IndFirst: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPatch_GLine.hxx".}
proc SetLastPoint*(this: var IntPatch_GLine; IndLast: Standard_Integer) {.
    importcpp: "SetLastPoint", header: "IntPatch_GLine.hxx".}
proc Line*(this: IntPatch_GLine): gp_Lin {.noSideEffect, importcpp: "Line",
                                       header: "IntPatch_GLine.hxx".}
proc Circle*(this: IntPatch_GLine): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "IntPatch_GLine.hxx".}
proc Ellipse*(this: IntPatch_GLine): gp_Elips {.noSideEffect, importcpp: "Ellipse",
    header: "IntPatch_GLine.hxx".}
proc Parabola*(this: IntPatch_GLine): gp_Parab {.noSideEffect, importcpp: "Parabola",
    header: "IntPatch_GLine.hxx".}
proc Hyperbola*(this: IntPatch_GLine): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "IntPatch_GLine.hxx".}
proc HasFirstPoint*(this: IntPatch_GLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_GLine.hxx".}
proc HasLastPoint*(this: IntPatch_GLine): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_GLine.hxx".}
proc FirstPoint*(this: IntPatch_GLine): IntPatch_Point {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_GLine.hxx".}
proc LastPoint*(this: IntPatch_GLine): IntPatch_Point {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_GLine.hxx".}
proc NbVertex*(this: IntPatch_GLine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_GLine.hxx".}
proc Vertex*(this: IntPatch_GLine; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_GLine.hxx".}
proc ComputeVertexParameters*(this: var IntPatch_GLine; Tol: Standard_Real) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_GLine.hxx".}
type
  IntPatch_GLinebase_type* = IntPatch_Line

proc get_type_name*(): cstring {.importcpp: "IntPatch_GLine::get_type_name(@)",
                              header: "IntPatch_GLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_GLine::get_type_descriptor(@)",
    header: "IntPatch_GLine.hxx".}
proc DynamicType*(this: IntPatch_GLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_GLine.hxx".}