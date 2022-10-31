import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import geom_types
import ../../tkmath/geomabs/geomabs_types



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





proc newGeomOffsetSurface*(s: Handle[GeomSurface]; offset: cfloat;
                          isNotCheckC0: bool = false): GeomOffsetSurface {.cdecl,
    constructor, importcpp: "Geom_OffsetSurface(@)", header: "Geom_OffsetSurface.hxx".}
proc setBasisSurface*(this: var GeomOffsetSurface; s: Handle[GeomSurface];
                     isNotCheckC0: bool = false) {.cdecl,
    importcpp: "SetBasisSurface", header: "Geom_OffsetSurface.hxx".}
proc setOffsetValue*(this: var GeomOffsetSurface; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", header: "Geom_OffsetSurface.hxx".}
proc offset*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", header: "Geom_OffsetSurface.hxx".}
proc basisSurface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "BasisSurface", header: "Geom_OffsetSurface.hxx".}
proc osculatingSurface*(this: GeomOffsetSurface): Handle[GeomOsculatingSurface] {.
    noSideEffect, cdecl, importcpp: "OsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc uReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "UReverse",
    header: "Geom_OffsetSurface.hxx".}
proc uReversedParameter*(this: GeomOffsetSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc vReverse*(this: var GeomOffsetSurface) {.cdecl, importcpp: "VReverse",
    header: "Geom_OffsetSurface.hxx".}
proc vReversedParameter*(this: GeomOffsetSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc bounds*(this: GeomOffsetSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_OffsetSurface.hxx".}
proc continuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_OffsetSurface.hxx".}
proc isCNu*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_OffsetSurface.hxx".}
proc isCNv*(this: GeomOffsetSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_OffsetSurface.hxx".}
proc isUClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_OffsetSurface.hxx".}
proc isVClosed*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_OffsetSurface.hxx".}
proc isUPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_OffsetSurface.hxx".}
proc uPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "Geom_OffsetSurface.hxx".}
proc isVPeriodic*(this: GeomOffsetSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_OffsetSurface.hxx".}
proc vPeriod*(this: GeomOffsetSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "Geom_OffsetSurface.hxx".}
proc uIso*(this: GeomOffsetSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_OffsetSurface.hxx".}
proc vIso*(this: GeomOffsetSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_OffsetSurface.hxx".}
proc d0*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_OffsetSurface.hxx".}
proc d1*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_OffsetSurface.hxx".}
proc d2*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_OffsetSurface.hxx".}
proc d3*(this: GeomOffsetSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_OffsetSurface.hxx".}
proc dn*(this: GeomOffsetSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_OffsetSurface.hxx".}
proc transform*(this: var GeomOffsetSurface; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_OffsetSurface.hxx".}
proc transformParameters*(this: GeomOffsetSurface; u: var cfloat; v: var cfloat; t: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", header: "Geom_OffsetSurface.hxx".}
proc parametricTransformation*(this: GeomOffsetSurface; t: TrsfObj): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_OffsetSurface.hxx".}
proc copy*(this: GeomOffsetSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_OffsetSurface.hxx".}
proc surface*(this: GeomOffsetSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "Geom_OffsetSurface.hxx".}
proc uOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        uOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "UOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc vOsculatingSurface*(this: GeomOffsetSurface; u: cfloat; v: cfloat;
                        isOpposite: var bool;
                        vOsculSurf: var Handle[GeomBSplineSurface]): bool {.
    noSideEffect, cdecl, importcpp: "VOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc getBasisSurfContinuity*(this: GeomOffsetSurface): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisSurfContinuity", header: "Geom_OffsetSurface.hxx".}
proc dumpJson*(this: GeomOffsetSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_OffsetSurface.hxx".}

