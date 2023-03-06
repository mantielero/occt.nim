import ../gp/gp_types
import ../standard/standard_types
import geom_types
import ../tcolstd/tcolstd_types







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
proc d0*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect,
    cdecl, importcpp: "D0", header: "Geom_ToroidalSurface.hxx".}
proc d1*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_ToroidalSurface.hxx".}
proc d2*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_ToroidalSurface.hxx".}
proc d3*(this: GeomToroidalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var VecObj;
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



