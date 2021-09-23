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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom2d_Conic, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Parabola"
discard "forward decl of Geom2d_Parabola"
type
  Handle_Geom2d_Parabola* = handle[Geom2d_Parabola]

## ! Describes a parabola in the plane (2D space).
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in the plane with a coordinate system
## ! (gp_Ax22d object) where:
## ! - the origin is the apex of the parabola, and
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! parabola, determining the direction in which the
## ! parameter increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the
## ! origin of the parameter.
## ! The parameter range is ] -infinite,+infinite [.

type
  Geom2d_Parabola* {.importcpp: "Geom2d_Parabola", header: "Geom2d_Parabola.hxx",
                    bycopy.} = object of Geom2d_Conic ## ! Creates a parabola from a non persistent one.


proc constructGeom2d_Parabola*(Prb: gp_Parab2d): Geom2d_Parabola {.constructor,
    importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2d_Parabola*(MirrorAxis: gp_Ax2d; Focal: Standard_Real;
                              Sense: Standard_Boolean = Standard_True): Geom2d_Parabola {.
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2d_Parabola*(Axis: gp_Ax22d; Focal: Standard_Real): Geom2d_Parabola {.
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2d_Parabola*(D: gp_Ax2d; F: gp_Pnt2d): Geom2d_Parabola {.
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc SetFocal*(this: var Geom2d_Parabola; Focal: Standard_Real) {.
    importcpp: "SetFocal", header: "Geom2d_Parabola.hxx".}
proc SetParab2d*(this: var Geom2d_Parabola; Prb: gp_Parab2d) {.
    importcpp: "SetParab2d", header: "Geom2d_Parabola.hxx".}
proc Parab2d*(this: Geom2d_Parabola): gp_Parab2d {.noSideEffect,
    importcpp: "Parab2d", header: "Geom2d_Parabola.hxx".}
proc ReversedParameter*(this: Geom2d_Parabola; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Parabola.hxx".}
proc FirstParameter*(this: Geom2d_Parabola): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Parabola.hxx".}
proc LastParameter*(this: Geom2d_Parabola): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Parabola.hxx".}
proc IsClosed*(this: Geom2d_Parabola): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Parabola.hxx".}
proc IsPeriodic*(this: Geom2d_Parabola): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Parabola.hxx".}
proc Directrix*(this: Geom2d_Parabola): gp_Ax2d {.noSideEffect,
    importcpp: "Directrix", header: "Geom2d_Parabola.hxx".}
proc Eccentricity*(this: Geom2d_Parabola): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Parabola.hxx".}
proc Focus*(this: Geom2d_Parabola): gp_Pnt2d {.noSideEffect, importcpp: "Focus",
    header: "Geom2d_Parabola.hxx".}
proc Focal*(this: Geom2d_Parabola): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "Geom2d_Parabola.hxx".}
proc Parameter*(this: Geom2d_Parabola): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom2d_Parabola.hxx".}
proc D0*(this: Geom2d_Parabola; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Parabola.hxx".}
proc D1*(this: Geom2d_Parabola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Parabola.hxx".}
proc D2*(this: Geom2d_Parabola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_Parabola.hxx".}
proc D3*(this: Geom2d_Parabola; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Parabola.hxx".}
proc DN*(this: Geom2d_Parabola; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Parabola.hxx".}
proc Transform*(this: var Geom2d_Parabola; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Parabola.hxx".}
proc TransformedParameter*(this: Geom2d_Parabola; U: Standard_Real; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom2d_Parabola.hxx".}
proc ParametricTransformation*(this: Geom2d_Parabola; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom2d_Parabola.hxx".}
proc Copy*(this: Geom2d_Parabola): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Parabola.hxx".}
proc DumpJson*(this: Geom2d_Parabola; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Parabola.hxx".}
type
  Geom2d_Parabolabase_type* = Geom2d_Conic

proc get_type_name*(): cstring {.importcpp: "Geom2d_Parabola::get_type_name(@)",
                              header: "Geom2d_Parabola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Parabola::get_type_descriptor(@)",
    header: "Geom2d_Parabola.hxx".}
proc DynamicType*(this: Geom2d_Parabola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Parabola.hxx".}