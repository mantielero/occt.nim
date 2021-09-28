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
  HandleC1C1* = Handle[GeomToroidalSurface]

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
  GeomToroidalSurface* {.importcpp: "Geom_ToroidalSurface",
                        header: "Geom_ToroidalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
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


proc constructGeomToroidalSurface*(a3: Ax3; majorRadius: StandardReal;
                                  minorRadius: StandardReal): GeomToroidalSurface {.
    constructor, importcpp: "Geom_ToroidalSurface(@)",
    header: "Geom_ToroidalSurface.hxx".}
proc constructGeomToroidalSurface*(t: Torus): GeomToroidalSurface {.constructor,
    importcpp: "Geom_ToroidalSurface(@)", header: "Geom_ToroidalSurface.hxx".}
proc setMajorRadius*(this: var GeomToroidalSurface; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc setMinorRadius*(this: var GeomToroidalSurface; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc setTorus*(this: var GeomToroidalSurface; t: Torus) {.importcpp: "SetTorus",
    header: "Geom_ToroidalSurface.hxx".}
proc torus*(this: GeomToroidalSurface): Torus {.noSideEffect, importcpp: "Torus",
    header: "Geom_ToroidalSurface.hxx".}
proc uReversedParameter*(this: GeomToroidalSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_ToroidalSurface.hxx".}
proc vReversedParameter*(this: GeomToroidalSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_ToroidalSurface.hxx".}
proc area*(this: GeomToroidalSurface): StandardReal {.noSideEffect,
    importcpp: "Area", header: "Geom_ToroidalSurface.hxx".}
proc bounds*(this: GeomToroidalSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_ToroidalSurface.hxx".}
proc coefficients*(this: GeomToroidalSurface; coef: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_ToroidalSurface.hxx".}
proc majorRadius*(this: GeomToroidalSurface): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc minorRadius*(this: GeomToroidalSurface): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc volume*(this: GeomToroidalSurface): StandardReal {.noSideEffect,
    importcpp: "Volume", header: "Geom_ToroidalSurface.hxx".}
proc isUClosed*(this: GeomToroidalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_ToroidalSurface.hxx".}
proc isVClosed*(this: GeomToroidalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_ToroidalSurface.hxx".}
proc isUPeriodic*(this: GeomToroidalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc isVPeriodic*(this: GeomToroidalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc uIso*(this: GeomToroidalSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_ToroidalSurface.hxx".}
proc vIso*(this: GeomToroidalSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_ToroidalSurface.hxx".}
proc d0*(this: GeomToroidalSurface; u: StandardReal; v: StandardReal; p: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_ToroidalSurface.hxx".}
proc d1*(this: GeomToroidalSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec) {.noSideEffect, importcpp: "D1",
                                header: "Geom_ToroidalSurface.hxx".}
proc d2*(this: GeomToroidalSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_ToroidalSurface.hxx".}
proc d3*(this: GeomToroidalSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec;
        d3v: var Vec; d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
    header: "Geom_ToroidalSurface.hxx".}
proc dn*(this: GeomToroidalSurface; u: StandardReal; v: StandardReal; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_ToroidalSurface.hxx".}
proc transform*(this: var GeomToroidalSurface; t: Trsf) {.importcpp: "Transform",
    header: "Geom_ToroidalSurface.hxx".}
proc copy*(this: GeomToroidalSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_ToroidalSurface.hxx".}
proc dumpJson*(this: GeomToroidalSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_ToroidalSurface.hxx".}
type
  GeomToroidalSurfacebaseType* = GeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "Geom_ToroidalSurface::get_type_name(@)",
                            header: "Geom_ToroidalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_ToroidalSurface::get_type_descriptor(@)",
    header: "Geom_ToroidalSurface.hxx".}
proc dynamicType*(this: GeomToroidalSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_ToroidalSurface.hxx".}