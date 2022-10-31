import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import appparcurves_types



##  Created on: 1993-09-20
##  Created by: Modelistation
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



proc newAppParCurvesMultiBSpCurve*(): AppParCurvesMultiBSpCurve {.cdecl,
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)", header: "AppParCurves_MultiBSpCurve.hxx".}
proc newAppParCurvesMultiBSpCurve*(nbPol: cint): AppParCurvesMultiBSpCurve {.cdecl,
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)", header: "AppParCurves_MultiBSpCurve.hxx".}
proc newAppParCurvesMultiBSpCurve*(tabMU: AppParCurvesArray1OfMultiPoint;
                                  knots: TColStdArray1OfReal;
                                  mults: TColStdArray1OfInteger): AppParCurvesMultiBSpCurve {.
    cdecl, constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc newAppParCurvesMultiBSpCurve*(sc: AppParCurvesMultiCurve;
                                  knots: TColStdArray1OfReal;
                                  mults: TColStdArray1OfInteger): AppParCurvesMultiBSpCurve {.
    cdecl, constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc setKnots*(this: var AppParCurvesMultiBSpCurve; theKnots: TColStdArray1OfReal) {.
    cdecl, importcpp: "SetKnots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc setMultiplicities*(this: var AppParCurvesMultiBSpCurve;
                       theMults: TColStdArray1OfInteger) {.cdecl,
    importcpp: "SetMultiplicities", header: "AppParCurves_MultiBSpCurve.hxx".}
proc knots*(this: AppParCurvesMultiBSpCurve): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Knots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc multiplicities*(this: AppParCurvesMultiBSpCurve): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Multiplicities", header: "AppParCurves_MultiBSpCurve.hxx".}
proc degree*(this: AppParCurvesMultiBSpCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "AppParCurves_MultiBSpCurve.hxx".}
proc value*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var PntObj) {.
    noSideEffect, cdecl, importcpp: "Value", header: "AppParCurves_MultiBSpCurve.hxx".}
proc value*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj) {.
    noSideEffect, cdecl, importcpp: "Value", header: "AppParCurves_MultiBSpCurve.hxx".}
proc d1*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var PntObj;
        v1: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "AppParCurves_MultiBSpCurve.hxx".}
proc d1*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj;
        v1: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D1", header: "AppParCurves_MultiBSpCurve.hxx".}
proc d2*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var PntObj;
        v1: var VecObj; v2: var VecObj) {.noSideEffect, cdecl, importcpp: "D2",
                              header: "AppParCurves_MultiBSpCurve.hxx".}
proc d2*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj;
        v1: var Vec2dObj; v2: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D2",
                                  header: "AppParCurves_MultiBSpCurve.hxx".}
proc dump*(this: AppParCurvesMultiBSpCurve; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "AppParCurves_MultiBSpCurve.hxx".}

