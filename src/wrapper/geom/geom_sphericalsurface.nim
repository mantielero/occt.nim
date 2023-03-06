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





proc newGeomSphericalSurface*(a3: gp_Ax3; radius: cfloat): GeomSphericalSurface {.cdecl,
    constructor, importcpp: "Geom_SphericalSurface(@)", header: "Geom_SphericalSurface.hxx".}
proc newGeomSphericalSurface*(s: gp_Sphere): GeomSphericalSurface {.cdecl, constructor,
    importcpp: "Geom_SphericalSurface(@)", header: "Geom_SphericalSurface.hxx".}
proc setRadius*(this: var GeomSphericalSurface; r: cfloat) {.cdecl,
    importcpp: "SetRadius", header: "Geom_SphericalSurface.hxx".}
proc setSphere*(this: var GeomSphericalSurface; s: gp_Sphere) {.cdecl,
    importcpp: "SetSphere", header: "Geom_SphericalSurface.hxx".}
proc sphere*(this: GeomSphericalSurface): gp_Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "Geom_SphericalSurface.hxx".}
proc uReversedParameter*(this: GeomSphericalSurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_SphericalSurface.hxx".}
proc vReversedParameter*(this: GeomSphericalSurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_SphericalSurface.hxx".}
proc area*(this: GeomSphericalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Area", header: "Geom_SphericalSurface.hxx".}
proc bounds*(this: GeomSphericalSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_SphericalSurface.hxx".}
proc coefficients*(this: GeomSphericalSurface; a1: var cfloat; a2: var cfloat;
                  a3: var cfloat; b1: var cfloat; b2: var cfloat; b3: var cfloat;
                  c1: var cfloat; c2: var cfloat; c3: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "Geom_SphericalSurface.hxx".}
proc radius*(this: GeomSphericalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", header: "Geom_SphericalSurface.hxx".}
proc volume*(this: GeomSphericalSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Volume", header: "Geom_SphericalSurface.hxx".}
proc isUClosed*(this: GeomSphericalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_SphericalSurface.hxx".}
proc isVClosed*(this: GeomSphericalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_SphericalSurface.hxx".}
proc isUPeriodic*(this: GeomSphericalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_SphericalSurface.hxx".}
proc isVPeriodic*(this: GeomSphericalSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_SphericalSurface.hxx".}
proc uIso*(this: GeomSphericalSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_SphericalSurface.hxx".}
proc vIso*(this: GeomSphericalSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_SphericalSurface.hxx".}
proc d0*(this: GeomSphericalSurface; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect,
    cdecl, importcpp: "D0", header: "Geom_SphericalSurface.hxx".}
proc d1*(this: GeomSphericalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_SphericalSurface.hxx".}
proc d2*(this: GeomSphericalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_SphericalSurface.hxx".}
proc d3*(this: GeomSphericalSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_SphericalSurface.hxx".}
proc dn*(this: GeomSphericalSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_SphericalSurface.hxx".}
proc transform*(this: var GeomSphericalSurface; t: gp_Trsf) {.cdecl,
    importcpp: "Transform", header: "Geom_SphericalSurface.hxx".}
proc copy*(this: GeomSphericalSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_SphericalSurface.hxx".}
proc dumpJson*(this: GeomSphericalSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_SphericalSurface.hxx".}



