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





proc newGeomOffsetCurve*(c: Handle[GeomCurve]; offset: cfloat; v: DirObj;
                        isNotCheckC0: bool = false): GeomOffsetCurve {.cdecl,
    constructor, importcpp: "Geom_OffsetCurve(@)", header: "Geom_OffsetCurve.hxx".}
proc reverse*(this: var GeomOffsetCurve) {.cdecl, importcpp: "Reverse", header: "Geom_OffsetCurve.hxx".}
proc reversedParameter*(this: GeomOffsetCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom_OffsetCurve.hxx".}
proc setBasisCurve*(this: var GeomOffsetCurve; c: Handle[GeomCurve];
                   isNotCheckC0: bool = false) {.cdecl, importcpp: "SetBasisCurve",
    header: "Geom_OffsetCurve.hxx".}
proc setDirection*(this: var GeomOffsetCurve; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_OffsetCurve.hxx".}
proc setOffsetValue*(this: var GeomOffsetCurve; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", header: "Geom_OffsetCurve.hxx".}
proc basisCurve*(this: GeomOffsetCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom_OffsetCurve.hxx".}
proc continuity*(this: GeomOffsetCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_OffsetCurve.hxx".}
proc direction*(this: GeomOffsetCurve): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Geom_OffsetCurve.hxx".}
proc d0*(this: GeomOffsetCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_OffsetCurve.hxx".}
proc d1*(this: GeomOffsetCurve; u: cfloat; p: var PntObj; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_OffsetCurve.hxx".}
proc d2*(this: GeomOffsetCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom_OffsetCurve.hxx".}
proc d3*(this: GeomOffsetCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_OffsetCurve.hxx".}
proc dn*(this: GeomOffsetCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_OffsetCurve.hxx".}
proc firstParameter*(this: GeomOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_OffsetCurve.hxx".}
proc lastParameter*(this: GeomOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_OffsetCurve.hxx".}
proc offset*(this: GeomOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", header: "Geom_OffsetCurve.hxx".}
proc isClosed*(this: GeomOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom_OffsetCurve.hxx".}
proc isCN*(this: GeomOffsetCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom_OffsetCurve.hxx".}
proc isPeriodic*(this: GeomOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_OffsetCurve.hxx".}
proc period*(this: GeomOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom_OffsetCurve.hxx".}
proc transform*(this: var GeomOffsetCurve; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_OffsetCurve.hxx".}
proc transformedParameter*(this: GeomOffsetCurve; u: cfloat; t: TrsfObj): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom_OffsetCurve.hxx".}
proc parametricTransformation*(this: GeomOffsetCurve; t: TrsfObj): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom_OffsetCurve.hxx".}
proc copy*(this: GeomOffsetCurve): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_OffsetCurve.hxx".}
proc getBasisCurveContinuity*(this: GeomOffsetCurve): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisCurveContinuity", header: "Geom_OffsetCurve.hxx".}
proc dumpJson*(this: GeomOffsetCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_OffsetCurve.hxx".}



