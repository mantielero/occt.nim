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
discard "forward decl of Geom_Surface"

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
  GeomSurfacebaseType* = GeomGeometry

proc uReverse*(this: var GeomSurface) {.importcpp: "UReverse",
                                    header: "Geom_Surface.hxx".}
proc uReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "UReversed", header: "Geom_Surface.hxx".}
proc uReversedParameter*(this: GeomSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_Surface.hxx".}
proc vReverse*(this: var GeomSurface) {.importcpp: "VReverse",
                                    header: "Geom_Surface.hxx".}
proc vReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "VReversed", header: "Geom_Surface.hxx".}
proc vReversedParameter*(this: GeomSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_Surface.hxx".}
proc transformParameters*(this: GeomSurface; u: var StandardReal; v: var StandardReal;
                         t: Trsf) {.noSideEffect, importcpp: "TransformParameters",
                                  header: "Geom_Surface.hxx".}
proc parametricTransformation*(this: GeomSurface; t: Trsf): GTrsf2d {.noSideEffect,
    importcpp: "ParametricTransformation", header: "Geom_Surface.hxx".}
proc bounds*(this: GeomSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_Surface.hxx".}
proc isUClosed*(this: GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_Surface.hxx".}
proc isVClosed*(this: GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_Surface.hxx".}
proc isUPeriodic*(this: GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_Surface.hxx".}
proc uPeriod*(this: GeomSurface): StandardReal {.noSideEffect, importcpp: "UPeriod",
    header: "Geom_Surface.hxx".}
proc isVPeriodic*(this: GeomSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_Surface.hxx".}
proc vPeriod*(this: GeomSurface): StandardReal {.noSideEffect, importcpp: "VPeriod",
    header: "Geom_Surface.hxx".}
proc uIso*(this: GeomSurface; u: StandardReal): Handle[GeomCurve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_Surface.hxx".}
proc vIso*(this: GeomSurface; v: StandardReal): Handle[GeomCurve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_Surface.hxx".}
#[ proc continuity*(this: GeomSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Surface.hxx".} ]#
proc isCNu*(this: GeomSurface; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNu", header: "Geom_Surface.hxx".}
proc isCNv*(this: GeomSurface; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNv", header: "Geom_Surface.hxx".}
proc d0*(this: GeomSurface; u: StandardReal; v: StandardReal; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_Surface.hxx".}
proc d1*(this: GeomSurface; u: StandardReal; v: StandardReal; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, importcpp: "D1", header: "Geom_Surface.hxx".}
proc d2*(this: GeomSurface; u: StandardReal; v: StandardReal; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_Surface.hxx".}
proc d3*(this: GeomSurface; u: StandardReal; v: StandardReal; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_Surface.hxx".}
proc dn*(this: GeomSurface; u: StandardReal; v: StandardReal; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_Surface.hxx".}
proc value*(this: GeomSurface; u: StandardReal; v: StandardReal): Pnt {.noSideEffect,
    importcpp: "Value", header: "Geom_Surface.hxx".}
proc dumpJson*(this: GeomSurface; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom_Surface.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "Geom_Surface::get_type_name(@)",
                            header: "Geom_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Surface::get_type_descriptor(@)", header: "Geom_Surface.hxx".}
proc dynamicType*(this: GeomSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Surface.hxx".} ]#