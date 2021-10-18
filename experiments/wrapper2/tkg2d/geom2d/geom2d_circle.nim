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


proc newGeom2dCircle*(c: Circ2d): Geom2dCircle {.cdecl, constructor,
    importcpp: "Geom2d_Circle(@)", dynlib: tkernel.}
proc newGeom2dCircle*(a: Ax2d; radius: cfloat; sense: bool = true): Geom2dCircle {.cdecl,
    constructor, importcpp: "Geom2d_Circle(@)", dynlib: tkernel.}
proc newGeom2dCircle*(a: Ax22d; radius: cfloat): Geom2dCircle {.cdecl, constructor,
    importcpp: "Geom2d_Circle(@)", dynlib: tkernel.}
proc setCirc2d*(this: var Geom2dCircle; c: Circ2d) {.cdecl, importcpp: "SetCirc2d",
    dynlib: tkernel.}
proc setRadius*(this: var Geom2dCircle; r: cfloat) {.cdecl, importcpp: "SetRadius",
    dynlib: tkernel.}
proc circ2d*(this: Geom2dCircle): Circ2d {.noSideEffect, cdecl, importcpp: "Circ2d",
                                       dynlib: tkernel.}
proc radius*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                       dynlib: tkernel.}
proc reversedParameter*(this: Geom2dCircle; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkernel.}
proc eccentricity*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkernel.}
proc firstParameter*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkernel.}
proc lastParameter*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkernel.}
proc isClosed*(this: Geom2dCircle): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       dynlib: tkernel.}
proc isPeriodic*(this: Geom2dCircle): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkernel.}
proc d0*(this: Geom2dCircle; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkernel.}
proc d1*(this: Geom2dCircle; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkernel.}
proc d2*(this: Geom2dCircle; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkernel.}
proc d3*(this: Geom2dCircle; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkernel.}
proc dn*(this: Geom2dCircle; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkernel.}
proc transform*(this: var Geom2dCircle; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkernel.}
proc copy*(this: Geom2dCircle): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkernel.}
proc dumpJson*(this: Geom2dCircle; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}