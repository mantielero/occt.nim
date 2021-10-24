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
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_CylindricalSurface"
type
  HandleGeomCylindricalSurface* = Handle[GeomCylindricalSurface]

## ! This class defines the infinite cylindrical surface.
## !
## ! Every cylindrical surface is set by the following equation:
## ! S(U,V) = Location + R*cos(U)*XAxis + R*sin(U)*YAxis + V*ZAxis,
## ! where R is cylinder radius.
## !
## ! The local coordinate system of the CylindricalSurface is defined
## ! with an axis placement (see class ElementarySurface).
## !
## ! The "ZAxis" is the symmetry axis of the CylindricalSurface,
## ! it gives the direction of increasing parametric value V.
## !
## ! The parametrization range is :
## ! U [0, 2*PI],  V ]- infinite, + infinite[
## !
## ! The "XAxis" and the "YAxis" define the placement plane of the
## ! surface (Z = 0, and parametric value V = 0)  perpendicular to
## ! the symmetry axis. The "XAxis" defines the origin of the
## ! parameter U = 0.  The trigonometric sense gives the positive
## ! orientation for the parameter U.
## !
## ! When you create a CylindricalSurface the U and V directions of
## ! parametrization are such that at each point of the surface the
## ! normal is oriented towards the "outside region".
## !
## ! The methods UReverse VReverse change the orientation of the
## ! surface.

type
  GeomCylindricalSurface* {.importcpp: "Geom_CylindricalSurface",
                           header: "Geom_CylindricalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                      ## !
                                                                                                      ## A3
                                                                                                      ## defines
                                                                                                      ## the
                                                                                                      ## local
                                                                                                      ## coordinate
                                                                                                      ## system
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## cylindrical
                                                                                                      ## surface.
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
                                                                                                      ## cylindrical
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
                                                                                                      ## 0.0


proc newGeomCylindricalSurface*(a3: Ax3; radius: cfloat): GeomCylindricalSurface {.
    cdecl, constructor, importcpp: "Geom_CylindricalSurface(@)", dynlib: tkg3d.}
proc newGeomCylindricalSurface*(c: Cylinder): GeomCylindricalSurface {.cdecl,
    constructor, importcpp: "Geom_CylindricalSurface(@)", dynlib: tkg3d.}
proc setCylinder*(this: var GeomCylindricalSurface; c: Cylinder) {.cdecl,
    importcpp: "SetCylinder", dynlib: tkg3d.}
proc setRadius*(this: var GeomCylindricalSurface; r: cfloat) {.cdecl,
    importcpp: "SetRadius", dynlib: tkg3d.}
proc cylinder*(this: GeomCylindricalSurface): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkg3d.}
proc uReversedParameter*(this: GeomCylindricalSurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", dynlib: tkg3d.}
proc vReversedParameter*(this: GeomCylindricalSurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", dynlib: tkg3d.}
proc transformParameters*(this: GeomCylindricalSurface; u: var cfloat; v: var cfloat;
                         t: Trsf) {.noSideEffect, cdecl,
                                  importcpp: "TransformParameters", dynlib: tkg3d.}
proc parametricTransformation*(this: GeomCylindricalSurface; t: Trsf): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", dynlib: tkg3d.}
proc bounds*(this: GeomCylindricalSurface; u1: var cfloat; u2: var cfloat;
            v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds",
                                        dynlib: tkg3d.}
proc coefficients*(this: GeomCylindricalSurface; a1: var cfloat; a2: var cfloat;
                  a3: var cfloat; b1: var cfloat; b2: var cfloat; b3: var cfloat;
                  c1: var cfloat; c2: var cfloat; c3: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", dynlib: tkg3d.}
proc radius*(this: GeomCylindricalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", dynlib: tkg3d.}
proc isUClosed*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc uIso*(this: GeomCylindricalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", dynlib: tkg3d.}
proc vIso*(this: GeomCylindricalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", dynlib: tkg3d.}
proc d0*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect,
    cdecl, importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkg3d.}
proc dn*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkg3d.}
proc transform*(this: var GeomCylindricalSurface; t: Trsf) {.cdecl,
    importcpp: "Transform", dynlib: tkg3d.}
proc copy*(this: GeomCylindricalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc dumpJson*(this: GeomCylindricalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}