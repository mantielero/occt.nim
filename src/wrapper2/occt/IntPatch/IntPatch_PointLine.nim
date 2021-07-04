##  Created on: 2015-02-18
##  Created by: Nikolai BUKHALOV
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2015 OPEN CASCADE SAS
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
  IntPatch_Line, ../Standard/Standard_Type

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of IntPatch_Point"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_PointLine"
type
  Handle_IntPatch_PointLine* = handle[IntPatch_PointLine]

## ! Definition of an intersection line between two
## ! surfaces.
## ! A line defined by a set of points
## ! (e.g. coming from a walking algorithm) as
## ! defined in the class WLine or RLine (Restriction line).

type
  IntPatch_PointLine* {.importcpp: "IntPatch_PointLine",
                       header: "IntPatch_PointLine.hxx", bycopy.} = object of IntPatch_Line ##
                                                                                     ## !
                                                                                     ## Adds
                                                                                     ## a
                                                                                     ## vertex
                                                                                     ## in
                                                                                     ## the
                                                                                     ## list.
                                                                                     ## If
                                                                                     ## theIsPrepend
                                                                                     ## ==
                                                                                     ## TRUE
                                                                                     ## the
                                                                                     ## new
                                                                                     ##
                                                                                     ## !
                                                                                     ## vertex
                                                                                     ## will
                                                                                     ## be
                                                                                     ## added
                                                                                     ## before
                                                                                     ## the
                                                                                     ## first
                                                                                     ## element
                                                                                     ## of
                                                                                     ## vertices
                                                                                     ## sequence.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Otherwise,
                                                                                     ## to
                                                                                     ## the
                                                                                     ## end
                                                                                     ## of
                                                                                     ## the
                                                                                     ## sequence
                                                                                     ##
                                                                                     ## !
                                                                                     ## To
                                                                                     ## initialize
                                                                                     ## the
                                                                                     ## fields,
                                                                                     ## when
                                                                                     ## the
                                                                                     ## transitions
                                                                                     ##
                                                                                     ## !
                                                                                     ## are
                                                                                     ## In
                                                                                     ## or
                                                                                     ## Out.


proc AddVertex*(this: var IntPatch_PointLine; Pnt: IntPatch_Point;
               theIsPrepend: Standard_Boolean = Standard_False) {.
    importcpp: "AddVertex", header: "IntPatch_PointLine.hxx".}
proc NbPnts*(this: IntPatch_PointLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_PointLine.hxx".}
proc NbVertex*(this: IntPatch_PointLine): Standard_Integer {.noSideEffect,
    importcpp: "NbVertex", header: "IntPatch_PointLine.hxx".}
proc Point*(this: IntPatch_PointLine; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point", header: "IntPatch_PointLine.hxx".}
proc Vertex*(this: IntPatch_PointLine; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Vertex", header: "IntPatch_PointLine.hxx".}
proc ChangeVertex*(this: var IntPatch_PointLine; Index: Standard_Integer): var IntPatch_Point {.
    importcpp: "ChangeVertex", header: "IntPatch_PointLine.hxx".}
proc ClearVertexes*(this: var IntPatch_PointLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_PointLine.hxx".}
proc RemoveVertex*(this: var IntPatch_PointLine; theIndex: Standard_Integer) {.
    importcpp: "RemoveVertex", header: "IntPatch_PointLine.hxx".}
proc Curve*(this: IntPatch_PointLine): handle[IntSurf_LineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_PointLine.hxx".}
proc IsOutSurf1Box*(this: IntPatch_PointLine; P1: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf1Box", header: "IntPatch_PointLine.hxx".}
proc IsOutSurf2Box*(this: IntPatch_PointLine; P2: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutSurf2Box", header: "IntPatch_PointLine.hxx".}
proc IsOutBox*(this: IntPatch_PointLine; P: gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_PointLine.hxx".}
proc CurvatureRadiusOfIntersLine*(theS1: handle[Adaptor3d_HSurface];
                                 theS2: handle[Adaptor3d_HSurface];
                                 theUVPoint: IntSurf_PntOn2S): Standard_Real {.
    importcpp: "IntPatch_PointLine::CurvatureRadiusOfIntersLine(@)",
    header: "IntPatch_PointLine.hxx".}
type
  IntPatch_PointLinebase_type* = IntPatch_Line

proc get_type_name*(): cstring {.importcpp: "IntPatch_PointLine::get_type_name(@)",
                              header: "IntPatch_PointLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_PointLine::get_type_descriptor(@)",
    header: "IntPatch_PointLine.hxx".}
proc DynamicType*(this: IntPatch_PointLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_PointLine.hxx".}