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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom2d_Conic, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

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
  Handle_Geom2d_Circle* = handle[Geom2d_Circle]

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
  Geom2d_Circle* {.importcpp: "Geom2d_Circle", header: "Geom2d_Circle.hxx", bycopy.} = object of Geom2d_Conic ##
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


proc constructGeom2d_Circle*(C: gp_Circ2d): Geom2d_Circle {.constructor,
    importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc constructGeom2d_Circle*(A: gp_Ax2d; Radius: Standard_Real;
                            Sense: Standard_Boolean = Standard_True): Geom2d_Circle {.
    constructor, importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc constructGeom2d_Circle*(A: gp_Ax22d; Radius: Standard_Real): Geom2d_Circle {.
    constructor, importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc SetCirc2d*(this: var Geom2d_Circle; C: gp_Circ2d) {.importcpp: "SetCirc2d",
    header: "Geom2d_Circle.hxx".}
proc SetRadius*(this: var Geom2d_Circle; R: Standard_Real) {.importcpp: "SetRadius",
    header: "Geom2d_Circle.hxx".}
proc Circ2d*(this: Geom2d_Circle): gp_Circ2d {.noSideEffect, importcpp: "Circ2d",
    header: "Geom2d_Circle.hxx".}
proc Radius*(this: Geom2d_Circle): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "Geom2d_Circle.hxx".}
proc ReversedParameter*(this: Geom2d_Circle; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Circle.hxx".}
proc Eccentricity*(this: Geom2d_Circle): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Circle.hxx".}
proc FirstParameter*(this: Geom2d_Circle): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Circle.hxx".}
proc LastParameter*(this: Geom2d_Circle): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Circle.hxx".}
proc IsClosed*(this: Geom2d_Circle): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Circle.hxx".}
proc IsPeriodic*(this: Geom2d_Circle): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Circle.hxx".}
proc D0*(this: Geom2d_Circle; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Circle.hxx".}
proc D1*(this: Geom2d_Circle; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Circle.hxx".}
proc D2*(this: Geom2d_Circle; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2", header: "Geom2d_Circle.hxx".}
proc D3*(this: Geom2d_Circle; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Circle.hxx".}
proc DN*(this: Geom2d_Circle; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Circle.hxx".}
proc Transform*(this: var Geom2d_Circle; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Circle.hxx".}
proc Copy*(this: Geom2d_Circle): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Circle.hxx".}
proc DumpJson*(this: Geom2d_Circle; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Circle.hxx".}
type
  Geom2d_Circlebase_type* = Geom2d_Conic

proc get_type_name*(): cstring {.importcpp: "Geom2d_Circle::get_type_name(@)",
                              header: "Geom2d_Circle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Circle::get_type_descriptor(@)",
    header: "Geom2d_Circle.hxx".}
proc DynamicType*(this: Geom2d_Circle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Circle.hxx".}