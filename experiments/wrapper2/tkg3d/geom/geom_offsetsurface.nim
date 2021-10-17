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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_OffsetSurface"
type
  HandleGeomOffsetSurface* = Handle[GeomOffsetSurface]

## ! Describes an offset surface in 3D space.
## ! An offset surface is defined by:
## ! - the basis surface to which it is parallel, and
## ! - the distance between the offset surface and its basis surface.
## ! A point on the offset surface is built by measuring the
## ! offset value along the normal vector at a point on the
## ! basis surface. This normal vector is given by the cross
## ! product D1u^D1v, where D1u and D1v are the
## ! vectors tangential to the basis surface in the u and v
## ! parametric directions at this point. The side of the
## ! basis surface on which the offset is measured
## ! depends on the sign of the offset value.
## ! A Geom_OffsetSurface surface can be
## ! self-intersecting, even if the basis surface does not
## ! self-intersect. The self-intersecting portions are not
## ! deleted at the time of construction.
## ! Warning
## ! There must be only one normal vector defined at any
## ! point on the basis surface. This must be verified by the
## ! user as no check is made at the time of construction
## ! to detect points with multiple possible normal
## ! directions (for example, the top of a conical surface).

type
  GeomOffsetSurface* {.importcpp: "Geom_OffsetSurface",
                      header: "Geom_OffsetSurface.hxx", bycopy.} = object of GeomSurface ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## a
                                                                                  ## surface
                                                                                  ## offset
                                                                                  ## from
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ##
                                                                                  ## !
                                                                                  ## S,
                                                                                  ## where
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## the
                                                                                  ## distance
                                                                                  ## between
                                                                                  ## the
                                                                                  ## offset
                                                                                  ##
                                                                                  ## !
                                                                                  ## surface
                                                                                  ## and
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## at
                                                                                  ## any
                                                                                  ## point.
                                                                                  ##
                                                                                  ## !
                                                                                  ## A
                                                                                  ## point
                                                                                  ## on
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## built
                                                                                  ## by
                                                                                  ## measuring
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## value
                                                                                  ## along
                                                                                  ## a
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## at
                                                                                  ## a
                                                                                  ## point
                                                                                  ## on
                                                                                  ##
                                                                                  ## !
                                                                                  ## S.
                                                                                  ## This
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## is
                                                                                  ## given
                                                                                  ## by
                                                                                  ## the
                                                                                  ## cross
                                                                                  ## product
                                                                                  ##
                                                                                  ## !
                                                                                  ## D1u^D1v,
                                                                                  ## where
                                                                                  ## D1u
                                                                                  ## and
                                                                                  ## D1v
                                                                                  ## are
                                                                                  ## the
                                                                                  ## vectors
                                                                                  ##
                                                                                  ## !
                                                                                  ## tangential
                                                                                  ## to
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## in
                                                                                  ## the
                                                                                  ## u
                                                                                  ## and
                                                                                  ## v
                                                                                  ##
                                                                                  ## !
                                                                                  ## parametric
                                                                                  ## directions
                                                                                  ## at
                                                                                  ## this
                                                                                  ## point.
                                                                                  ## The
                                                                                  ## side
                                                                                  ## of
                                                                                  ## S
                                                                                  ## on
                                                                                  ##
                                                                                  ## !
                                                                                  ## which
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## value
                                                                                  ## is
                                                                                  ## measured
                                                                                  ## is
                                                                                  ## indicated
                                                                                  ## by
                                                                                  ##
                                                                                  ## !
                                                                                  ## this
                                                                                  ## normal
                                                                                  ## vector
                                                                                  ## if
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## positive,
                                                                                  ## or
                                                                                  ## is
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## inverse
                                                                                  ## sense
                                                                                  ## if
                                                                                  ## Offset
                                                                                  ## is
                                                                                  ## negative.
                                                                                  ##
                                                                                  ## !
                                                                                  ## If
                                                                                  ## isNotCheckC0
                                                                                  ## =
                                                                                  ## TRUE
                                                                                  ## checking
                                                                                  ## if
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## has
                                                                                  ## C0-continuity
                                                                                  ##
                                                                                  ## !
                                                                                  ## is
                                                                                  ## not
                                                                                  ## made.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warnings
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## The
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## built
                                                                                  ## with
                                                                                  ## a
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## surface
                                                                                  ## S.
                                                                                  ## Therefore,
                                                                                  ## when
                                                                                  ## S
                                                                                  ## is
                                                                                  ## modified
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## offset
                                                                                  ## surface
                                                                                  ## is
                                                                                  ## not
                                                                                  ## modified.
                                                                                  ##
                                                                                  ## !
                                                                                  ## -
                                                                                  ## No
                                                                                  ## check
                                                                                  ## is
                                                                                  ## made
                                                                                  ## at
                                                                                  ## the
                                                                                  ## time
                                                                                  ## of
                                                                                  ## construction
                                                                                  ## to
                                                                                  ##
                                                                                  ## !
                                                                                  ## detect
                                                                                  ## points
                                                                                  ## on
                                                                                  ## S
                                                                                  ## with
                                                                                  ## multiple
                                                                                  ## possible
                                                                                  ## normal
                                                                                  ## directions.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Raised
                                                                                  ## if
                                                                                  ## S
                                                                                  ## is
                                                                                  ## not
                                                                                  ## at
                                                                                  ## least
                                                                                  ## C1.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Warnings
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## No
                                                                                  ## check
                                                                                  ## is
                                                                                  ## done
                                                                                  ## to
                                                                                  ## verify
                                                                                  ## that
                                                                                  ## a
                                                                                  ## unique
                                                                                  ## normal
                                                                                  ## direction
                                                                                  ## is
                                                                                  ##
                                                                                  ## !
                                                                                  ## defined
                                                                                  ## at
                                                                                  ## any
                                                                                  ## point
                                                                                  ## of
                                                                                  ## the
                                                                                  ## basis
                                                                                  ## surface
                                                                                  ## S.


proc newGeomOffsetSurface*(s: Handle[GeomSurface]; offset: cfloat;
                          isNotCheckC0: bool = false): GeomOffsetSurface {.cdecl,
    constructor, importcpp: "Geom_OffsetSurface(@)", dynlib: tkmath.}
proc setBasisSurface*(this: var GeomOffsetSurface; s: Handle[GeomSurface];
                     isNotCheckC0: bool = false) {.cdecl,
    importcpp: "SetBasisSurface", dynlib: tkmath.}
proc setOffsetValue*(this: var GeomOffsetSurface; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", dynlib: tkmath.}
proc offset*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", dynlib: tkmath.}
proc basisSurface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "BasisSurface", dynlib: tkmath.}
proc osculatingSurface*(this: GeomOffsetSurface): Handle[GeomOsculatingSurface] {.
    noSideEffect, cdecl, importcpp: "OsculatingSurface", dynlib: tkmath.}
proc uReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "UReverse",
    dynlib: tkmath.}
proc uReversedParameter*(this: GeomOffsetSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", dynlib: tkmath.}
proc vReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "VReverse",
    dynlib: tkmath.}
proc vReversedParameter*(this: GeomOffsetSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", dynlib: tkmath.}
proc bounds*(this: GeomOffsetSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkmath.}
proc continuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkmath.}
proc isCNu*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", dynlib: tkmath.}
proc isCNv*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", dynlib: tkmath.}
proc isUClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkmath.}
proc isVClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkmath.}
proc isUPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkmath.}
proc uPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkmath.}
proc isVPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkmath.}
proc vPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkmath.}
proc uIso*(this: GeomOffsetSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", dynlib: tkmath.}
proc vIso*(this: GeomOffsetSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", dynlib: tkmath.}
proc d0*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkmath.}
proc d1*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkmath.}
proc d2*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkmath.}
proc d3*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkmath.}
proc dn*(this: GeomOffsetSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkmath.}
proc transform*(this: var GeomOffsetSurface; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformParameters*(this: GeomOffsetSurface; u: var cfloat; v: var cfloat; t: Trsf) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", dynlib: tkmath.}
proc parametricTransformation*(this: GeomOffsetSurface; t: Trsf): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", dynlib: tkmath.}
proc copy*(this: GeomOffsetSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc surface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkmath.}
proc uOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        uOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "UOsculatingSurface", dynlib: tkmath.}
proc vOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        vOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "VOsculatingSurface", dynlib: tkmath.}
proc getBasisSurfContinuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisSurfContinuity", dynlib: tkmath.}
proc dumpJson*(this: GeomOffsetSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}