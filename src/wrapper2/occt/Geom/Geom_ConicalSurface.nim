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
  Geom_ElementarySurface, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_ConicalSurface"
discard "forward decl of Geom_ConicalSurface"
type
  Handle_Geom_ConicalSurface* = handle[Geom_ConicalSurface]

## ! Describes a cone.
## ! A cone is defined by the half-angle (can be negative) at its apex, and
## ! is positioned in space by a coordinate system (a
## ! gp_Ax3 object) and a reference radius as follows:
## ! - The "main Axis" of the coordinate system is the
## ! axis of revolution of the cone.
## ! - The plane defined by the origin, the "X Direction"
## ! and the "Y Direction" of the coordinate system is
## ! the reference plane of the cone. The intersection
## ! of the cone with this reference plane is a circle of
## ! radius equal to the reference radius.
## ! - The apex of the cone is on the negative side of
## ! the "main Axis" of the coordinate system if the
## ! half-angle is positive, and on the positive side if
## ! the half-angle is negative.
## ! This coordinate system is the "local coordinate
## ! system" of the cone. The following apply:
## ! - Rotation around its "main Axis", in the
## ! trigonometric sense given by the "X Direction"
## ! and the "Y Direction", defines the u parametric direction.
## ! - Its "X Axis" gives the origin for the u parameter.
## ! - Its "main Direction" is the v parametric direction of the cone.
## ! - Its origin is the origin of the v parameter.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u, and - ] -infinity, +infinity [ for v
## ! The parametric equation of the cone is:  P(u, v) =
## ! O + (R + v*sin(Ang)) * (cos(u)*XDir + sin(u)*YDir) + v*cos(Ang)*ZDir where:
## ! - O, XDir, YDir and ZDir are respectively
## ! the origin, the "X Direction", the "Y Direction" and
## ! the "Z Direction" of the cone's local coordinate system,
## ! - Ang is the half-angle at the apex of the cone,   and
## ! - R is the reference radius.

type
  Geom_ConicalSurface* {.importcpp: "Geom_ConicalSurface",
                        header: "Geom_ConicalSurface.hxx", bycopy.} = object of Geom_ElementarySurface ##
                                                                                                ## !
                                                                                                ## A3
                                                                                                ## defines
                                                                                                ## the
                                                                                                ## local
                                                                                                ## coordinate
                                                                                                ## system
                                                                                                ## of
                                                                                                ## the
                                                                                                ## conical
                                                                                                ## surface.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Ang
                                                                                                ## is
                                                                                                ## the
                                                                                                ## conical
                                                                                                ## surface
                                                                                                ## semi-angle.
                                                                                                ## Its
                                                                                                ## absolute
                                                                                                ## value
                                                                                                ## is
                                                                                                ## in
                                                                                                ## range
                                                                                                ##
                                                                                                ## !
                                                                                                ## ]0,
                                                                                                ## PI/2[.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Radius
                                                                                                ## is
                                                                                                ## the
                                                                                                ## radius
                                                                                                ## of
                                                                                                ## the
                                                                                                ## circle
                                                                                                ## Viso
                                                                                                ## in
                                                                                                ## the
                                                                                                ## placement
                                                                                                ## plane
                                                                                                ##
                                                                                                ## !
                                                                                                ## of
                                                                                                ## the
                                                                                                ## conical
                                                                                                ## surface
                                                                                                ## defined
                                                                                                ## with
                                                                                                ## "XAxis"
                                                                                                ## and
                                                                                                ## "YAxis".
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## "ZDirection"
                                                                                                ## of
                                                                                                ## A3
                                                                                                ## defines
                                                                                                ## the
                                                                                                ## direction
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface's
                                                                                                ##
                                                                                                ## !
                                                                                                ## axis
                                                                                                ## of
                                                                                                ## symmetry.
                                                                                                ##
                                                                                                ## !
                                                                                                ## If
                                                                                                ## the
                                                                                                ## location
                                                                                                ## point
                                                                                                ## of
                                                                                                ## A3
                                                                                                ## is
                                                                                                ## the
                                                                                                ## apex
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface
                                                                                                ##
                                                                                                ## !
                                                                                                ## Radius
                                                                                                ## =
                                                                                                ## 0
                                                                                                ## .
                                                                                                ##
                                                                                                ## !
                                                                                                ## At
                                                                                                ## the
                                                                                                ## creation
                                                                                                ## the
                                                                                                ## parametrization
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface
                                                                                                ## is
                                                                                                ## defined
                                                                                                ##
                                                                                                ## !
                                                                                                ## such
                                                                                                ## that
                                                                                                ## the
                                                                                                ## normal
                                                                                                ## Vector
                                                                                                ## (N
                                                                                                ## =
                                                                                                ## D1U
                                                                                                ## ^
                                                                                                ## D1V)
                                                                                                ## is
                                                                                                ## oriented
                                                                                                ## towards
                                                                                                ##
                                                                                                ## !
                                                                                                ## the
                                                                                                ## "outside
                                                                                                ## region"
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface.
                                                                                                ##
                                                                                                ## !
                                                                                                ##
                                                                                                ## !
                                                                                                ## Raised
                                                                                                ## if
                                                                                                ## Radius
                                                                                                ## <
                                                                                                ## 0.0
                                                                                                ## or
                                                                                                ## Abs(Ang)
                                                                                                ## <
                                                                                                ## Resolution
                                                                                                ## from
                                                                                                ## gp
                                                                                                ## or
                                                                                                ##
                                                                                                ## !
                                                                                                ## Abs(Ang)
                                                                                                ## >=
                                                                                                ## PI/2
                                                                                                ## -
                                                                                                ## Resolution


proc constructGeom_ConicalSurface*(A3: gp_Ax3; Ang: Standard_Real;
                                  Radius: Standard_Real): Geom_ConicalSurface {.
    constructor, importcpp: "Geom_ConicalSurface(@)",
    header: "Geom_ConicalSurface.hxx".}
proc constructGeom_ConicalSurface*(C: gp_Cone): Geom_ConicalSurface {.constructor,
    importcpp: "Geom_ConicalSurface(@)", header: "Geom_ConicalSurface.hxx".}
proc SetCone*(this: var Geom_ConicalSurface; C: gp_Cone) {.importcpp: "SetCone",
    header: "Geom_ConicalSurface.hxx".}
proc SetRadius*(this: var Geom_ConicalSurface; R: Standard_Real) {.
    importcpp: "SetRadius", header: "Geom_ConicalSurface.hxx".}
proc SetSemiAngle*(this: var Geom_ConicalSurface; Ang: Standard_Real) {.
    importcpp: "SetSemiAngle", header: "Geom_ConicalSurface.hxx".}
proc Cone*(this: Geom_ConicalSurface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "Geom_ConicalSurface.hxx".}
proc UReversedParameter*(this: Geom_ConicalSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_ConicalSurface.hxx".}
proc VReversedParameter*(this: Geom_ConicalSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_ConicalSurface.hxx".}
proc VReverse*(this: var Geom_ConicalSurface) {.importcpp: "VReverse",
    header: "Geom_ConicalSurface.hxx".}
proc TransformParameters*(this: Geom_ConicalSurface; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_ConicalSurface.hxx".}
proc ParametricTransformation*(this: Geom_ConicalSurface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_ConicalSurface.hxx".}
proc Apex*(this: Geom_ConicalSurface): gp_Pnt {.noSideEffect, importcpp: "Apex",
    header: "Geom_ConicalSurface.hxx".}
proc Bounds*(this: Geom_ConicalSurface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_ConicalSurface.hxx".}
proc Coefficients*(this: Geom_ConicalSurface; A1: var Standard_Real;
                  A2: var Standard_Real; A3: var Standard_Real; B1: var Standard_Real;
                  B2: var Standard_Real; B3: var Standard_Real; C1: var Standard_Real;
                  C2: var Standard_Real; C3: var Standard_Real; D: var Standard_Real) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_ConicalSurface.hxx".}
proc RefRadius*(this: Geom_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "RefRadius", header: "Geom_ConicalSurface.hxx".}
proc SemiAngle*(this: Geom_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "SemiAngle", header: "Geom_ConicalSurface.hxx".}
proc IsUClosed*(this: Geom_ConicalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_ConicalSurface.hxx".}
proc IsVClosed*(this: Geom_ConicalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_ConicalSurface.hxx".}
proc IsUPeriodic*(this: Geom_ConicalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_ConicalSurface.hxx".}
proc IsVPeriodic*(this: Geom_ConicalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_ConicalSurface.hxx".}
proc UIso*(this: Geom_ConicalSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_ConicalSurface.hxx".}
proc VIso*(this: Geom_ConicalSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_ConicalSurface.hxx".}
proc D0*(this: Geom_ConicalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_ConicalSurface.hxx".}
proc D1*(this: Geom_ConicalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_ConicalSurface.hxx".}
proc D2*(this: Geom_ConicalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_ConicalSurface.hxx".}
proc D3*(this: Geom_ConicalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_ConicalSurface.hxx".}
proc DN*(this: Geom_ConicalSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_ConicalSurface.hxx".}
proc Transform*(this: var Geom_ConicalSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_ConicalSurface.hxx".}
proc Copy*(this: Geom_ConicalSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_ConicalSurface.hxx".}
proc DumpJson*(this: Geom_ConicalSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_ConicalSurface.hxx".}
type
  Geom_ConicalSurfacebase_type* = Geom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "Geom_ConicalSurface::get_type_name(@)",
                              header: "Geom_ConicalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_ConicalSurface::get_type_descriptor(@)",
    header: "Geom_ConicalSurface.hxx".}
proc DynamicType*(this: Geom_ConicalSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_ConicalSurface.hxx".}