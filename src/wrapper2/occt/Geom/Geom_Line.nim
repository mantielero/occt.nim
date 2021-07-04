##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax1, Geom_Curve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer

discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Line"
discard "forward decl of Geom_Line"
type
  Handle_Geom_Line* = handle[Geom_Line]

## ! Describes an infinite line.
## ! A line is defined and positioned in space with an axis
## ! (gp_Ax1 object) which gives it an origin and a unit vector.
## ! The Geom_Line line is parameterized:
## ! P (U) = O + U*Dir, where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.

type
  Geom_Line* {.importcpp: "Geom_Line", header: "Geom_Line.hxx", bycopy.} = object of Geom_Curve ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## line
                                                                                      ## located
                                                                                      ## in
                                                                                      ## 3D
                                                                                      ## space
                                                                                      ## with
                                                                                      ## the
                                                                                      ## axis
                                                                                      ## placement
                                                                                      ## A1.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## Location
                                                                                      ## of
                                                                                      ## A1
                                                                                      ## is
                                                                                      ## the
                                                                                      ## origin
                                                                                      ## of
                                                                                      ## the
                                                                                      ## line.


proc constructGeom_Line*(A1: gp_Ax1): Geom_Line {.constructor,
    importcpp: "Geom_Line(@)", header: "Geom_Line.hxx".}
proc constructGeom_Line*(L: gp_Lin): Geom_Line {.constructor,
    importcpp: "Geom_Line(@)", header: "Geom_Line.hxx".}
proc constructGeom_Line*(P: gp_Pnt; V: gp_Dir): Geom_Line {.constructor,
    importcpp: "Geom_Line(@)", header: "Geom_Line.hxx".}
proc SetLin*(this: var Geom_Line; L: gp_Lin) {.importcpp: "SetLin",
    header: "Geom_Line.hxx".}
proc SetDirection*(this: var Geom_Line; V: gp_Dir) {.importcpp: "SetDirection",
    header: "Geom_Line.hxx".}
proc SetLocation*(this: var Geom_Line; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "Geom_Line.hxx".}
proc SetPosition*(this: var Geom_Line; A1: gp_Ax1) {.importcpp: "SetPosition",
    header: "Geom_Line.hxx".}
proc Lin*(this: Geom_Line): gp_Lin {.noSideEffect, importcpp: "Lin",
                                 header: "Geom_Line.hxx".}
proc Position*(this: Geom_Line): gp_Ax1 {.noSideEffect, importcpp: "Position",
                                      header: "Geom_Line.hxx".}
proc Reverse*(this: var Geom_Line) {.importcpp: "Reverse", header: "Geom_Line.hxx".}
proc ReversedParameter*(this: Geom_Line; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Line.hxx".}
proc FirstParameter*(this: Geom_Line): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Line.hxx".}
proc LastParameter*(this: Geom_Line): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Line.hxx".}
proc IsClosed*(this: Geom_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Line.hxx".}
proc IsPeriodic*(this: Geom_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Line.hxx".}
proc Continuity*(this: Geom_Line): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Line.hxx".}
proc IsCN*(this: Geom_Line; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom_Line.hxx".}
proc D0*(this: Geom_Line; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Line.hxx".}
proc D1*(this: Geom_Line; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_Line.hxx".}
proc D2*(this: Geom_Line; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Line.hxx".}
proc D3*(this: Geom_Line; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.noSideEffect, importcpp: "D3", header: "Geom_Line.hxx".}
proc DN*(this: Geom_Line; U: Standard_Real; N: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_Line.hxx".}
proc Transform*(this: var Geom_Line; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Line.hxx".}
proc TransformedParameter*(this: Geom_Line; U: Standard_Real; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom_Line.hxx".}
proc ParametricTransformation*(this: Geom_Line; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation", header: "Geom_Line.hxx".}
proc Copy*(this: Geom_Line): handle[Geom_Geometry] {.noSideEffect, importcpp: "Copy",
    header: "Geom_Line.hxx".}
proc DumpJson*(this: Geom_Line; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Line.hxx".}
type
  Geom_Linebase_type* = Geom_Curve

proc get_type_name*(): cstring {.importcpp: "Geom_Line::get_type_name(@)",
                              header: "Geom_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Line::get_type_descriptor(@)", header: "Geom_Line.hxx".}
proc DynamicType*(this: Geom_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Line.hxx".}