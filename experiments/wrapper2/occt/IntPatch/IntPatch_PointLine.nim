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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of IntPatch_Point"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_PointLine"
type
  HandleIntPatchPointLine* = Handle[IntPatchPointLine]

## ! Definition of an intersection line between two
## ! surfaces.
## ! A line defined by a set of points
## ! (e.g. coming from a walking algorithm) as
## ! defined in the class WLine or RLine (Restriction line).

type
  IntPatchPointLine* {.importcpp: "IntPatch_PointLine",
                      header: "IntPatch_PointLine.hxx", bycopy.} = object of IntPatchLine ##
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


proc addVertex*(this: var IntPatchPointLine; pnt: IntPatchPoint;
               theIsPrepend: bool = false) {.importcpp: "AddVertex",
    header: "IntPatch_PointLine.hxx".}
proc nbPnts*(this: IntPatchPointLine): int {.noSideEffect, importcpp: "NbPnts",
    header: "IntPatch_PointLine.hxx".}
proc nbVertex*(this: IntPatchPointLine): int {.noSideEffect, importcpp: "NbVertex",
    header: "IntPatch_PointLine.hxx".}
proc point*(this: IntPatchPointLine; index: int): IntSurfPntOn2S {.noSideEffect,
    importcpp: "Point", header: "IntPatch_PointLine.hxx".}
proc vertex*(this: IntPatchPointLine; index: int): IntPatchPoint {.noSideEffect,
    importcpp: "Vertex", header: "IntPatch_PointLine.hxx".}
proc changeVertex*(this: var IntPatchPointLine; index: int): var IntPatchPoint {.
    importcpp: "ChangeVertex", header: "IntPatch_PointLine.hxx".}
proc clearVertexes*(this: var IntPatchPointLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_PointLine.hxx".}
proc removeVertex*(this: var IntPatchPointLine; theIndex: int) {.
    importcpp: "RemoveVertex", header: "IntPatch_PointLine.hxx".}
proc curve*(this: IntPatchPointLine): Handle[IntSurfLineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_PointLine.hxx".}
proc isOutSurf1Box*(this: IntPatchPointLine; p1: Pnt2d): bool {.noSideEffect,
    importcpp: "IsOutSurf1Box", header: "IntPatch_PointLine.hxx".}
proc isOutSurf2Box*(this: IntPatchPointLine; p2: Pnt2d): bool {.noSideEffect,
    importcpp: "IsOutSurf2Box", header: "IntPatch_PointLine.hxx".}
proc isOutBox*(this: IntPatchPointLine; p: Pnt): bool {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_PointLine.hxx".}
proc curvatureRadiusOfIntersLine*(theS1: Handle[Adaptor3dHSurface];
                                 theS2: Handle[Adaptor3dHSurface];
                                 theUVPoint: IntSurfPntOn2S): float {.
    importcpp: "IntPatch_PointLine::CurvatureRadiusOfIntersLine(@)",
    header: "IntPatch_PointLine.hxx".}
type
  IntPatchPointLinebaseType* = IntPatchLine

proc getTypeName*(): cstring {.importcpp: "IntPatch_PointLine::get_type_name(@)",
                            header: "IntPatch_PointLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_PointLine::get_type_descriptor(@)",
    header: "IntPatch_PointLine.hxx".}
proc dynamicType*(this: IntPatchPointLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_PointLine.hxx".}
