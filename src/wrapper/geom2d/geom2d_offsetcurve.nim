import geom2d_types
import ../gp/gp_types
import ../standard/standard_types
import ../geomabs/geomabs_types





##  Created on: 1993-03-24
##  Created by: Philippe DAUTRY
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





proc newGeom2dOffsetCurve*(c: Handle[Geom2dCurve]; offset: cfloat;
                          isNotCheckC0: bool = false): Geom2dOffsetCurve {.cdecl,
    constructor, importcpp: "Geom2d_OffsetCurve(@)", header: "Geom2d_OffsetCurve.hxx".}
proc reverse*(this: var Geom2dOffsetCurve) {.cdecl, importcpp: "Reverse", header: "Geom2d_OffsetCurve.hxx".}
proc reversedParameter*(this: Geom2dOffsetCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_OffsetCurve.hxx".}
proc setBasisCurve*(this: var Geom2dOffsetCurve; c: Handle[Geom2dCurve];
                   isNotCheckC0: bool = false) {.cdecl, importcpp: "SetBasisCurve",
    header: "Geom2d_OffsetCurve.hxx".}
proc setOffsetValue*(this: var Geom2dOffsetCurve; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", header: "Geom2d_OffsetCurve.hxx".}
proc basisCurve*(this: Geom2dOffsetCurve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom2d_OffsetCurve.hxx".}
proc continuity*(this: Geom2dOffsetCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_OffsetCurve.hxx".}
proc d0*(this: Geom2dOffsetCurve; u: cfloat; p: var gp_Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_OffsetCurve.hxx".}
proc d1*(this: Geom2dOffsetCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_OffsetCurve.hxx".}
proc d2*(this: Geom2dOffsetCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_OffsetCurve.hxx".}
proc d3*(this: Geom2dOffsetCurve; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_OffsetCurve.hxx".}
proc dn*(this: Geom2dOffsetCurve; u: cfloat; n: cint): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_OffsetCurve.hxx".}
proc firstParameter*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_OffsetCurve.hxx".}
proc lastParameter*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_OffsetCurve.hxx".}
proc offset*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", header: "Geom2d_OffsetCurve.hxx".}
proc isClosed*(this: Geom2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_OffsetCurve.hxx".}
proc isCN*(this: Geom2dOffsetCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom2d_OffsetCurve.hxx".}
proc isPeriodic*(this: Geom2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_OffsetCurve.hxx".}
proc period*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom2d_OffsetCurve.hxx".}
proc transform*(this: var Geom2dOffsetCurve; t: gp_Trsf2d) {.cdecl,
    importcpp: "Transform", header: "Geom2d_OffsetCurve.hxx".}
proc transformedParameter*(this: Geom2dOffsetCurve; u: cfloat; t: gp_Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_OffsetCurve.hxx".}
proc parametricTransformation*(this: Geom2dOffsetCurve; t: gp_Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom2d_OffsetCurve.hxx".}
proc copy*(this: Geom2dOffsetCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_OffsetCurve.hxx".}
proc getBasisCurveContinuity*(this: Geom2dOffsetCurve): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisCurveContinuity", header: "Geom2d_OffsetCurve.hxx".}
proc dumpJson*(this: Geom2dOffsetCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_OffsetCurve.hxx".}


