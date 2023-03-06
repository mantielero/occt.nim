import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1998-02-26
##  Created by: Roman BORISOV
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newGeomFillSnglrFunc*(hc: Handle[Adaptor3dHCurve]): GeomFillSnglrFunc {.cdecl,
    constructor, importcpp: "GeomFill_SnglrFunc(@)", header: "GeomFill_SnglrFunc.hxx".}
proc setRatio*(this: var GeomFillSnglrFunc; ratio: cfloat) {.cdecl,
    importcpp: "SetRatio", header: "GeomFill_SnglrFunc.hxx".}
proc firstParameter*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "GeomFill_SnglrFunc.hxx".}
proc lastParameter*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "GeomFill_SnglrFunc.hxx".}
proc nbIntervals*(this: GeomFillSnglrFunc; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_SnglrFunc.hxx".}
proc intervals*(this: GeomFillSnglrFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "GeomFill_SnglrFunc.hxx".}
proc value*(this: GeomFillSnglrFunc; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_SnglrFunc.hxx".}
proc isPeriodic*(this: GeomFillSnglrFunc): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "GeomFill_SnglrFunc.hxx".}
proc period*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "GeomFill_SnglrFunc.hxx".}
proc d0*(this: GeomFillSnglrFunc; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "GeomFill_SnglrFunc.hxx".}
proc d1*(this: GeomFillSnglrFunc; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "GeomFill_SnglrFunc.hxx".}
proc d2*(this: GeomFillSnglrFunc; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "GeomFill_SnglrFunc.hxx".}
proc d3*(this: GeomFillSnglrFunc; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "GeomFill_SnglrFunc.hxx".}
proc dn*(this: GeomFillSnglrFunc; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "GeomFill_SnglrFunc.hxx".}
proc resolution*(this: GeomFillSnglrFunc; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "GeomFill_SnglrFunc.hxx".}
proc getType*(this: GeomFillSnglrFunc): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "GeomFill_SnglrFunc.hxx".}


