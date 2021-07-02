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
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_RectangularTrimmedSurface"
discard "forward decl of Geom_RectangularTrimmedSurface"
type
  HandleGeomRectangularTrimmedSurface* = Handle[GeomRectangularTrimmedSurface]

## ! Describes a portion of a surface (a patch) limited
## ! by two values of the u parameter in the u
## ! parametric direction, and two values of the v
## ! parameter in the v parametric direction. The
## ! domain of the trimmed surface must be within the
## ! domain of the surface being trimmed.
## ! The trimmed surface is defined by:
## ! - the basis surface, and
## ! - the values (umin, umax) and (vmin, vmax)
## ! which limit it in the u and v parametric directions.
## ! The trimmed surface is built from a copy of the basis
## ! surface. Therefore, when the basis surface is
## ! modified the trimmed surface is not changed.
## ! Consequently, the trimmed surface does not
## ! necessarily have the same orientation as the basis surface.
## ! Warning:  The  case of surface   being trimmed is  periodic and
## ! parametrics values are outside the domain is possible.
## ! But, domain of the  trimmed surface can be translated
## ! by (n X) the period.

type
  GeomRectangularTrimmedSurface* {.importcpp: "Geom_RectangularTrimmedSurface",
                                  header: "Geom_RectangularTrimmedSurface.hxx",
                                  bycopy.} = object of GeomBoundedSurface ## ! The U parametric direction of the surface is oriented from U1
                                                                     ## ! to U2. The V parametric direction of the surface is oriented
                                                                     ## ! from V1 to V2.
                                                                     ## ! These two directions define the orientation of the surface
                                                                     ## ! (normal). If the surface is not periodic USense and VSense are
                                                                     ## ! not used for the
                                                                     ## construction. If the surface S is periodic in
                                                                     ## ! one direction USense and VSense give the available part of the
                                                                     ## ! surface. By default in this case the surface has the same
                                                                     ## ! orientation as the basis surface S.
                                                                     ## ! The returned surface is not closed and not periodic.
                                                                     ## !
                                                                     ## ConstructionError   Raised if
                                                                     ## ! S is not periodic in the UDirection and U1 or U2 are out of the
                                                                     ## ! bounds of S.
                                                                     ## ! S is not periodic in the VDirection and V1 or V2 are out of the
                                                                     ## ! bounds of S.
                                                                     ## ! U1 = U2 or V1 = V2
                                                                     ## ! General set trim,  to implement
                                                                     ## constructors and
                                                                     ## ! others set trim.


proc constructGeomRectangularTrimmedSurface*(s: Handle[GeomSurface];
    u1: StandardReal; u2: StandardReal; v1: StandardReal; v2: StandardReal;
    uSense: StandardBoolean = standardTrue; vSense: StandardBoolean = standardTrue): GeomRectangularTrimmedSurface {.
    constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc constructGeomRectangularTrimmedSurface*(s: Handle[GeomSurface];
    param1: StandardReal; param2: StandardReal; uTrim: StandardBoolean;
    sense: StandardBoolean = standardTrue): GeomRectangularTrimmedSurface {.
    constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc setTrim*(this: var GeomRectangularTrimmedSurface; u1: StandardReal;
             u2: StandardReal; v1: StandardReal; v2: StandardReal;
             uSense: StandardBoolean = standardTrue;
             vSense: StandardBoolean = standardTrue) {.importcpp: "SetTrim",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc setTrim*(this: var GeomRectangularTrimmedSurface; param1: StandardReal;
             param2: StandardReal; uTrim: StandardBoolean;
             sense: StandardBoolean = standardTrue) {.importcpp: "SetTrim",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc basisSurface*(this: GeomRectangularTrimmedSurface): Handle[GeomSurface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc uReverse*(this: var GeomRectangularTrimmedSurface) {.importcpp: "UReverse",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc uReversedParameter*(this: GeomRectangularTrimmedSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc vReverse*(this: var GeomRectangularTrimmedSurface) {.importcpp: "VReverse",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc vReversedParameter*(this: GeomRectangularTrimmedSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc bounds*(this: GeomRectangularTrimmedSurface; u1: var StandardReal;
            u2: var StandardReal; v1: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_RectangularTrimmedSurface.hxx".}
proc continuity*(this: GeomRectangularTrimmedSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isUClosed*(this: GeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc isVClosed*(this: GeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc isCNu*(this: GeomRectangularTrimmedSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isCNv*(this: GeomRectangularTrimmedSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isUPeriodic*(this: GeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc uPeriod*(this: GeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "UPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isVPeriodic*(this: GeomRectangularTrimmedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc vPeriod*(this: GeomRectangularTrimmedSurface): StandardReal {.noSideEffect,
    importcpp: "VPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc uIso*(this: GeomRectangularTrimmedSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc vIso*(this: GeomRectangularTrimmedSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc d0*(this: GeomRectangularTrimmedSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt) {.noSideEffect, importcpp: "D0",
                     header: "Geom_RectangularTrimmedSurface.hxx".}
proc d1*(this: GeomRectangularTrimmedSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc d2*(this: GeomRectangularTrimmedSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec;
        d2uv: var GpVec) {.noSideEffect, importcpp: "D2",
                        header: "Geom_RectangularTrimmedSurface.hxx".}
proc d3*(this: GeomRectangularTrimmedSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec;
        d2uv: var GpVec; d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.
    noSideEffect, importcpp: "D3", header: "Geom_RectangularTrimmedSurface.hxx".}
proc dn*(this: GeomRectangularTrimmedSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "Geom_RectangularTrimmedSurface.hxx".}
proc transform*(this: var GeomRectangularTrimmedSurface; t: GpTrsf) {.
    importcpp: "Transform", header: "Geom_RectangularTrimmedSurface.hxx".}
proc transformParameters*(this: GeomRectangularTrimmedSurface; u: var StandardReal;
                         v: var StandardReal; t: GpTrsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_RectangularTrimmedSurface.hxx".}
proc parametricTransformation*(this: GeomRectangularTrimmedSurface; t: GpTrsf): GpGTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc copy*(this: GeomRectangularTrimmedSurface): Handle[GeomGeometry] {.
    noSideEffect, importcpp: "Copy", header: "Geom_RectangularTrimmedSurface.hxx".}
proc dumpJson*(this: GeomRectangularTrimmedSurface;
              theOStream: var StandardOStream; theDepth: StandardInteger = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Geom_RectangularTrimmedSurface.hxx".}
type
  GeomRectangularTrimmedSurfacebaseType* = GeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "Geom_RectangularTrimmedSurface::get_type_name(@)",
                            header: "Geom_RectangularTrimmedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_RectangularTrimmedSurface::get_type_descriptor(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc dynamicType*(this: GeomRectangularTrimmedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom_RectangularTrimmedSurface.hxx".}

