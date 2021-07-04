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
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom_Circle"
type
  Handle_Geom_Circle* = handle[Geom_Circle]

## ! Describes a circle in 3D space.
## ! A circle is defined by its radius and, as with any conic
## ! curve, is positioned in space with a right-handed
## ! coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the circle, and
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the circle.
## ! This coordinate system is the local coordinate
## ! system of the circle.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the circle. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the circle.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the circle (definition of
## ! the trigonometric sense), determining the direction in
## ! which the parameter increases along the circle.
## ! The Geom_Circle circle is parameterized by an angle:
## ! P(U) = O + R*Cos(U)*XDir + R*Sin(U)*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - R is the radius of the circle.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the circle. The
## ! parameter is the angle with this "X Direction".
## ! A circle is a closed and periodic curve. The period is
## ! 2.*Pi and the parameter range is [ 0, 2.*Pi [.

type
  Geom_Circle* {.importcpp: "Geom_Circle", header: "Geom_Circle.hxx", bycopy.} = object of Geom_Conic ##
                                                                                            ## !
                                                                                            ## Constructs
                                                                                            ## a
                                                                                            ## circle
                                                                                            ## by
                                                                                            ## conversion
                                                                                            ## of
                                                                                            ## the
                                                                                            ## gp_Circ
                                                                                            ## circle
                                                                                            ## C.


proc constructGeom_Circle*(C: gp_Circ): Geom_Circle {.constructor,
    importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc constructGeom_Circle*(A2: gp_Ax2; Radius: Standard_Real): Geom_Circle {.
    constructor, importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc SetCirc*(this: var Geom_Circle; C: gp_Circ) {.importcpp: "SetCirc",
    header: "Geom_Circle.hxx".}
proc SetRadius*(this: var Geom_Circle; R: Standard_Real) {.importcpp: "SetRadius",
    header: "Geom_Circle.hxx".}
proc Circ*(this: Geom_Circle): gp_Circ {.noSideEffect, importcpp: "Circ",
                                     header: "Geom_Circle.hxx".}
proc Radius*(this: Geom_Circle): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "Geom_Circle.hxx".}
proc ReversedParameter*(this: Geom_Circle; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Circle.hxx".}
proc Eccentricity*(this: Geom_Circle): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Circle.hxx".}
proc FirstParameter*(this: Geom_Circle): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Circle.hxx".}
proc LastParameter*(this: Geom_Circle): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Circle.hxx".}
proc IsClosed*(this: Geom_Circle): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Circle.hxx".}
proc IsPeriodic*(this: Geom_Circle): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Circle.hxx".}
proc D0*(this: Geom_Circle; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Circle.hxx".}
proc D1*(this: Geom_Circle; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_Circle.hxx".}
proc D2*(this: Geom_Circle; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Circle.hxx".}
proc D3*(this: Geom_Circle; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_Circle.hxx".}
proc DN*(this: Geom_Circle; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_Circle.hxx".}
proc Transform*(this: var Geom_Circle; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Circle.hxx".}
proc Copy*(this: Geom_Circle): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Circle.hxx".}
proc DumpJson*(this: Geom_Circle; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Circle.hxx".}
type
  Geom_Circlebase_type* = Geom_Conic

proc get_type_name*(): cstring {.importcpp: "Geom_Circle::get_type_name(@)",
                              header: "Geom_Circle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Circle::get_type_descriptor(@)", header: "Geom_Circle.hxx".}
proc DynamicType*(this: Geom_Circle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Circle.hxx".}