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
  HandleC1C1* = Handle[GeomCircle]

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
  GeomCircle* {.importcpp: "Geom_Circle", header: "Geom_Circle.hxx", bycopy.} = object of GeomConic ##
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


proc constructGeomCircle*(c: Circ): GeomCircle {.constructor,
    importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc constructGeomCircle*(a2: Ax2; radius: StandardReal): GeomCircle {.constructor,
    importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc setCirc*(this: var GeomCircle; c: Circ) {.importcpp: "SetCirc",
    header: "Geom_Circle.hxx".}
proc setRadius*(this: var GeomCircle; r: StandardReal) {.importcpp: "SetRadius",
    header: "Geom_Circle.hxx".}
proc circ*(this: GeomCircle): Circ {.noSideEffect, importcpp: "Circ",
                                 header: "Geom_Circle.hxx".}
proc radius*(this: GeomCircle): StandardReal {.noSideEffect, importcpp: "Radius",
    header: "Geom_Circle.hxx".}
proc reversedParameter*(this: GeomCircle; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Circle.hxx".}
proc eccentricity*(this: GeomCircle): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Circle.hxx".}
proc firstParameter*(this: GeomCircle): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Circle.hxx".}
proc lastParameter*(this: GeomCircle): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Circle.hxx".}
proc isClosed*(this: GeomCircle): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Circle.hxx".}
proc isPeriodic*(this: GeomCircle): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Circle.hxx".}
proc d0*(this: GeomCircle; u: StandardReal; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_Circle.hxx".}
proc d1*(this: GeomCircle; u: StandardReal; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_Circle.hxx".}
proc d2*(this: GeomCircle; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Circle.hxx".}
proc d3*(this: GeomCircle; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Geom_Circle.hxx".}
proc dn*(this: GeomCircle; u: StandardReal; n: int): Vec {.noSideEffect, importcpp: "DN",
    header: "Geom_Circle.hxx".}
proc transform*(this: var GeomCircle; t: Trsf) {.importcpp: "Transform",
    header: "Geom_Circle.hxx".}
proc copy*(this: GeomCircle): Handle[GeomGeometry] {.noSideEffect, importcpp: "Copy",
    header: "Geom_Circle.hxx".}
proc dumpJson*(this: GeomCircle; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom_Circle.hxx".}
type
  GeomCirclebaseType* = GeomConic

proc getTypeName*(): cstring {.importcpp: "Geom_Circle::get_type_name(@)",
                            header: "Geom_Circle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Circle::get_type_descriptor(@)", header: "Geom_Circle.hxx".}
proc dynamicType*(this: GeomCircle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Circle.hxx".}