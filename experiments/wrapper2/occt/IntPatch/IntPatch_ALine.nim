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
  ../Standard/Standard_Handle, ../IntAna/IntAna_Curve, IntPatch_Line,
  IntPatch_SequenceOfPoint, ../TColStd/TColStd_ListOfReal

discard "forward decl of IntAna_Curve"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_ALine"
discard "forward decl of IntPatch_ALine"
type
  Handle_IntPatch_ALine* = handle[IntPatch_ALine]

## ! Implementation of an intersection line described by a
## ! parametrized curve.

type
  IntPatch_ALine* {.importcpp: "IntPatch_ALine", header: "IntPatch_ALine.hxx", bycopy.} = object of IntPatch_Line ##
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


proc constructIntPatch_ALine*(C: IntAna_Curve; Tang: Standard_Boolean;
                             Trans1: IntSurf_TypeTrans; Trans2: IntSurf_TypeTrans): IntPatch_ALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc constructIntPatch_ALine*(C: IntAna_Curve; Tang: Standard_Boolean;
                             Situ1: IntSurf_Situation; Situ2: IntSurf_Situation): IntPatch_ALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc constructIntPatch_ALine*(C: IntAna_Curve; Tang: Standard_Boolean): IntPatch_ALine {.
    constructor, importcpp: "IntPatch_ALine(@)", header: "IntPatch_ALine.hxx".}
proc AddVertex*(this: var IntPatch_ALine; Pnt: IntPatch_Point) {.
    importcpp: "AddVertex", header: "IntPatch_ALine.hxx".}
proc Replace*(this: var IntPatch_ALine; Index: Standard_Integer; Pnt: IntPatch_Point) {.
    importcpp: "Replace", header: "IntPatch_ALine.hxx".}
proc SetFirstPoint*(this: var IntPatch_ALine; IndFirst: Standard_Integer) {.
    importcpp: "SetFirstPoint", header: "IntPatch_ALine.hxx".}
proc SetLastPoint*(this: var IntPatch_ALine; IndLast: Standard_Integer) {.
    importcpp: "SetLastPoint", header: "IntPatch_ALine.hxx".}
proc FirstParameter*(this: IntPatch_ALine; IsIncluded: var Standard_Boolean): Standard_Real {.
    noSideEffect, importcpp: "FirstParameter", header: "IntPatch_ALine.hxx".}
proc LastParameter*(this: IntPatch_ALine; IsIncluded: var Standard_Boolean): Standard_Real {.
    noSideEffect, importcpp: "LastParameter", header: "IntPatch_ALine.hxx".}
proc Value*(this: var IntPatch_ALine; U: Standard_Real): gp_Pnt {.importcpp: "Value",
    header: "IntPatch_ALine.hxx".}
proc D1*(this: var IntPatch_ALine; U: Standard_Real; P: var gp_Pnt; Du: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "IntPatch_ALine.hxx".}
proc FindParameter*(this: IntPatch_ALine; P: gp_Pnt;
                   theParams: var TColStd_ListOfReal) {.noSideEffect,
    importcpp: "FindParameter", header: "IntPatch_ALine.hxx".}
proc HasFirstPoint*(this: IntPatch_ALine): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_ALine.hxx".}
proc HasLastPoint*(this: IntPatch_ALine): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_ALine.hxx".}
proc FirstPoint*(this: IntPatch_ALine): IntPatch_Point {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_ALine.hxx".}
proc LastPoint*(this: IntPatch_ALine): IntPatch_Point {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_ALine.hxx".}
proc NbVertex*(this: IntPatch_ALine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_ALine.hxx".}
proc Vertex*(this: IntPatch_ALine; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_ALine.hxx".}
proc ChangeVertex*(this: var IntPatch_ALine; theIndex: Standard_Integer): var IntPatch_Point {.
    importcpp: "ChangeVertex", header: "IntPatch_ALine.hxx".}
proc ComputeVertexParameters*(this: var IntPatch_ALine; Tol: Standard_Real) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_ALine.hxx".}
proc Curve*(this: IntPatch_ALine): IntAna_Curve {.noSideEffect, importcpp: "Curve",
    header: "IntPatch_ALine.hxx".}
type
  IntPatch_ALinebase_type* = IntPatch_Line

proc get_type_name*(): cstring {.importcpp: "IntPatch_ALine::get_type_name(@)",
                              header: "IntPatch_ALine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_ALine::get_type_descriptor(@)",
    header: "IntPatch_ALine.hxx".}
proc DynamicType*(this: IntPatch_ALine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_ALine.hxx".}