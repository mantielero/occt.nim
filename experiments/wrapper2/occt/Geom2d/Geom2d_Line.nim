##  Created on: 1993-03-24
##  Created by: JCV
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax2d, Geom2d_Curve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer

discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Line"
discard "forward decl of Geom2d_Line"
type
  Handle_Geom2d_Line* = handle[Geom2d_Line]

## ! Describes an infinite line in the plane (2D space).
## ! A line is defined and positioned in the plane with an
## ! axis (gp_Ax2d object) which gives it an origin and a unit vector.
## ! The Geom2d_Line line is parameterized as follows:
## ! P (U) = O + U*Dir
## ! where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.
## ! See Also
## ! GCE2d_MakeLine which provides functions for more
## ! complex line constructions
## ! gp_Ax2d
## ! gp_Lin2d for an equivalent, non-parameterized data structure.

type
  Geom2d_Line* {.importcpp: "Geom2d_Line", header: "Geom2d_Line.hxx", bycopy.} = object of Geom2d_Curve ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## line
                                                                                              ## located
                                                                                              ## in
                                                                                              ## 2D
                                                                                              ## space
                                                                                              ## with
                                                                                              ## the
                                                                                              ## axis
                                                                                              ## placement
                                                                                              ## A.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## Location
                                                                                              ## of
                                                                                              ## A
                                                                                              ## is
                                                                                              ## the
                                                                                              ## origin
                                                                                              ## of
                                                                                              ## the
                                                                                              ## line.


proc constructGeom2d_Line*(A: gp_Ax2d): Geom2d_Line {.constructor,
    importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc constructGeom2d_Line*(L: gp_Lin2d): Geom2d_Line {.constructor,
    importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc constructGeom2d_Line*(P: gp_Pnt2d; V: gp_Dir2d): Geom2d_Line {.constructor,
    importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc SetLin2d*(this: var Geom2d_Line; L: gp_Lin2d) {.importcpp: "SetLin2d",
    header: "Geom2d_Line.hxx".}
proc SetDirection*(this: var Geom2d_Line; V: gp_Dir2d) {.importcpp: "SetDirection",
    header: "Geom2d_Line.hxx".}
proc Direction*(this: Geom2d_Line): gp_Dir2d {.noSideEffect, importcpp: "Direction",
    header: "Geom2d_Line.hxx".}
proc SetLocation*(this: var Geom2d_Line; P: gp_Pnt2d) {.importcpp: "SetLocation",
    header: "Geom2d_Line.hxx".}
proc Location*(this: Geom2d_Line): gp_Pnt2d {.noSideEffect, importcpp: "Location",
    header: "Geom2d_Line.hxx".}
proc SetPosition*(this: var Geom2d_Line; A: gp_Ax2d) {.importcpp: "SetPosition",
    header: "Geom2d_Line.hxx".}
proc Position*(this: Geom2d_Line): gp_Ax2d {.noSideEffect, importcpp: "Position",
    header: "Geom2d_Line.hxx".}
proc Lin2d*(this: Geom2d_Line): gp_Lin2d {.noSideEffect, importcpp: "Lin2d",
                                       header: "Geom2d_Line.hxx".}
proc Reverse*(this: var Geom2d_Line) {.importcpp: "Reverse", header: "Geom2d_Line.hxx".}
proc ReversedParameter*(this: Geom2d_Line; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Line.hxx".}
proc FirstParameter*(this: Geom2d_Line): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Line.hxx".}
proc LastParameter*(this: Geom2d_Line): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Line.hxx".}
proc IsClosed*(this: Geom2d_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Line.hxx".}
proc IsPeriodic*(this: Geom2d_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Line.hxx".}
proc Continuity*(this: Geom2d_Line): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_Line.hxx".}
proc Distance*(this: Geom2d_Line; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "Geom2d_Line.hxx".}
proc IsCN*(this: Geom2d_Line; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom2d_Line.hxx".}
proc D0*(this: Geom2d_Line; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Line.hxx".}
proc D1*(this: Geom2d_Line; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Line.hxx".}
proc D2*(this: Geom2d_Line; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2", header: "Geom2d_Line.hxx".}
proc D3*(this: Geom2d_Line; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Line.hxx".}
proc DN*(this: Geom2d_Line; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Line.hxx".}
proc Transform*(this: var Geom2d_Line; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Line.hxx".}
proc TransformedParameter*(this: Geom2d_Line; U: Standard_Real; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom2d_Line.hxx".}
proc ParametricTransformation*(this: Geom2d_Line; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation", header: "Geom2d_Line.hxx".}
proc Copy*(this: Geom2d_Line): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Line.hxx".}
proc DumpJson*(this: Geom2d_Line; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Line.hxx".}
type
  Geom2d_Linebase_type* = Geom2d_Curve

proc get_type_name*(): cstring {.importcpp: "Geom2d_Line::get_type_name(@)",
                              header: "Geom2d_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Line::get_type_descriptor(@)", header: "Geom2d_Line.hxx".}
proc DynamicType*(this: Geom2d_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Line.hxx".}