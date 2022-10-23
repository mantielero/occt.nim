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
type
  HandleGeomToroidalSurface* = Handle[GeomToroidalSurface]

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


proc newGeomToroidalSurface*(a3: Ax3Obj; majorRadius: cfloat; minorRadius: cfloat): GeomToroidalSurface {.
    cdecl, constructor, importcpp: "Geom_ToroidalSurface(@)", header: "Geom_ToroidalSurface.hxx".}
proc newGeomToroidalSurface*(t: TorusObj): GeomToroidalSurface {.cdecl, constructor,
    importcpp: "Geom_ToroidalSurface(@)", header: "Geom_ToroidalSurface.hxx".}
proc setMajorRadius*(this: var GeomToroidalSurface; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc setMinorRadius*(this: var GeomToroidalSurface; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc setTorus*(this: var GeomToroidalSurface; t: TorusObj) {.cdecl, importcpp: "SetTorus",
    header: "Geom_ToroidalSurface.hxx".}
proc torus*(this: GeomToroidalSurface): TorusObj {.noSideEffect, cdecl,
    importcpp: "Torus", header: "Geom_ToroidalSurface.hxx".}
proc uReversedParameter*(this: GeomToroidalSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", header: "Geom_ToroidalSurface.hxx".}
proc vReversedParameter*(this: GeomToroidalSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", header: "Geom_ToroidalSurface.hxx".}
proc area*(this: GeomToroidalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Area", header: "Geom_ToroidalSurface.hxx".}
proc bounds*(this: GeomToroidalSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_ToroidalSurface.hxx".}
proc coefficients*(this: GeomToroidalSurface; coef: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "Geom_ToroidalSurface.hxx".}
proc majorRadius*(this: GeomToroidalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", header: "Geom_ToroidalSurface.hxx".}
proc minorRadius*(this: GeomToroidalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", header: "Geom_ToroidalSurface.hxx".}
proc volume*(this: GeomToroidalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Volume", header: "Geom_ToroidalSurface.hxx".}
proc isUClosed*(this: GeomToroidalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_ToroidalSurface.hxx".}
proc isVClosed*(this: GeomToroidalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_ToroidalSurface.hxx".}
proc isUPeriodic*(this: GeomToroidalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc isVPeriodic*(this: GeomToroidalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_ToroidalSurface.hxx".}
proc uIso*(this: GeomToroidalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_ToroidalSurface.hxx".}
proc vIso*(this: GeomToroidalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_ToroidalSurface.hxx".}
proc d0*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect,
    cdecl, importcpp: "D0", header: "Geom_ToroidalSurface.hxx".}
proc d1*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_ToroidalSurface.hxx".}
proc d2*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_ToroidalSurface.hxx".}
proc d3*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_ToroidalSurface.hxx".}
proc dn*(this: GeomToroidalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_ToroidalSurface.hxx".}
proc transform*(this: var GeomToroidalSurface; t: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Geom_ToroidalSurface.hxx".}
proc copy*(this: GeomToroidalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_ToroidalSurface.hxx".}
proc dumpJson*(this: GeomToroidalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_ToroidalSurface.hxx".}