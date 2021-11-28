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

discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Surface"
type
  HandleGeomSurface* = Handle[GeomSurface]

## ! Describes the common behavior of surfaces in 3D
## ! space. The Geom package provides many
## ! implementations of concrete derived surfaces, such as
## ! planes, cylinders, cones, spheres and tori, surfaces of
## ! linear extrusion, surfaces of revolution, Bezier and
## ! BSpline surfaces, and so on.
## ! The key characteristic of these surfaces is that they
## ! are parameterized. Geom_Surface demonstrates:
## ! - how to work with the parametric equation of a
## ! surface to compute the point of parameters (u,
## ! v), and, at this point, the 1st, 2nd ... Nth derivative,
## ! - how to find global information about a surface in
## ! each parametric direction (for example, level of
## ! continuity, whether the surface is closed, its
## ! periodicity, the bounds of the parameters and so on), and
## ! - how the parameters change when geometric
## ! transformations are applied to the surface, or the
## ! orientation is modified.
## ! Note that all surfaces must have a geometric
## ! continuity, and any surface is at least "C0". Generally,
## ! continuity is checked at construction time or when the
## ! curve is edited. Where this is not the case, the
## ! documentation makes this explicit.
## ! Warning
## ! The Geom package does not prevent the construction of
## ! surfaces with null areas, or surfaces which self-intersect.

type
  GeomSurface* {.importcpp: "Geom_Surface", header: "Geom_Surface.hxx", bycopy.} = object of GeomGeometry ##
                                                                                                ## !
                                                                                                ## Reverses
                                                                                                ## the
                                                                                                ## U
                                                                                                ## direction
                                                                                                ## of
                                                                                                ## parametrization
                                                                                                ## of
                                                                                                ## <me>.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## bounds
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface
                                                                                                ## are
                                                                                                ## not
                                                                                                ## modified.


proc uReverse*(this: var GeomSurface) {.cdecl, importcpp: "UReverse", dynlib: tkg3d.}
proc uReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "UReversed", dynlib: tkg3d.}
proc uReversedParameter*(this: GeomSurface; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UReversedParameter", dynlib: tkg3d.}
proc vReverse*(this: var GeomSurface) {.cdecl, importcpp: "VReverse", dynlib: tkg3d.}
proc vReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "VReversed", dynlib: tkg3d.}
proc vReversedParameter*(this: GeomSurface; v: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VReversedParameter", dynlib: tkg3d.}
proc transformParameters*(this: GeomSurface; u: var cfloat; v: var cfloat; t: Trsf) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", dynlib: tkg3d.}
proc parametricTransformation*(this: GeomSurface; t: Trsf): GTrsf2d {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", dynlib: tkg3d.}
proc bounds*(this: GeomSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkg3d.}
proc isUClosed*(this: GeomSurface): bool {.noSideEffect, cdecl,
                                       importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomSurface): bool {.noSideEffect, cdecl,
                                       importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: GeomSurface): cfloat {.noSideEffect, cdecl, importcpp: "UPeriod",
                                       dynlib: tkg3d.}
proc isVPeriodic*(this: GeomSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: GeomSurface): cfloat {.noSideEffect, cdecl, importcpp: "VPeriod",
                                       dynlib: tkg3d.}
proc uIso*(this: GeomSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "UIso", dynlib: tkg3d.}
proc vIso*(this: GeomSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "VIso", dynlib: tkg3d.}
proc continuity*(this: GeomSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc isCNu*(this: GeomSurface; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCNu",
    dynlib: tkg3d.}
proc isCNv*(this: GeomSurface; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCNv",
    dynlib: tkg3d.}
proc d0*(this: GeomSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl, importcpp: "D2",
    dynlib: tkg3d.}
proc d3*(this: GeomSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.noSideEffect,
    cdecl, importcpp: "DN", dynlib: tkg3d.}
proc value*(this: GeomSurface; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc dumpJson*(this: GeomSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}