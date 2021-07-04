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
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Ellipse"
discard "forward decl of Geom_Ellipse"
type
  Handle_Geom_Ellipse* = handle[Geom_Ellipse]

## ! Describes an ellipse in 3D space.
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in space with a
## ! right-handed coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! The origin, "X Direction" and "Y Direction" of this
## ! coordinate system define the plane of the ellipse. The
## ! coordinate system is the local coordinate system of the ellipse.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the ellipse. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the ellipse.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the ellipse (definition of
## ! the trigonometric sense), determining the direction in
## ! which the parameter increases along the ellipse.
## ! The Geom_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0, 2.*Pi [.

type
  Geom_Ellipse* {.importcpp: "Geom_Ellipse", header: "Geom_Ellipse.hxx", bycopy.} = object of Geom_Conic ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## an
                                                                                               ## ellipse
                                                                                               ## by
                                                                                               ## conversion
                                                                                               ## of
                                                                                               ## the
                                                                                               ## gp_Elips
                                                                                               ## ellipse
                                                                                               ## E.


proc constructGeom_Ellipse*(E: gp_Elips): Geom_Ellipse {.constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc constructGeom_Ellipse*(A2: gp_Ax2; MajorRadius: Standard_Real;
                           MinorRadius: Standard_Real): Geom_Ellipse {.constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc SetElips*(this: var Geom_Ellipse; E: gp_Elips) {.importcpp: "SetElips",
    header: "Geom_Ellipse.hxx".}
proc SetMajorRadius*(this: var Geom_Ellipse; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "Geom_Ellipse.hxx".}
proc SetMinorRadius*(this: var Geom_Ellipse; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "Geom_Ellipse.hxx".}
proc Elips*(this: Geom_Ellipse): gp_Elips {.noSideEffect, importcpp: "Elips",
                                        header: "Geom_Ellipse.hxx".}
proc ReversedParameter*(this: Geom_Ellipse; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Ellipse.hxx".}
proc Directrix1*(this: Geom_Ellipse): gp_Ax1 {.noSideEffect, importcpp: "Directrix1",
    header: "Geom_Ellipse.hxx".}
proc Directrix2*(this: Geom_Ellipse): gp_Ax1 {.noSideEffect, importcpp: "Directrix2",
    header: "Geom_Ellipse.hxx".}
proc Eccentricity*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Ellipse.hxx".}
proc Focal*(this: Geom_Ellipse): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "Geom_Ellipse.hxx".}
proc Focus1*(this: Geom_Ellipse): gp_Pnt {.noSideEffect, importcpp: "Focus1",
                                       header: "Geom_Ellipse.hxx".}
proc Focus2*(this: Geom_Ellipse): gp_Pnt {.noSideEffect, importcpp: "Focus2",
                                       header: "Geom_Ellipse.hxx".}
proc MajorRadius*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_Ellipse.hxx".}
proc MinorRadius*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_Ellipse.hxx".}
proc Parameter*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Geom_Ellipse.hxx".}
proc FirstParameter*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Ellipse.hxx".}
proc LastParameter*(this: Geom_Ellipse): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Ellipse.hxx".}
proc IsClosed*(this: Geom_Ellipse): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Ellipse.hxx".}
proc IsPeriodic*(this: Geom_Ellipse): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Ellipse.hxx".}
proc D0*(this: Geom_Ellipse; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Ellipse.hxx".}
proc D1*(this: Geom_Ellipse; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_Ellipse.hxx".}
proc D2*(this: Geom_Ellipse; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2", header: "Geom_Ellipse.hxx".}
proc D3*(this: Geom_Ellipse; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_Ellipse.hxx".}
proc DN*(this: Geom_Ellipse; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_Ellipse.hxx".}
proc Transform*(this: var Geom_Ellipse; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Ellipse.hxx".}
proc Copy*(this: Geom_Ellipse): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Ellipse.hxx".}
proc DumpJson*(this: Geom_Ellipse; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Ellipse.hxx".}
type
  Geom_Ellipsebase_type* = Geom_Conic

proc get_type_name*(): cstring {.importcpp: "Geom_Ellipse::get_type_name(@)",
                              header: "Geom_Ellipse.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Ellipse::get_type_descriptor(@)", header: "Geom_Ellipse.hxx".}
proc DynamicType*(this: Geom_Ellipse): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Ellipse.hxx".}