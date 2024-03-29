import ../gp/gp_types
import ../standard/standard_types
import geom_types
import ../geomabs/geomabs_types







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





proc newGeomTrimmedCurve*(c: Handle[GeomCurve]; u1: cfloat; u2: cfloat;
                         sense: bool = true; theAdjustPeriodic: bool = true): GeomTrimmedCurve {.
    cdecl, constructor, importcpp: "Geom_TrimmedCurve(@)", header: "Geom_TrimmedCurve.hxx".}
proc reverse*(this: var GeomTrimmedCurve) {.cdecl, importcpp: "Reverse", header: "Geom_TrimmedCurve.hxx".}
proc reversedParameter*(this: GeomTrimmedCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom_TrimmedCurve.hxx".}
proc setTrim*(this: var GeomTrimmedCurve; u1: cfloat; u2: cfloat; sense: bool = true;
             theAdjustPeriodic: bool = true) {.cdecl, importcpp: "SetTrim",
    header: "Geom_TrimmedCurve.hxx".}
proc basisCurve*(this: GeomTrimmedCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom_TrimmedCurve.hxx".}
proc continuity*(this: GeomTrimmedCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_TrimmedCurve.hxx".}
proc isCN*(this: GeomTrimmedCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom_TrimmedCurve.hxx".}
proc endPoint*(this: GeomTrimmedCurve): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom_TrimmedCurve.hxx".}
proc firstParameter*(this: GeomTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_TrimmedCurve.hxx".}
proc isClosed*(this: GeomTrimmedCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom_TrimmedCurve.hxx".}
proc isPeriodic*(this: GeomTrimmedCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_TrimmedCurve.hxx".}
proc period*(this: GeomTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom_TrimmedCurve.hxx".}
proc lastParameter*(this: GeomTrimmedCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_TrimmedCurve.hxx".}
proc startPoint*(this: GeomTrimmedCurve): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom_TrimmedCurve.hxx".}
proc d0*(this: GeomTrimmedCurve; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_TrimmedCurve.hxx".}
proc d1*(this: GeomTrimmedCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_TrimmedCurve.hxx".}
proc d2*(this: GeomTrimmedCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom_TrimmedCurve.hxx".}
proc d3*(this: GeomTrimmedCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_TrimmedCurve.hxx".}
proc dn*(this: GeomTrimmedCurve; u: cfloat; n: cint): gp_Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_TrimmedCurve.hxx".}
proc transform*(this: var GeomTrimmedCurve; t: gp_Trsf) {.cdecl, importcpp: "Transform",
    header: "Geom_TrimmedCurve.hxx".}
proc transformedParameter*(this: GeomTrimmedCurve; u: cfloat; t: gp_Trsf): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom_TrimmedCurve.hxx".}
proc parametricTransformation*(this: GeomTrimmedCurve; t: gp_Trsf): cfloat {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_TrimmedCurve.hxx".}
proc copy*(this: GeomTrimmedCurve): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_TrimmedCurve.hxx".}
proc dumpJson*(this: GeomTrimmedCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_TrimmedCurve.hxx".}



