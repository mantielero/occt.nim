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
    constructor, importcpp: "Geom_OffsetSurface(@)", dynlib: tkg3d.}
proc setBasisSurface*(this: var GeomOffsetSurface; s: Handle[GeomSurface];
                     isNotCheckC0: bool = false) {.cdecl,
    importcpp: "SetBasisSurface", dynlib: tkg3d.}
proc setOffsetValue*(this: var GeomOffsetSurface; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", dynlib: tkg3d.}
proc offset*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", dynlib: tkg3d.}
proc basisSurface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "BasisSurface", dynlib: tkg3d.}
proc osculatingSurface*(this: GeomOffsetSurface): Handle[GeomOsculatingSurface] {.
    noSideEffect, cdecl, importcpp: "OsculatingSurface", dynlib: tkg3d.}
proc uReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "UReverse",
    dynlib: tkg3d.}
proc uReversedParameter*(this: GeomOffsetSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", dynlib: tkg3d.}
proc vReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "VReverse",
    dynlib: tkg3d.}
proc vReversedParameter*(this: GeomOffsetSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", dynlib: tkg3d.}
proc bounds*(this: GeomOffsetSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkg3d.}
proc continuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc isCNu*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", dynlib: tkg3d.}
proc isCNv*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", dynlib: tkg3d.}
proc isUClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkg3d.}
proc uIso*(this: GeomOffsetSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", dynlib: tkg3d.}
proc vIso*(this: GeomOffsetSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", dynlib: tkg3d.}
proc d0*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkg3d.}
proc dn*(this: GeomOffsetSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkg3d.}
proc transform*(this: var GeomOffsetSurface; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkg3d.}
proc transformParameters*(this: GeomOffsetSurface; u: var cfloat; v: var cfloat; t: Trsf) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", dynlib: tkg3d.}
proc parametricTransformation*(this: GeomOffsetSurface; t: Trsf): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", dynlib: tkg3d.}
proc copy*(this: GeomOffsetSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc surface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkg3d.}
proc uOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        uOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "UOsculatingSurface", dynlib: tkg3d.}
proc vOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        vOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "VOsculatingSurface", dynlib: tkg3d.}
proc getBasisSurfContinuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisSurfContinuity", dynlib: tkg3d.}
proc dumpJson*(this: GeomOffsetSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}