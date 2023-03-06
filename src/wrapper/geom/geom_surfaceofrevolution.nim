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





proc newGeomSurfaceOfRevolution*(c: Handle[GeomCurve]; a1: Ax1Obj): GeomSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "Geom_SurfaceOfRevolution(@)", header: "Geom_SurfaceOfRevolution.hxx".}
proc setAxis*(this: var GeomSurfaceOfRevolution; a1: Ax1Obj) {.cdecl,
    importcpp: "SetAxis", header: "Geom_SurfaceOfRevolution.hxx".}
proc setDirection*(this: var GeomSurfaceOfRevolution; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_SurfaceOfRevolution.hxx".}
proc setBasisCurve*(this: var GeomSurfaceOfRevolution; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "SetBasisCurve", header: "Geom_SurfaceOfRevolution.hxx".}
proc setLocation*(this: var GeomSurfaceOfRevolution; p: gp_Pnt) {.cdecl,
    importcpp: "SetLocation", header: "Geom_SurfaceOfRevolution.hxx".}
proc axis*(this: GeomSurfaceOfRevolution): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "Axis", header: "Geom_SurfaceOfRevolution.hxx".}
proc location*(this: GeomSurfaceOfRevolution): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Location", header: "Geom_SurfaceOfRevolution.hxx".}
proc referencePlane*(this: GeomSurfaceOfRevolution): Ax2Obj {.noSideEffect, cdecl,
    importcpp: "ReferencePlane", header: "Geom_SurfaceOfRevolution.hxx".}
proc uReverse*(this: var GeomSurfaceOfRevolution) {.cdecl, importcpp: "UReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc uReversedParameter*(this: GeomSurfaceOfRevolution; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_SurfaceOfRevolution.hxx".}
proc vReverse*(this: var GeomSurfaceOfRevolution) {.cdecl, importcpp: "VReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc vReversedParameter*(this: GeomSurfaceOfRevolution; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_SurfaceOfRevolution.hxx".}
proc transformParameters*(this: GeomSurfaceOfRevolution; u: var cfloat; v: var cfloat;
                         t: gp_Trsf) {.noSideEffect, cdecl,
                                  importcpp: "TransformParameters", header: "Geom_SurfaceOfRevolution.hxx".}
proc parametricTransformation*(this: GeomSurfaceOfRevolution; t: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_SurfaceOfRevolution.hxx".}
proc bounds*(this: GeomSurfaceOfRevolution; u1: var cfloat; u2: var cfloat;
            v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds",
                                        header: "Geom_SurfaceOfRevolution.hxx".}
proc isUClosed*(this: GeomSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc isVClosed*(this: GeomSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc isCNu*(this: GeomSurfaceOfRevolution; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_SurfaceOfRevolution.hxx".}
proc isCNv*(this: GeomSurfaceOfRevolution; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_SurfaceOfRevolution.hxx".}
proc isUPeriodic*(this: GeomSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc isVPeriodic*(this: GeomSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc uIso*(this: GeomSurfaceOfRevolution; u: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "UIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc vIso*(this: GeomSurfaceOfRevolution; v: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "VIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc d0*(this: GeomSurfaceOfRevolution; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect,
    cdecl, importcpp: "D0", header: "Geom_SurfaceOfRevolution.hxx".}
proc d1*(this: GeomSurfaceOfRevolution; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_SurfaceOfRevolution.hxx".}
proc d2*(this: GeomSurfaceOfRevolution; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_SurfaceOfRevolution.hxx".}
proc d3*(this: GeomSurfaceOfRevolution; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_SurfaceOfRevolution.hxx".}
proc dn*(this: GeomSurfaceOfRevolution; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_SurfaceOfRevolution.hxx".}
proc transform*(this: var GeomSurfaceOfRevolution; t: gp_Trsf) {.cdecl,
    importcpp: "Transform", header: "Geom_SurfaceOfRevolution.hxx".}
proc copy*(this: GeomSurfaceOfRevolution): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom_SurfaceOfRevolution.hxx".}
proc dumpJson*(this: GeomSurfaceOfRevolution; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_SurfaceOfRevolution.hxx".}



