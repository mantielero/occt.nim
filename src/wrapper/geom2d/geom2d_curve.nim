import geom2d_types
import ../gp/gp_types
import ../standard/standard_types
import ../geomabs/geomabs_types





##  Created on: 1993-03-24
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





proc reverse*(this: var Geom2dCurve) {.cdecl, importcpp: "Reverse", header: "Geom2d_Curve.hxx".}
proc reversedParameter*(this: Geom2dCurve; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Curve.hxx".}
proc transformedParameter*(this: Geom2dCurve; u: cfloat; t: gp_Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_Curve.hxx".}
proc parametricTransformation*(this: Geom2dCurve; t: gp_Trsf2d): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom2d_Curve.hxx".}
proc reversed*(this: Geom2dCurve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "Geom2d_Curve.hxx".}
proc firstParameter*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Curve.hxx".}
proc lastParameter*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Curve.hxx".}
proc isClosed*(this: Geom2dCurve): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                      header: "Geom2d_Curve.hxx".}
proc isPeriodic*(this: Geom2dCurve): bool {.noSideEffect, cdecl,
                                        importcpp: "IsPeriodic", header: "Geom2d_Curve.hxx".}
proc period*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                      header: "Geom2d_Curve.hxx".}
proc continuity*(this: Geom2dCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_Curve.hxx".}
proc isCN*(this: Geom2dCurve; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
    header: "Geom2d_Curve.hxx".}
proc d0*(this: Geom2dCurve; u: cfloat; p: var gp_Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Curve.hxx".}
proc d1*(this: Geom2dCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom2d_Curve.hxx".}
proc d2*(this: Geom2dCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Curve.hxx".}
proc d3*(this: Geom2dCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Curve.hxx".}
proc dn*(this: Geom2dCurve; u: cfloat; n: cint): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Curve.hxx".}

proc value*(this: Geom2dCurve; u: cfloat): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", header: "Geom2d_Curve.hxx".}
proc dumpJson*(this: Geom2dCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Curve.hxx".}


