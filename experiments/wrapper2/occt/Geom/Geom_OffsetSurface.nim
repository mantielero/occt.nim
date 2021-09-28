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
discard "forward decl of Geom_OffsetSurface"
type
  HandleC1C1* = Handle[GeomOffsetSurface]

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


proc constructGeomOffsetSurface*(s: Handle[GeomSurface]; offset: StandardReal;
                                isNotCheckC0: StandardBoolean = false): GeomOffsetSurface {.
    constructor, importcpp: "Geom_OffsetSurface(@)",
    header: "Geom_OffsetSurface.hxx".}
proc setBasisSurface*(this: var GeomOffsetSurface; s: Handle[GeomSurface];
                     isNotCheckC0: StandardBoolean = false) {.
    importcpp: "SetBasisSurface", header: "Geom_OffsetSurface.hxx".}
proc setOffsetValue*(this: var GeomOffsetSurface; d: StandardReal) {.
    importcpp: "SetOffsetValue", header: "Geom_OffsetSurface.hxx".}
proc offset*(this: GeomOffsetSurface): StandardReal {.noSideEffect,
    importcpp: "Offset", header: "Geom_OffsetSurface.hxx".}
proc basisSurface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "BasisSurface", header: "Geom_OffsetSurface.hxx".}
proc osculatingSurface*(this: GeomOffsetSurface): Handle[GeomOsculatingSurface] {.
    noSideEffect, importcpp: "OsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc uReverse*(this: var GeomOffsetSurface) {.importcpp: "UReverse",
    header: "Geom_OffsetSurface.hxx".}
proc uReversedParameter*(this: GeomOffsetSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc vReverse*(this: var GeomOffsetSurface) {.importcpp: "VReverse",
    header: "Geom_OffsetSurface.hxx".}
proc vReversedParameter*(this: GeomOffsetSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc bounds*(this: GeomOffsetSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_OffsetSurface.hxx".}
proc continuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_OffsetSurface.hxx".}
proc isCNu*(this: GeomOffsetSurface; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNu", header: "Geom_OffsetSurface.hxx".}
proc isCNv*(this: GeomOffsetSurface; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNv", header: "Geom_OffsetSurface.hxx".}
proc isUClosed*(this: GeomOffsetSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_OffsetSurface.hxx".}
proc isVClosed*(this: GeomOffsetSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_OffsetSurface.hxx".}
proc isUPeriodic*(this: GeomOffsetSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_OffsetSurface.hxx".}
proc uPeriod*(this: GeomOffsetSurface): StandardReal {.noSideEffect,
    importcpp: "UPeriod", header: "Geom_OffsetSurface.hxx".}
proc isVPeriodic*(this: GeomOffsetSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_OffsetSurface.hxx".}
proc vPeriod*(this: GeomOffsetSurface): StandardReal {.noSideEffect,
    importcpp: "VPeriod", header: "Geom_OffsetSurface.hxx".}
proc uIso*(this: GeomOffsetSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_OffsetSurface.hxx".}
proc vIso*(this: GeomOffsetSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_OffsetSurface.hxx".}
proc d0*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal; p: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_OffsetSurface.hxx".}
proc d1*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec) {.noSideEffect, importcpp: "D1",
                                header: "Geom_OffsetSurface.hxx".}
proc d2*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_OffsetSurface.hxx".}
proc d3*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec;
        d3v: var Vec; d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
    header: "Geom_OffsetSurface.hxx".}
proc dn*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_OffsetSurface.hxx".}
proc transform*(this: var GeomOffsetSurface; t: Trsf) {.importcpp: "Transform",
    header: "Geom_OffsetSurface.hxx".}
proc transformParameters*(this: GeomOffsetSurface; u: var StandardReal;
                         v: var StandardReal; t: Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_OffsetSurface.hxx".}
proc parametricTransformation*(this: GeomOffsetSurface; t: Trsf): GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_OffsetSurface.hxx".}
proc copy*(this: GeomOffsetSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_OffsetSurface.hxx".}
proc surface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "Geom_OffsetSurface.hxx".}
proc uOsculatingSurface*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal;
                        isOpposite: var StandardBoolean;
                        uOsculSurf: var Handle[GeomBSplineSurface]): StandardBoolean {.
    noSideEffect, importcpp: "UOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc vOsculatingSurface*(this: GeomOffsetSurface; u: StandardReal; v: StandardReal;
                        isOpposite: var StandardBoolean;
                        vOsculSurf: var Handle[GeomBSplineSurface]): StandardBoolean {.
    noSideEffect, importcpp: "VOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc getBasisSurfContinuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect,
    importcpp: "GetBasisSurfContinuity", header: "Geom_OffsetSurface.hxx".}
proc dumpJson*(this: GeomOffsetSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_OffsetSurface.hxx".}
type
  GeomOffsetSurfacebaseType* = GeomSurface

proc getTypeName*(): cstring {.importcpp: "Geom_OffsetSurface::get_type_name(@)",
                            header: "Geom_OffsetSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_OffsetSurface::get_type_descriptor(@)",
    header: "Geom_OffsetSurface.hxx".}
proc dynamicType*(this: GeomOffsetSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_OffsetSurface.hxx".}