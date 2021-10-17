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


proc newGeomConicalSurface*(a3: Ax3; ang: cfloat; radius: cfloat): GeomConicalSurface {.
    cdecl, constructor, importcpp: "Geom_ConicalSurface(@)", dynlib: tkmath.}
proc newGeomConicalSurface*(c: Cone): GeomConicalSurface {.cdecl, constructor,
    importcpp: "Geom_ConicalSurface(@)", dynlib: tkmath.}
proc setCone*(this: var GeomConicalSurface; c: Cone) {.cdecl, importcpp: "SetCone",
    dynlib: tkmath.}
proc setRadius*(this: var GeomConicalSurface; r: cfloat) {.cdecl,
    importcpp: "SetRadius", dynlib: tkmath.}
proc setSemiAngle*(this: var GeomConicalSurface; ang: cfloat) {.cdecl,
    importcpp: "SetSemiAngle", dynlib: tkmath.}
proc cone*(this: GeomConicalSurface): Cone {.noSideEffect, cdecl, importcpp: "Cone",
    dynlib: tkmath.}
proc uReversedParameter*(this: GeomConicalSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", dynlib: tkmath.}
proc vReversedParameter*(this: GeomConicalSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", dynlib: tkmath.}
proc vReverse*(this: var GeomConicalSurface) {.cdecl, importcpp: "VReverse",
    dynlib: tkmath.}
proc transformParameters*(this: GeomConicalSurface; u: var cfloat; v: var cfloat; t: Trsf) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", dynlib: tkmath.}
proc parametricTransformation*(this: GeomConicalSurface; t: Trsf): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", dynlib: tkmath.}
proc apex*(this: GeomConicalSurface): Pnt {.noSideEffect, cdecl, importcpp: "Apex",
                                        dynlib: tkmath.}
proc bounds*(this: GeomConicalSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkmath.}
proc coefficients*(this: GeomConicalSurface; a1: var cfloat; a2: var cfloat;
                  a3: var cfloat; b1: var cfloat; b2: var cfloat; b3: var cfloat;
                  c1: var cfloat; c2: var cfloat; c3: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", dynlib: tkmath.}
proc refRadius*(this: GeomConicalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "RefRadius", dynlib: tkmath.}
proc semiAngle*(this: GeomConicalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "SemiAngle", dynlib: tkmath.}
proc isUClosed*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkmath.}
proc isVClosed*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkmath.}
proc isUPeriodic*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkmath.}
proc isVPeriodic*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkmath.}
proc uIso*(this: GeomConicalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", dynlib: tkmath.}
proc vIso*(this: GeomConicalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", dynlib: tkmath.}
proc d0*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkmath.}
proc d1*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkmath.}
proc d2*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkmath.}
proc d3*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkmath.}
proc dn*(this: GeomConicalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkmath.}
proc transform*(this: var GeomConicalSurface; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc copy*(this: GeomConicalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc dumpJson*(this: GeomConicalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}