##  Created on: 1993-03-10
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
  Geom_Conic, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Parabola"
discard "forward decl of Geom_Parabola"
type
  Handle_Geom_Parabola* = handle[Geom_Parabola]

## ! Describes a parabola in 3D space.
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in space with a coordinate system
## ! (gp_Ax2 object) where:
## ! - the origin is the apex of the parabola,
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis,
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the parabola.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The "main Direction" of this coordinate system is a
## ! vector normal to the plane of the parabola. The axis,
## ! of which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the parabola.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the parabola,
## ! determining the direction in which the parameter
## ! increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the origin
## ! of the parameter.
## ! The parameter range is ] -infinite, +infinite [.

type
  Geom_Parabola* {.importcpp: "Geom_Parabola", header: "Geom_Parabola.hxx", bycopy.} = object of Geom_Conic ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## parabola
                                                                                                  ## from
                                                                                                  ## a
                                                                                                  ## non
                                                                                                  ## transient
                                                                                                  ## one.


proc constructGeom_Parabola*(Prb: gp_Parab): Geom_Parabola {.constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc constructGeom_Parabola*(A2: gp_Ax2; Focal: Standard_Real): Geom_Parabola {.
    constructor, importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc constructGeom_Parabola*(D: gp_Ax1; F: gp_Pnt): Geom_Parabola {.constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc SetFocal*(this: var Geom_Parabola; Focal: Standard_Real) {.importcpp: "SetFocal",
    header: "Geom_Parabola.hxx".}
proc SetParab*(this: var Geom_Parabola; Prb: gp_Parab) {.importcpp: "SetParab",
    header: "Geom_Parabola.hxx".}
proc Parab*(this: Geom_Parabola): gp_Parab {.noSideEffect, importcpp: "Parab",
    header: "Geom_Parabola.hxx".}
proc ReversedParameter*(this: Geom_Parabola; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Parabola.hxx".}
proc FirstParameter*(this: Geom_Parabola): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Parabola.hxx".}
proc LastParameter*(this: Geom_Parabola): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Parabola.hxx".}
proc IsClosed*(this: Geom_Parabola): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Parabola.hxx".}
proc IsPeriodic*(this: Geom_Parabola): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Parabola.hxx".}
proc Directrix*(this: Geom_Parabola): gp_Ax1 {.noSideEffect, importcpp: "Directrix",
    header: "Geom_Parabola.hxx".}
proc Eccentricity*(this: Geom_Parabola): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Parabola.hxx".}
proc Focus*(this: Geom_Parabola): gp_Pnt {.noSideEffect, importcpp: "Focus",
                                       header: "Geom_Parabola.hxx".}
proc Focal*(this: Geom_Parabola): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "Geom_Parabola.hxx".}
proc Parameter*(this: Geom_Parabola): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom_Parabola.hxx".}
proc D0*(this: Geom_Parabola; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Parabola.hxx".}
proc D1*(this: Geom_Parabola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_Parabola.hxx".}
proc D2*(this: Geom_Parabola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2", header: "Geom_Parabola.hxx".}
proc D3*(this: Geom_Parabola; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_Parabola.hxx".}
proc DN*(this: Geom_Parabola; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_Parabola.hxx".}
proc Transform*(this: var Geom_Parabola; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Parabola.hxx".}
proc TransformedParameter*(this: Geom_Parabola; U: Standard_Real; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom_Parabola.hxx".}
proc ParametricTransformation*(this: Geom_Parabola; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_Parabola.hxx".}
proc Copy*(this: Geom_Parabola): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Parabola.hxx".}
proc DumpJson*(this: Geom_Parabola; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Parabola.hxx".}
type
  Geom_Parabolabase_type* = Geom_Conic

proc get_type_name*(): cstring {.importcpp: "Geom_Parabola::get_type_name(@)",
                              header: "Geom_Parabola.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Parabola::get_type_descriptor(@)",
    header: "Geom_Parabola.hxx".}
proc DynamicType*(this: Geom_Parabola): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Parabola.hxx".}