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
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Plane"
type
  HandleGeomPlane* = Handle[GeomPlane]

## ! Describes a plane in 3D space.
## ! A plane is positioned in space by a coordinate system
## ! (a gp_Ax3 object) such that the plane is defined by
## ! the origin, "X Direction" and "Y Direction" of this
## ! coordinate system.
## ! This coordinate system is the "local coordinate
## ! system" of the plane. The following apply:
## ! - Its "X Direction" and "Y Direction" are respectively
## ! the u and v parametric directions of the plane.
## ! - Its origin is the origin of the u and v parameters
## ! (also called the "origin" of the plane).
## ! - Its "main Direction" is a vector normal to the plane.
## ! This normal vector gives the orientation of the
## ! plane only if the local coordinate system is "direct".
## ! (The orientation of the plane is always defined by
## ! the "X Direction" and the "Y Direction" of its local
## ! coordinate system.)
## ! The parametric equation of the plane is:
## ! P(u, v) = O + u*XDir + v*YDir
## ! where O, XDir and YDir are respectively the
## ! origin, the "X Direction" and the "Y Direction" of the
## ! local coordinate system of the plane.
## ! The parametric range of the two parameters u and v
## ! is ] -infinity, +infinity [.

type
  GeomPlane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## plane
                                                                                                   ## located
                                                                                                   ## in
                                                                                                   ## 3D
                                                                                                   ## space
                                                                                                   ## with
                                                                                                   ## an
                                                                                                   ## axis
                                                                                                   ## placement
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## three
                                                                                                   ## axis.
                                                                                                   ## The
                                                                                                   ## "ZDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## direction
                                                                                                   ## normal
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "Location"
                                                                                                   ## point
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## origin
                                                                                                   ## of
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "XDirection"
                                                                                                   ## and
                                                                                                   ## "YDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## define
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## directions
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## U
                                                                                                   ## isoparametric
                                                                                                   ## and
                                                                                                   ## V
                                                                                                   ## isoparametric
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## curves.


proc newGeomPlane*(a3: Ax3): GeomPlane {.cdecl, constructor,
                                     importcpp: "Geom_Plane(@)", dynlib: tkmath.}
proc newGeomPlane*(pl: Pln): GeomPlane {.cdecl, constructor,
                                     importcpp: "Geom_Plane(@)", dynlib: tkmath.}
proc newGeomPlane*(p: Pnt; v: Dir): GeomPlane {.cdecl, constructor,
    importcpp: "Geom_Plane(@)", dynlib: tkmath.}
proc newGeomPlane*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): GeomPlane {.cdecl,
    constructor, importcpp: "Geom_Plane(@)", dynlib: tkmath.}
proc setPln*(this: var GeomPlane; pl: Pln) {.cdecl, importcpp: "SetPln", dynlib: tkmath.}
proc pln*(this: GeomPlane): Pln {.noSideEffect, cdecl, importcpp: "Pln", dynlib: tkmath.}
proc uReverse*(this: var GeomPlane) {.cdecl, importcpp: "UReverse", dynlib: tkmath.}
proc uReversedParameter*(this: GeomPlane; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UReversedParameter", dynlib: tkmath.}
proc vReverse*(this: var GeomPlane) {.cdecl, importcpp: "VReverse", dynlib: tkmath.}
proc vReversedParameter*(this: GeomPlane; v: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VReversedParameter", dynlib: tkmath.}
proc transformParameters*(this: GeomPlane; u: var cfloat; v: var cfloat; t: Trsf) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", dynlib: tkmath.}
proc parametricTransformation*(this: GeomPlane; t: Trsf): GTrsf2d {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", dynlib: tkmath.}
proc bounds*(this: GeomPlane; u1: var cfloat; u2: var cfloat; v1: var cfloat; v2: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkmath.}
proc coefficients*(this: GeomPlane; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat) {.noSideEffect, cdecl, importcpp: "Coefficients",
                                dynlib: tkmath.}
proc isUClosed*(this: GeomPlane): bool {.noSideEffect, cdecl, importcpp: "IsUClosed",
                                     dynlib: tkmath.}
proc isVClosed*(this: GeomPlane): bool {.noSideEffect, cdecl, importcpp: "IsVClosed",
                                     dynlib: tkmath.}
proc isUPeriodic*(this: GeomPlane): bool {.noSideEffect, cdecl,
                                       importcpp: "IsUPeriodic", dynlib: tkmath.}
proc isVPeriodic*(this: GeomPlane): bool {.noSideEffect, cdecl,
                                       importcpp: "IsVPeriodic", dynlib: tkmath.}
proc uIso*(this: GeomPlane; u: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "UIso", dynlib: tkmath.}
proc vIso*(this: GeomPlane; v: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "VIso", dynlib: tkmath.}
proc d0*(this: GeomPlane; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkmath.}
proc d1*(this: GeomPlane; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, cdecl, importcpp: "D1", dynlib: tkmath.}
proc d2*(this: GeomPlane; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl, importcpp: "D2",
    dynlib: tkmath.}
proc d3*(this: GeomPlane; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkmath.}
proc dn*(this: GeomPlane; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.noSideEffect,
    cdecl, importcpp: "DN", dynlib: tkmath.}
proc transform*(this: var GeomPlane; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc copy*(this: GeomPlane): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc dumpJson*(this: GeomPlane; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}