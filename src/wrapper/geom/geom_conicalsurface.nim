import ../gp/gp_types
import ../standard/standard_types
import geom_types







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





proc newGeomConicalSurface*(a3: Ax3Obj; ang: cfloat; radius: cfloat): GeomConicalSurface {.
    cdecl, constructor, importcpp: "Geom_ConicalSurface(@)", header: "Geom_ConicalSurface.hxx".}
proc newGeomConicalSurface*(c: ConeObj): GeomConicalSurface {.cdecl, constructor,
    importcpp: "Geom_ConicalSurface(@)", header: "Geom_ConicalSurface.hxx".}
proc setCone*(this: var GeomConicalSurface; c: ConeObj) {.cdecl, importcpp: "SetCone",
    header: "Geom_ConicalSurface.hxx".}
proc setRadius*(this: var GeomConicalSurface; r: cfloat) {.cdecl,
    importcpp: "SetRadius", header: "Geom_ConicalSurface.hxx".}
proc setSemiAngle*(this: var GeomConicalSurface; ang: cfloat) {.cdecl,
    importcpp: "SetSemiAngle", header: "Geom_ConicalSurface.hxx".}
proc cone*(this: GeomConicalSurface): ConeObj {.noSideEffect, cdecl, importcpp: "Cone",
    header: "Geom_ConicalSurface.hxx".}
proc uReversedParameter*(this: GeomConicalSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", header: "Geom_ConicalSurface.hxx".}
proc vReversedParameter*(this: GeomConicalSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", header: "Geom_ConicalSurface.hxx".}
proc vReverse*(this: var GeomConicalSurface) {.cdecl, importcpp: "VReverse",
    header: "Geom_ConicalSurface.hxx".}
proc transformParameters*(this: GeomConicalSurface; u: var cfloat; v: var cfloat; t: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", header: "Geom_ConicalSurface.hxx".}
proc parametricTransformation*(this: GeomConicalSurface; t: TrsfObj): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_ConicalSurface.hxx".}
proc apex*(this: GeomConicalSurface): gp_Pnt {.noSideEffect, cdecl, importcpp: "Apex",
                                        header: "Geom_ConicalSurface.hxx".}
proc bounds*(this: GeomConicalSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_ConicalSurface.hxx".}
proc coefficients*(this: GeomConicalSurface; a1: var cfloat; a2: var cfloat;
                  a3: var cfloat; b1: var cfloat; b2: var cfloat; b3: var cfloat;
                  c1: var cfloat; c2: var cfloat; c3: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "Geom_ConicalSurface.hxx".}
proc refRadius*(this: GeomConicalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "RefRadius", header: "Geom_ConicalSurface.hxx".}
proc semiAngle*(this: GeomConicalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "SemiAngle", header: "Geom_ConicalSurface.hxx".}
proc isUClosed*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_ConicalSurface.hxx".}
proc isVClosed*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_ConicalSurface.hxx".}
proc isUPeriodic*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_ConicalSurface.hxx".}
proc isVPeriodic*(this: GeomConicalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_ConicalSurface.hxx".}
proc uIso*(this: GeomConicalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_ConicalSurface.hxx".}
proc vIso*(this: GeomConicalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_ConicalSurface.hxx".}
proc d0*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_ConicalSurface.hxx".}
proc d1*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_ConicalSurface.hxx".}
proc d2*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_ConicalSurface.hxx".}
proc d3*(this: GeomConicalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_ConicalSurface.hxx".}
proc dn*(this: GeomConicalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_ConicalSurface.hxx".}
proc transform*(this: var GeomConicalSurface; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_ConicalSurface.hxx".}
proc copy*(this: GeomConicalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_ConicalSurface.hxx".}
proc dumpJson*(this: GeomConicalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_ConicalSurface.hxx".}



