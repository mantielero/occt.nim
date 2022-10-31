import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import appparcurves_types





##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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



proc newAppParCurvesMultiCurve*(): AppParCurvesMultiCurve {.cdecl, constructor,
    importcpp: "AppParCurves_MultiCurve(@)", header: "AppParCurves_MultiCurve.hxx".}
proc newAppParCurvesMultiCurve*(nbPol: cint): AppParCurvesMultiCurve {.cdecl,
    constructor, importcpp: "AppParCurves_MultiCurve(@)", header: "AppParCurves_MultiCurve.hxx".}
proc newAppParCurvesMultiCurve*(tabMU: AppParCurvesArray1OfMultiPoint): AppParCurvesMultiCurve {.
    cdecl, constructor, importcpp: "AppParCurves_MultiCurve(@)", header: "AppParCurves_MultiCurve.hxx".}
proc destroyAppParCurvesMultiCurve*(this: var AppParCurvesMultiCurve) {.cdecl,
    importcpp: "#.~AppParCurves_MultiCurve()", header: "AppParCurves_MultiCurve.hxx".}
proc setNbPoles*(this: var AppParCurvesMultiCurve; nbPoles: cint) {.cdecl,
    importcpp: "SetNbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc setValue*(this: var AppParCurvesMultiCurve; index: cint;
              mPoint: AppParCurvesMultiPoint) {.cdecl, importcpp: "SetValue",
    header: "AppParCurves_MultiCurve.hxx".}
proc nbCurves*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", header: "AppParCurves_MultiCurve.hxx".}
proc nbPoles*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc degree*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "AppParCurves_MultiCurve.hxx".}
proc dimension*(this: AppParCurvesMultiCurve; cuIndex: cint): cint {.noSideEffect,
    cdecl, importcpp: "Dimension", header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt) {.noSideEffect, cdecl, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt2d) {.noSideEffect, cdecl,
    importcpp: "Curve", header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; index: cint): AppParCurvesMultiPoint {.
    noSideEffect, cdecl, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc pole*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): PntObj {.
    noSideEffect, cdecl, importcpp: "Pole", header: "AppParCurves_MultiCurve.hxx".}
proc pole2d*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): Pnt2dObj {.
    noSideEffect, cdecl, importcpp: "Pole2d", header: "AppParCurves_MultiCurve.hxx".}
proc transform*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat; dx: cfloat;
               y: cfloat; dy: cfloat; z: cfloat; dz: cfloat) {.cdecl,
    importcpp: "Transform", header: "AppParCurves_MultiCurve.hxx".}
proc transform2d*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat;
                 dx: cfloat; y: cfloat; dy: cfloat) {.cdecl, importcpp: "Transform2d",
    header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var PntObj) {.
    noSideEffect, cdecl, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj) {.
    noSideEffect, cdecl, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var PntObj; v1: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1", header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj;
        v1: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D1", header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var PntObj; v1: var VecObj;
        v2: var VecObj) {.noSideEffect, cdecl, importcpp: "D2", header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2dObj;
        v1: var Vec2dObj; v2: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D2",
                                  header: "AppParCurves_MultiCurve.hxx".}
proc dump*(this: AppParCurvesMultiCurve; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "AppParCurves_MultiCurve.hxx".}


