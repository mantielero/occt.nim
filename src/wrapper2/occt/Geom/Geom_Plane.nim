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
  ../Standard/Standard, ../Standard/Standard_Type, Geom_ElementarySurface,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Plane"
type
  Handle_Geom_Plane* = handle[Geom_Plane]

## ! Describes a plane in 3D space.
## ! A plane is positioned in space by a coordinate system
## ! (a gp_Ax3 object) such that the plane is defined by
## ! the origin, "X Direction" and "Y Direction" of this
## ! coordinate system.
## ! This coordinate system is the "local coordinate
## ! system" of the plane. The following apply:
## ! - Its "X Direction" and "Y Direction" are respectively
## ! the u and v parametric directions of the plane.
## ! - Its origin is the origin of the u and v parameters
## ! (also called the "origin" of the plane).
## ! - Its "main Direction" is a vector normal to the plane.
## ! This normal vector gives the orientation of the
## ! plane only if the local coordinate system is "direct".
## ! (The orientation of the plane is always defined by
## ! the "X Direction" and the "Y Direction" of its local
## ! coordinate system.)
## ! The parametric equation of the plane is:
## ! P(u, v) = O + u*XDir + v*YDir
## ! where O, XDir and YDir are respectively the
## ! origin, the "X Direction" and the "Y Direction" of the
## ! local coordinate system of the plane.
## ! The parametric range of the two parameters u and v
## ! is ] -infinity, +infinity [.

type
  Geom_Plane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of Geom_ElementarySurface ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## plane
                                                                                                     ## located
                                                                                                     ## in
                                                                                                     ## 3D
                                                                                                     ## space
                                                                                                     ## with
                                                                                                     ## an
                                                                                                     ## axis
                                                                                                     ## placement
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## three
                                                                                                     ## axis.
                                                                                                     ## The
                                                                                                     ## "ZDirection"
                                                                                                     ## of
                                                                                                     ## "A3"
                                                                                                     ## is
                                                                                                     ## the
                                                                                                     ## direction
                                                                                                     ## normal
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ## plane.
                                                                                                     ## The
                                                                                                     ## "Location"
                                                                                                     ## point
                                                                                                     ## of
                                                                                                     ## "A3"
                                                                                                     ## is
                                                                                                     ## the
                                                                                                     ## origin
                                                                                                     ## of
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## plane.
                                                                                                     ## The
                                                                                                     ## "XDirection"
                                                                                                     ## and
                                                                                                     ## "YDirection"
                                                                                                     ## of
                                                                                                     ## "A3"
                                                                                                     ## define
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## directions
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## U
                                                                                                     ## isoparametric
                                                                                                     ## and
                                                                                                     ## V
                                                                                                     ## isoparametric
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## curves.


proc constructGeom_Plane*(A3: gp_Ax3): Geom_Plane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeom_Plane*(Pl: gp_Pln): Geom_Plane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeom_Plane*(P: gp_Pnt; V: gp_Dir): Geom_Plane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeom_Plane*(A: Standard_Real; B: Standard_Real; C: Standard_Real;
                         D: Standard_Real): Geom_Plane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc SetPln*(this: var Geom_Plane; Pl: gp_Pln) {.importcpp: "SetPln",
    header: "Geom_Plane.hxx".}
proc Pln*(this: Geom_Plane): gp_Pln {.noSideEffect, importcpp: "Pln",
                                  header: "Geom_Plane.hxx".}
proc UReverse*(this: var Geom_Plane) {.importcpp: "UReverse", header: "Geom_Plane.hxx".}
proc UReversedParameter*(this: Geom_Plane; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_Plane.hxx".}
proc VReverse*(this: var Geom_Plane) {.importcpp: "VReverse", header: "Geom_Plane.hxx".}
proc VReversedParameter*(this: Geom_Plane; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_Plane.hxx".}
proc TransformParameters*(this: Geom_Plane; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_Plane.hxx".}
proc ParametricTransformation*(this: Geom_Plane; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation", header: "Geom_Plane.hxx".}
proc Bounds*(this: Geom_Plane; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_Plane.hxx".}
proc Coefficients*(this: Geom_Plane; A: var Standard_Real; B: var Standard_Real;
                  C: var Standard_Real; D: var Standard_Real) {.noSideEffect,
    importcpp: "Coefficients", header: "Geom_Plane.hxx".}
proc IsUClosed*(this: Geom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_Plane.hxx".}
proc IsVClosed*(this: Geom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_Plane.hxx".}
proc IsUPeriodic*(this: Geom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_Plane.hxx".}
proc IsVPeriodic*(this: Geom_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_Plane.hxx".}
proc UIso*(this: Geom_Plane; U: Standard_Real): handle[Geom_Curve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_Plane.hxx".}
proc VIso*(this: Geom_Plane; V: Standard_Real): handle[Geom_Curve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_Plane.hxx".}
proc D0*(this: Geom_Plane; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_Plane.hxx".}
proc D1*(this: Geom_Plane; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_Plane.hxx".}
proc D2*(this: Geom_Plane; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Plane.hxx".}
proc D3*(this: Geom_Plane; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3", header: "Geom_Plane.hxx".}
proc DN*(this: Geom_Plane; U: Standard_Real; V: Standard_Real; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.noSideEffect, importcpp: "DN",
                                     header: "Geom_Plane.hxx".}
proc Transform*(this: var Geom_Plane; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Plane.hxx".}
proc Copy*(this: Geom_Plane): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Plane.hxx".}
proc DumpJson*(this: Geom_Plane; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Plane.hxx".}
type
  Geom_Planebase_type* = Geom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "Geom_Plane::get_type_name(@)",
                              header: "Geom_Plane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Plane::get_type_descriptor(@)", header: "Geom_Plane.hxx".}
proc DynamicType*(this: Geom_Plane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Plane.hxx".}