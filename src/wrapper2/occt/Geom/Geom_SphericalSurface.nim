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
discard "forward decl of gp_Sphere"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_SphericalSurface"
discard "forward decl of Geom_SphericalSurface"
type
  Handle_Geom_SphericalSurface* = handle[Geom_SphericalSurface]

## ! Describes a sphere.
## ! A sphere is defined by its radius, and is positioned in
## ! space by a coordinate system (a gp_Ax3 object), the
## ! origin of which is the center of the sphere.
## ! This coordinate system is the "local coordinate
## ! system" of the sphere. The following apply:
## ! - Rotation around its "main Axis", in the trigonometric
## ! sense given by the "X Direction" and the "Y
## ! Direction", defines the u parametric direction.
## ! - Its "X Axis" gives the origin for the u parameter.
## ! - The "reference meridian" of the sphere is a
## ! half-circle, of radius equal to the radius of the
## ! sphere. It is located in the plane defined by the
## ! origin, "X Direction" and "main Direction", centered
## ! on the origin, and positioned on the positive side of the "X Axis".
## ! - Rotation around the "Y Axis" gives the v parameter
## ! on the reference meridian.
## ! - The "X Axis" gives the origin of the v parameter on
## ! the reference meridian.
## ! - The v parametric direction is oriented by the "main
## ! Direction", i.e. when v increases, the Z coordinate
## ! increases. (This implies that the "Y Direction"
## ! orients the reference meridian only when the local
## ! coordinate system is indirect.)
## ! - The u isoparametric curve is a half-circle obtained
## ! by rotating the reference meridian of the sphere
## ! through an angle u around the "main Axis", in the
## ! trigonometric sense defined by the "X Direction"
## ! and the "Y Direction".
## ! The parametric equation of the sphere is:
## ! P(u,v) = O + R*cos(v)*(cos(u)*XDir + sin(u)*YDir)+R*sin(v)*ZDir
## ! where:
## ! - O, XDir, YDir and ZDir are respectively the
## ! origin, the "X Direction", the "Y Direction" and the "Z
## ! Direction" of its local coordinate system, and
## ! - R is the radius of the sphere.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u, and
## ! - [ - Pi/2., + Pi/2. ] for v.

type
  Geom_SphericalSurface* {.importcpp: "Geom_SphericalSurface",
                          header: "Geom_SphericalSurface.hxx", bycopy.} = object of Geom_ElementarySurface ##
                                                                                                    ## !
                                                                                                    ## A3
                                                                                                    ## is
                                                                                                    ## the
                                                                                                    ## local
                                                                                                    ## coordinate
                                                                                                    ## system
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## surface.
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
                                                                                                    ## as
                                                                                                    ## the
                                                                                                    ## normal
                                                                                                    ## Vector
                                                                                                    ## (N
                                                                                                    ## =
                                                                                                    ## D1U
                                                                                                    ## ^
                                                                                                    ## D1V)
                                                                                                    ## is
                                                                                                    ## directed
                                                                                                    ## away
                                                                                                    ## from
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## the
                                                                                                    ## center
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## sphere.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## direction
                                                                                                    ## of
                                                                                                    ## increasing
                                                                                                    ## parametric
                                                                                                    ## value
                                                                                                    ## V
                                                                                                    ## is
                                                                                                    ## defined
                                                                                                    ## by
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## rotation
                                                                                                    ## around
                                                                                                    ## the
                                                                                                    ## "YDirection"
                                                                                                    ## of
                                                                                                    ## A2
                                                                                                    ## in
                                                                                                    ## the
                                                                                                    ## trigonometric
                                                                                                    ## sense
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## and
                                                                                                    ## the
                                                                                                    ## orientation
                                                                                                    ## of
                                                                                                    ## increasing
                                                                                                    ## parametric
                                                                                                    ## value
                                                                                                    ## U
                                                                                                    ## is
                                                                                                    ## defined
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## by
                                                                                                    ## the
                                                                                                    ## rotation
                                                                                                    ## around
                                                                                                    ## the
                                                                                                    ## main
                                                                                                    ## direction
                                                                                                    ## of
                                                                                                    ## A2
                                                                                                    ## in
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## trigonometric
                                                                                                    ## sense.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Warnings
                                                                                                    ## :
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## It
                                                                                                    ## is
                                                                                                    ## not
                                                                                                    ## forbidden
                                                                                                    ## to
                                                                                                    ## create
                                                                                                    ## a
                                                                                                    ## spherical
                                                                                                    ## surface
                                                                                                    ## with
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Radius
                                                                                                    ## =
                                                                                                    ## 0.0
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Raised
                                                                                                    ## if
                                                                                                    ## Radius
                                                                                                    ## <
                                                                                                    ## 0.0.


proc constructGeom_SphericalSurface*(A3: gp_Ax3; Radius: Standard_Real): Geom_SphericalSurface {.
    constructor, importcpp: "Geom_SphericalSurface(@)",
    header: "Geom_SphericalSurface.hxx".}
proc constructGeom_SphericalSurface*(S: gp_Sphere): Geom_SphericalSurface {.
    constructor, importcpp: "Geom_SphericalSurface(@)",
    header: "Geom_SphericalSurface.hxx".}
proc SetRadius*(this: var Geom_SphericalSurface; R: Standard_Real) {.
    importcpp: "SetRadius", header: "Geom_SphericalSurface.hxx".}
proc SetSphere*(this: var Geom_SphericalSurface; S: gp_Sphere) {.
    importcpp: "SetSphere", header: "Geom_SphericalSurface.hxx".}
proc Sphere*(this: Geom_SphericalSurface): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "Geom_SphericalSurface.hxx".}
proc UReversedParameter*(this: Geom_SphericalSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_SphericalSurface.hxx".}
proc VReversedParameter*(this: Geom_SphericalSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_SphericalSurface.hxx".}
proc Area*(this: Geom_SphericalSurface): Standard_Real {.noSideEffect,
    importcpp: "Area", header: "Geom_SphericalSurface.hxx".}
proc Bounds*(this: Geom_SphericalSurface; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_SphericalSurface.hxx".}
proc Coefficients*(this: Geom_SphericalSurface; A1: var Standard_Real;
                  A2: var Standard_Real; A3: var Standard_Real; B1: var Standard_Real;
                  B2: var Standard_Real; B3: var Standard_Real; C1: var Standard_Real;
                  C2: var Standard_Real; C3: var Standard_Real; D: var Standard_Real) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_SphericalSurface.hxx".}
proc Radius*(this: Geom_SphericalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "Geom_SphericalSurface.hxx".}
proc Volume*(this: Geom_SphericalSurface): Standard_Real {.noSideEffect,
    importcpp: "Volume", header: "Geom_SphericalSurface.hxx".}
proc IsUClosed*(this: Geom_SphericalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_SphericalSurface.hxx".}
proc IsVClosed*(this: Geom_SphericalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_SphericalSurface.hxx".}
proc IsUPeriodic*(this: Geom_SphericalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_SphericalSurface.hxx".}
proc IsVPeriodic*(this: Geom_SphericalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_SphericalSurface.hxx".}
proc UIso*(this: Geom_SphericalSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_SphericalSurface.hxx".}
proc VIso*(this: Geom_SphericalSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_SphericalSurface.hxx".}
proc D0*(this: Geom_SphericalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_SphericalSurface.hxx".}
proc D1*(this: Geom_SphericalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "Geom_SphericalSurface.hxx".}
proc D2*(this: Geom_SphericalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "Geom_SphericalSurface.hxx".}
proc D3*(this: Geom_SphericalSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_SphericalSurface.hxx".}
proc DN*(this: Geom_SphericalSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_SphericalSurface.hxx".}
proc Transform*(this: var Geom_SphericalSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_SphericalSurface.hxx".}
proc Copy*(this: Geom_SphericalSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_SphericalSurface.hxx".}
proc DumpJson*(this: Geom_SphericalSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_SphericalSurface.hxx".}
type
  Geom_SphericalSurfacebase_type* = Geom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "Geom_SphericalSurface::get_type_name(@)",
                              header: "Geom_SphericalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_SphericalSurface::get_type_descriptor(@)",
    header: "Geom_SphericalSurface.hxx".}
proc DynamicType*(this: Geom_SphericalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_SphericalSurface.hxx".}