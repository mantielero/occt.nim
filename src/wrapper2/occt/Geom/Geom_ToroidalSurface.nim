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
  Geom_ElementarySurface, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Torus"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_ToroidalSurface"
discard "forward decl of Geom_ToroidalSurface"
type
  Handle_Geom_ToroidalSurface* = handle[Geom_ToroidalSurface]

## ! Describes a torus.
## ! A torus is defined by its major and minor radii, and
## ! positioned in space with a coordinate system (a
## ! gp_Ax3 object) as follows:
## ! - The origin is the center of the torus.
## ! - The surface is obtained by rotating a circle around
## ! the "main Direction". This circle has a radius equal
## ! to the minor radius, and is located in the plane
## ! defined by the origin, "X Direction" and "main
## ! Direction". It is centered on the "X Axis", on its
## ! positive side, and positioned at a distance from the
## ! origin equal to the major radius. This circle is the
## ! "reference circle" of the torus.
## ! - The plane defined by the origin, the "X Direction"
## ! and the "Y Direction" is called the "reference plane" of the torus.
## ! This coordinate system is the "local coordinate
## ! system" of the torus. The following apply:
## ! - Rotation around its "main Axis", in the trigonometric
## ! sense given by "X Direction" and "Y Direction",
## ! defines the u parametric direction.
## ! - The "X Axis" gives the origin for the u parameter.
## ! - Rotation around an axis parallel to the "Y Axis" and
## ! passing through the center of the "reference circle"
## ! gives the v parameter on the "reference circle".
## ! - The "X Axis" gives the origin of the v parameter on
## ! the "reference circle".
## ! - The v parametric direction is oriented by the
## ! inverse of the "main Direction", i.e. near 0, as v
## ! increases, the Z coordinate decreases. (This
## ! implies that the "Y Direction" orients the reference
## ! circle only when the local coordinate system is direct.)
## ! - The u isoparametric curve is a circle obtained by
## ! rotating the "reference circle" of the torus through
## ! an angle u about the "main Axis".
## ! The parametric equation of the torus is :
## ! P(u, v) = O + (R + r*cos(v)) * (cos(u)*XDir +
## ! sin(u)*YDir ) + r*sin(v)*ZDir, where:
## ! - O, XDir, YDir and ZDir are respectively the
## ! origin, the "X Direction", the "Y Direction" and the "Z
## ! Direction" of the local coordinate system,
## ! - r and R are, respectively, the minor and major radius.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u
## ! - [ 0, 2.*Pi ] for v

type
  Geom_ToroidalSurface* {.importcpp: "Geom_ToroidalSurface",
                         header: "Geom_ToroidalSurface.hxx", bycopy.} = object of Geom_ElementarySurface ##
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
                                                                                                  ## The
                                                                                                  ## orientation
                                                                                                  ## of
                                                                                                  ## increasing
                                                                                                  ## V
                                                                                                  ## parametric
                                                                                                  ## value
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
                                                                                                  ## axis
                                                                                                  ## (ZAxis)
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## trigonometric
                                                                                                  ## sense.
                                                                                                  ## The
                                                                                                  ## parametrization
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## U
                                                                                                  ## direction
                                                                                                  ## is
                                                                                                  ## defined
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
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## is
                                                                                                  ## oriented
                                                                                                  ## towards
                                                                                                  ## the
                                                                                                  ## "outside
                                                                                                  ## region"
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface.
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
                                                                                                  ## toroidal
                                                                                                  ## surface
                                                                                                  ## with
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## MajorRadius
                                                                                                  ## =
                                                                                                  ## MinorRadius
                                                                                                  ## =
                                                                                                  ## 0.0
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Raised
                                                                                                  ## if
                                                                                                  ## MinorRadius
                                                                                                  ## <
                                                                                                  ## 0.0
                                                                                                  ## or
                                                                                                  ## if
                                                                                                  ## MajorRadius
                                                                                                  ## <
                                                                                                  ## 0.0


proc constructGeom_ToroidalSurface*(A3: gp_Ax3; MajorRadius: Standard_Real;
                                   MinorRadius: Standard_Real): Geom_ToroidalSurface {.
    constructor, importcpp: "Geom_ToroidalSurface(@)",
    header: "Geom_ToroidalSurface.hxx".}
proc constructGeom_ToroidalSurface*(T: gp_Torus): Geom_ToroidalSurface {.
    constructor, importcpp: "Geom_ToroidalSurface(@)",
    header: "Geom_ToroidalSurface.hxx".}
proc SetMajorRadius*(this: var Geom_ToroidalSurface; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc SetMinorRadius*(this: var Geom_ToroidalSurface; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc SetTorus*(this: var Geom_ToroidalSurface; T: gp_Torus) {.importcpp: "SetTorus",
    header: "Geom_ToroidalSurface.hxx".}
proc Torus*(this: Geom_ToroidalSurface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "Geom_ToroidalSurface.hxx".}
proc UReversedParameter*(this: Geom_ToroidalSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_ToroidalSurface.hxx".}
proc VReversedParameter*(this: Geom_ToroidalSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_ToroidalSurface.hxx".}
proc Area*(this: Geom_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "Area", header: "Geom_ToroidalSurface.hxx".}
proc Bounds*(this: Geom_ToroidalSurface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_ToroidalSurface.hxx".}
proc Coefficients*(this: Geom_ToroidalSurface; Coef: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_ToroidalSurface.hxx".}
proc MajorRadius*(this: Geom_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc MinorRadius*(this: Geom_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc Volume*(this: Geom_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "Volume", header: "Geom_ToroidalSurface.hxx".}
proc IsUClosed*(this: Geom_ToroidalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_ToroidalSurface.hxx".}
proc IsVClosed*(this: Geom_ToroidalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_ToroidalSurface.hxx".}
proc IsUPeriodic*(this: Geom_ToroidalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc IsVPeriodic*(this: Geom_ToroidalSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc UIso*(this: Geom_ToroidalSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_ToroidalSurface.hxx".}
proc VIso*(this: Geom_ToroidalSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_ToroidalSurface.hxx".}
proc D0*(this: Geom_ToroidalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_ToroidalSurface.hxx".}
proc D1*(this: Geom_ToroidalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_ToroidalSurface.hxx".}
proc D2*(this: Geom_ToroidalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_ToroidalSurface.hxx".}
proc D3*(this: Geom_ToroidalSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_ToroidalSurface.hxx".}
proc DN*(this: Geom_ToroidalSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_ToroidalSurface.hxx".}
proc Transform*(this: var Geom_ToroidalSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_ToroidalSurface.hxx".}
proc Copy*(this: Geom_ToroidalSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_ToroidalSurface.hxx".}
proc DumpJson*(this: Geom_ToroidalSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_ToroidalSurface.hxx".}
type
  Geom_ToroidalSurfacebase_type* = Geom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "Geom_ToroidalSurface::get_type_name(@)",
                              header: "Geom_ToroidalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_ToroidalSurface::get_type_descriptor(@)",
    header: "Geom_ToroidalSurface.hxx".}
proc DynamicType*(this: Geom_ToroidalSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_ToroidalSurface.hxx".}