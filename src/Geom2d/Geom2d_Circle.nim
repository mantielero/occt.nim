##  Created on: 1993-03-24
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Circle"
discard "forward decl of Geom2d_Circle"

type
  Geom2dCircle* {.importcpp: "Geom2d_Circle", header: "Geom2d_Circle.hxx", bycopy.} = object of Geom2dConic ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## a
                                                                                                  ## circle
                                                                                                  ## by
                                                                                                  ## conversion
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## gp_Circ2d
                                                                                                  ## circle
                                                                                                  ## C.

type
  HandleGeom2dCircle* = Handle[Geom2dCircle]

## ! Describes a circle in the plane (2D space).
## ! A circle is defined by its radius and, as with any conic
## ! curve, is positioned in the plane with a coordinate
## ! system (gp_Ax22d object) where the origin is the
## ! center of the circle.
## ! The coordinate system is the local coordinate
## ! system of the circle.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! circle, determining the direction in which the
## ! parameter increases along the circle.
## ! The Geom2d_Circle circle is parameterized by an angle:
## ! P(U) = O + R*Cos(U)*XDir + R*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - R is the radius of the circle.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the circle. The
## ! parameter is the angle with this "X Direction".
## ! A circle is a closed and periodic curve. The period is
## ! 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeCircle which provides functions for
## ! more complex circle constructions
## ! gp_Ax22d and  gp_Circ2d for an equivalent, non-parameterized data structure.

type
  Geom2dCirclebaseType* = Geom2dConic


proc constructGeom2dCircle*(c: Circ2d): Geom2dCircle {.constructor,
    importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc constructGeom2dCircle*(a: Ax2d; radius: StandardReal;
                           sense: StandardBoolean = true): Geom2dCircle {.
    constructor, importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc constructGeom2dCircle*(a: Ax22d; radius: StandardReal): Geom2dCircle {.
    constructor, importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc setCirc2d*(this: var Geom2dCircle; c: Circ2d) {.importcpp: "SetCirc2d",
    header: "Geom2d_Circle.hxx".}
proc setRadius*(this: var Geom2dCircle; r: StandardReal) {.importcpp: "SetRadius",
    header: "Geom2d_Circle.hxx".}
proc circ2d*(this: Geom2dCircle): Circ2d {.noSideEffect, importcpp: "Circ2d",
                                       header: "Geom2d_Circle.hxx".}
proc radius*(this: Geom2dCircle): StandardReal {.noSideEffect, importcpp: "Radius",
    header: "Geom2d_Circle.hxx".}
proc reversedParameter*(this: Geom2dCircle; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Circle.hxx".}
proc eccentricity*(this: Geom2dCircle): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Circle.hxx".}
proc firstParameter*(this: Geom2dCircle): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Circle.hxx".}
proc lastParameter*(this: Geom2dCircle): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Circle.hxx".}
proc isClosed*(this: Geom2dCircle): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Circle.hxx".}
proc isPeriodic*(this: Geom2dCircle): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Circle.hxx".}
proc d0*(this: Geom2dCircle; u: StandardReal; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Circle.hxx".}
proc d1*(this: Geom2dCircle; u: StandardReal; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Geom2d_Circle.hxx".}
proc d2*(this: Geom2dCircle; u: StandardReal; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Geom2d_Circle.hxx".}
proc d3*(this: Geom2dCircle; u: StandardReal; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3", header: "Geom2d_Circle.hxx".}
proc dn*(this: Geom2dCircle; u: StandardReal; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2d_Circle.hxx".}
proc transform*(this: var Geom2dCircle; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Circle.hxx".}
proc copy*(this: Geom2dCircle): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Circle.hxx".}
proc dumpJson*(this: Geom2dCircle; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_Circle.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "Geom2d_Circle::get_type_name(@)",
                            header: "Geom2d_Circle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Circle::get_type_descriptor(@)",
    header: "Geom2d_Circle.hxx".}
proc dynamicType*(this: Geom2dCircle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Circle.hxx".} ]#