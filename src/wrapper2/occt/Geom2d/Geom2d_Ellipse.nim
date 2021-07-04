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
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Ellipse"
discard "forward decl of Geom2d_Ellipse"
type
  Handle_Geom2d_Ellipse* = handle[Geom2d_Ellipse]

## ! Describes an ellipse in the plane (2D space).
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in the plane
## ! with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate system of the ellipse.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! ellipse, determining the direction in which the
## ! parameter increases along the ellipse.
## ! The Geom2d_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and
## ! minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeEllipse which provides functions for
## ! more complex ellipse constructions
## ! gp_Ax22d
## ! gp_Elips2d for an equivalent, non-parameterized data structure

type
  Geom2d_Ellipse* {.importcpp: "Geom2d_Ellipse", header: "Geom2d_Ellipse.hxx", bycopy.} = object of Geom2d_Conic ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## an
                                                                                                       ## ellipse
                                                                                                       ## by
                                                                                                       ## conversion
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## gp_Elips2d
                                                                                                       ## ellipse
                                                                                                       ## E.


proc constructGeom2d_Ellipse*(E: gp_Elips2d): Geom2d_Ellipse {.constructor,
    importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc constructGeom2d_Ellipse*(MajorAxis: gp_Ax2d; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real;
                             Sense: Standard_Boolean = Standard_True): Geom2d_Ellipse {.
    constructor, importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc constructGeom2d_Ellipse*(Axis: gp_Ax22d; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real): Geom2d_Ellipse {.
    constructor, importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc SetElips2d*(this: var Geom2d_Ellipse; E: gp_Elips2d) {.importcpp: "SetElips2d",
    header: "Geom2d_Ellipse.hxx".}
proc SetMajorRadius*(this: var Geom2d_Ellipse; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "Geom2d_Ellipse.hxx".}
proc SetMinorRadius*(this: var Geom2d_Ellipse; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "Geom2d_Ellipse.hxx".}
proc Elips2d*(this: Geom2d_Ellipse): gp_Elips2d {.noSideEffect, importcpp: "Elips2d",
    header: "Geom2d_Ellipse.hxx".}
proc ReversedParameter*(this: Geom2d_Ellipse; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Ellipse.hxx".}
proc Directrix1*(this: Geom2d_Ellipse): gp_Ax2d {.noSideEffect,
    importcpp: "Directrix1", header: "Geom2d_Ellipse.hxx".}
proc Directrix2*(this: Geom2d_Ellipse): gp_Ax2d {.noSideEffect,
    importcpp: "Directrix2", header: "Geom2d_Ellipse.hxx".}
proc Eccentricity*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Ellipse.hxx".}
proc Focal*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "Geom2d_Ellipse.hxx".}
proc Focus1*(this: Geom2d_Ellipse): gp_Pnt2d {.noSideEffect, importcpp: "Focus1",
    header: "Geom2d_Ellipse.hxx".}
proc Focus2*(this: Geom2d_Ellipse): gp_Pnt2d {.noSideEffect, importcpp: "Focus2",
    header: "Geom2d_Ellipse.hxx".}
proc MajorRadius*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom2d_Ellipse.hxx".}
proc MinorRadius*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom2d_Ellipse.hxx".}
proc Parameter*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom2d_Ellipse.hxx".}
proc FirstParameter*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Ellipse.hxx".}
proc LastParameter*(this: Geom2d_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Ellipse.hxx".}
proc IsClosed*(this: Geom2d_Ellipse): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Ellipse.hxx".}
proc IsPeriodic*(this: Geom2d_Ellipse): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Ellipse.hxx".}
proc D0*(this: Geom2d_Ellipse; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Ellipse.hxx".}
proc D1*(this: Geom2d_Ellipse; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Ellipse.hxx".}
proc D2*(this: Geom2d_Ellipse; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_Ellipse.hxx".}
proc D3*(this: Geom2d_Ellipse; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Ellipse.hxx".}
proc DN*(this: Geom2d_Ellipse; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Ellipse.hxx".}
proc Transform*(this: var Geom2d_Ellipse; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Ellipse.hxx".}
proc Copy*(this: Geom2d_Ellipse): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Ellipse.hxx".}
proc DumpJson*(this: Geom2d_Ellipse; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Ellipse.hxx".}
type
  Geom2d_Ellipsebase_type* = Geom2d_Conic

proc get_type_name*(): cstring {.importcpp: "Geom2d_Ellipse::get_type_name(@)",
                              header: "Geom2d_Ellipse.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Ellipse::get_type_descriptor(@)",
    header: "Geom2d_Ellipse.hxx".}
proc DynamicType*(this: Geom2d_Ellipse): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Ellipse.hxx".}