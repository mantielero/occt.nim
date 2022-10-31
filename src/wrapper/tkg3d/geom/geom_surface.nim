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





proc uReverse*(this: var GeomSurface) {.cdecl, importcpp: "UReverse", header: "Geom_Surface.hxx".}
proc uReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "UReversed", header: "Geom_Surface.hxx".}
proc uReversedParameter*(this: GeomSurface; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UReversedParameter", header: "Geom_Surface.hxx".}
proc vReverse*(this: var GeomSurface) {.cdecl, importcpp: "VReverse", header: "Geom_Surface.hxx".}
proc vReversed*(this: GeomSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "VReversed", header: "Geom_Surface.hxx".}
proc vReversedParameter*(this: GeomSurface; v: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VReversedParameter", header: "Geom_Surface.hxx".}
proc transformParameters*(this: GeomSurface; u: var cfloat; v: var cfloat; t: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", header: "Geom_Surface.hxx".}
proc parametricTransformation*(this: GeomSurface; t: TrsfObj): GTrsf2d {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom_Surface.hxx".}
proc bounds*(this: GeomSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_Surface.hxx".}
proc isUClosed*(this: GeomSurface): bool {.noSideEffect, cdecl,
                                       importcpp: "IsUClosed", header: "Geom_Surface.hxx".}
proc isVClosed*(this: GeomSurface): bool {.noSideEffect, cdecl,
                                       importcpp: "IsVClosed", header: "Geom_Surface.hxx".}
proc isUPeriodic*(this: GeomSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_Surface.hxx".}
proc uPeriod*(this: GeomSurface): cfloat {.noSideEffect, cdecl, importcpp: "UPeriod",
                                       header: "Geom_Surface.hxx".}
proc isVPeriodic*(this: GeomSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_Surface.hxx".}
proc vPeriod*(this: GeomSurface): cfloat {.noSideEffect, cdecl, importcpp: "VPeriod",
                                       header: "Geom_Surface.hxx".}
proc uIso*(this: GeomSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "UIso", header: "Geom_Surface.hxx".}
proc vIso*(this: GeomSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "VIso", header: "Geom_Surface.hxx".}
proc continuity*(this: GeomSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_Surface.hxx".}
proc isCNu*(this: GeomSurface; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCNu",
    header: "Geom_Surface.hxx".}
proc isCNv*(this: GeomSurface; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCNv",
    header: "Geom_Surface.hxx".}
proc d0*(this: GeomSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_Surface.hxx".}
proc d1*(this: GeomSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1", header: "Geom_Surface.hxx".}
proc d2*(this: GeomSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj;
        d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl, importcpp: "D2",
    header: "Geom_Surface.hxx".}
proc d3*(this: GeomSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj;
        d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj; d3uuv: var VecObj;
        d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom_Surface.hxx".}
proc dn*(this: GeomSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.noSideEffect,
    cdecl, importcpp: "DN", header: "Geom_Surface.hxx".}
proc value*(this: GeomSurface; u: cfloat; v: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "Geom_Surface.hxx".}
proc dumpJson*(this: GeomSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Surface.hxx".}

