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
  HandleGeomConicalSurface* = Handle[GeomConicalSurface]

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
  GeomConicalSurface* {.importcpp: "Geom_ConicalSurface",
                       header: "Geom_ConicalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
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


proc constructGeomConicalSurface*(a3: GpAx3; ang: StandardReal; radius: StandardReal): GeomConicalSurface {.
    constructor, importcpp: "Geom_ConicalSurface(@)",
    header: "Geom_ConicalSurface.hxx".}
proc constructGeomConicalSurface*(c: GpCone): GeomConicalSurface {.constructor,
    importcpp: "Geom_ConicalSurface(@)", header: "Geom_ConicalSurface.hxx".}
proc setCone*(this: var GeomConicalSurface; c: GpCone) {.importcpp: "SetCone",
    header: "Geom_ConicalSurface.hxx".}
proc setRadius*(this: var GeomConicalSurface; r: StandardReal) {.
    importcpp: "SetRadius", header: "Geom_ConicalSurface.hxx".}
proc setSemiAngle*(this: var GeomConicalSurface; ang: StandardReal) {.
    importcpp: "SetSemiAngle", header: "Geom_ConicalSurface.hxx".}
proc cone*(this: GeomConicalSurface): GpCone {.noSideEffect, importcpp: "Cone",
    header: "Geom_ConicalSurface.hxx".}
proc uReversedParameter*(this: GeomConicalSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_ConicalSurface.hxx".}
proc vReversedParameter*(this: GeomConicalSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_ConicalSurface.hxx".}
proc vReverse*(this: var GeomConicalSurface) {.importcpp: "VReverse",
    header: "Geom_ConicalSurface.hxx".}
proc transformParameters*(this: GeomConicalSurface; u: var StandardReal;
                         v: var StandardReal; t: GpTrsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_ConicalSurface.hxx".}
proc parametricTransformation*(this: GeomConicalSurface; t: GpTrsf): GpGTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_ConicalSurface.hxx".}
proc apex*(this: GeomConicalSurface): GpPnt {.noSideEffect, importcpp: "Apex",
    header: "Geom_ConicalSurface.hxx".}
proc bounds*(this: GeomConicalSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_ConicalSurface.hxx".}
proc coefficients*(this: GeomConicalSurface; a1: var StandardReal;
                  a2: var StandardReal; a3: var StandardReal; b1: var StandardReal;
                  b2: var StandardReal; b3: var StandardReal; c1: var StandardReal;
                  c2: var StandardReal; c3: var StandardReal; d: var StandardReal) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_ConicalSurface.hxx".}
proc refRadius*(this: GeomConicalSurface): StandardReal {.noSideEffect,
    importcpp: "RefRadius", header: "Geom_ConicalSurface.hxx".}
proc semiAngle*(this: GeomConicalSurface): StandardReal {.noSideEffect,
    importcpp: "SemiAngle", header: "Geom_ConicalSurface.hxx".}
proc isUClosed*(this: GeomConicalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_ConicalSurface.hxx".}
proc isVClosed*(this: GeomConicalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_ConicalSurface.hxx".}
proc isUPeriodic*(this: GeomConicalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_ConicalSurface.hxx".}
proc isVPeriodic*(this: GeomConicalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_ConicalSurface.hxx".}
proc uIso*(this: GeomConicalSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_ConicalSurface.hxx".}
proc vIso*(this: GeomConicalSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_ConicalSurface.hxx".}
proc d0*(this: GeomConicalSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_ConicalSurface.hxx".}
proc d1*(this: GeomConicalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "Geom_ConicalSurface.hxx".}
proc d2*(this: GeomConicalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    noSideEffect, importcpp: "D2", header: "Geom_ConicalSurface.hxx".}
proc d3*(this: GeomConicalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "Geom_ConicalSurface.hxx".}
proc dn*(this: GeomConicalSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "Geom_ConicalSurface.hxx".}
proc transform*(this: var GeomConicalSurface; t: GpTrsf) {.importcpp: "Transform",
    header: "Geom_ConicalSurface.hxx".}
proc copy*(this: GeomConicalSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_ConicalSurface.hxx".}
proc dumpJson*(this: GeomConicalSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_ConicalSurface.hxx".}
type
  GeomConicalSurfacebaseType* = GeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "Geom_ConicalSurface::get_type_name(@)",
                            header: "Geom_ConicalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_ConicalSurface::get_type_descriptor(@)",
    header: "Geom_ConicalSurface.hxx".}
proc dynamicType*(this: GeomConicalSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_ConicalSurface.hxx".}

