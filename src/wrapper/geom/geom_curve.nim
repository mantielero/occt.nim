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





proc reverse*(this: var GeomCurve) {.cdecl, importcpp: "Reverse", header: "Geom_Curve.hxx".}
proc reversedParameter*(this: GeomCurve; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Curve.hxx".}
proc transformedParameter*(this: GeomCurve; u: cfloat; t: TrsfObj): cfloat {.noSideEffect,
    cdecl, importcpp: "TransformedParameter", header: "Geom_Curve.hxx".}
proc parametricTransformation*(this: GeomCurve; t: TrsfObj): cfloat {.noSideEffect, cdecl,
    importcpp: "ParametricTransformation", header: "Geom_Curve.hxx".}
proc reversed*(this: GeomCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "Geom_Curve.hxx".}
proc firstParameter*(this: GeomCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Curve.hxx".}
proc lastParameter*(this: GeomCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Curve.hxx".}
proc isClosed*(this: GeomCurve): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                    header: "Geom_Curve.hxx".}
proc isPeriodic*(this: GeomCurve): bool {.noSideEffect, cdecl,
                                      importcpp: "IsPeriodic", header: "Geom_Curve.hxx".}
proc period*(this: GeomCurve): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                    header: "Geom_Curve.hxx".}
proc continuity*(this: GeomCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_Curve.hxx".}
proc isCN*(this: GeomCurve; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                       header: "Geom_Curve.hxx".}
proc d0*(this: GeomCurve; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    header: "Geom_Curve.hxx".}
proc d1*(this: GeomCurve; u: cfloat; p: var gp_Pnt; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Curve.hxx".}
proc d2*(this: GeomCurve; u: cfloat; p: var gp_Pnt; v1: var VecObj; v2: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Curve.hxx".}
proc d3*(this: GeomCurve; u: cfloat; p: var gp_Pnt; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Curve.hxx".}
proc dn*(this: GeomCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl, importcpp: "DN",
    header: "Geom_Curve.hxx".}
proc value*(this: GeomCurve; u: cfloat): gp_Pnt {.noSideEffect, cdecl, importcpp: "Value",
    header: "Geom_Curve.hxx".}
proc dumpJson*(this: GeomCurve; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom_Curve.hxx".}



