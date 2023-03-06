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






proc newGeomCylindricalSurface*(a3: Ax3Obj; radius: cfloat): GeomCylindricalSurface {.
    cdecl, constructor, importcpp: "Geom_CylindricalSurface(@)", header: "Geom_CylindricalSurface.hxx".}
proc newGeomCylindricalSurface*(c: CylinderObj): GeomCylindricalSurface {.cdecl,
    constructor, importcpp: "Geom_CylindricalSurface(@)", header: "Geom_CylindricalSurface.hxx".}
proc setCylinder*(this: var GeomCylindricalSurface; c: CylinderObj) {.cdecl,
    importcpp: "SetCylinder", header: "Geom_CylindricalSurface.hxx".}
proc setRadius*(this: var GeomCylindricalSurface; r: cfloat) {.cdecl,
    importcpp: "SetRadius", header: "Geom_CylindricalSurface.hxx".}
proc cylinder*(this: GeomCylindricalSurface): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "Geom_CylindricalSurface.hxx".}
proc uReversedParameter*(this: GeomCylindricalSurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_CylindricalSurface.hxx".}
proc vReversedParameter*(this: GeomCylindricalSurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_CylindricalSurface.hxx".}
proc transformParameters*(this: GeomCylindricalSurface; u: var cfloat; v: var cfloat;
                         t: TrsfObj) {.noSideEffect, cdecl,
                                  importcpp: "TransformParameters", header: "Geom_CylindricalSurface.hxx".}
proc parametricTransformation*(this: GeomCylindricalSurface; t: TrsfObj): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_CylindricalSurface.hxx".}
proc bounds*(this: GeomCylindricalSurface; u1: var cfloat; u2: var cfloat;
            v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds",
                                        header: "Geom_CylindricalSurface.hxx".}
proc coefficients*(this: GeomCylindricalSurface; a1: var cfloat; a2: var cfloat;
                  a3: var cfloat; b1: var cfloat; b2: var cfloat; b3: var cfloat;
                  c1: var cfloat; c2: var cfloat; c3: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "Geom_CylindricalSurface.hxx".}
proc radius*(this: GeomCylindricalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", header: "Geom_CylindricalSurface.hxx".}
proc isUClosed*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_CylindricalSurface.hxx".}
proc isVClosed*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_CylindricalSurface.hxx".}
proc isUPeriodic*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_CylindricalSurface.hxx".}
proc isVPeriodic*(this: GeomCylindricalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_CylindricalSurface.hxx".}
proc uIso*(this: GeomCylindricalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_CylindricalSurface.hxx".}
proc vIso*(this: GeomCylindricalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_CylindricalSurface.hxx".}
proc d0*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect,
    cdecl, importcpp: "D0", header: "Geom_CylindricalSurface.hxx".}
proc d1*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_CylindricalSurface.hxx".}
proc d2*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_CylindricalSurface.hxx".}
proc d3*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_CylindricalSurface.hxx".}
proc dn*(this: GeomCylindricalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_CylindricalSurface.hxx".}
proc transform*(this: var GeomCylindricalSurface; t: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Geom_CylindricalSurface.hxx".}
proc copy*(this: GeomCylindricalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_CylindricalSurface.hxx".}
proc dumpJson*(this: GeomCylindricalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_CylindricalSurface.hxx".}



