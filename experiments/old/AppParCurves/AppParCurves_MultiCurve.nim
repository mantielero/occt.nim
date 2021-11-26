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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AppParCurves_MultiPoint"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppParCurvesMultiCurve* {.importcpp: "AppParCurves_MultiCurve",
                           header: "AppParCurves_MultiCurve.hxx", bycopy.} = object ## !
                                                                               ## returns
                                                                               ## an
                                                                               ## indefinite
                                                                               ## MultiCurve.


proc constructAppParCurvesMultiCurve*(): AppParCurvesMultiCurve {.constructor,
    importcpp: "AppParCurves_MultiCurve(@)", header: "AppParCurves_MultiCurve.hxx".}
proc constructAppParCurvesMultiCurve*(nbPol: cint): AppParCurvesMultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc constructAppParCurvesMultiCurve*(tabMU: AppParCurvesArray1OfMultiPoint): AppParCurvesMultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc destroyAppParCurvesMultiCurve*(this: var AppParCurvesMultiCurve) {.
    importcpp: "#.~AppParCurves_MultiCurve()",
    header: "AppParCurves_MultiCurve.hxx".}
proc setNbPoles*(this: var AppParCurvesMultiCurve; nbPoles: cint) {.
    importcpp: "SetNbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc setValue*(this: var AppParCurvesMultiCurve; index: cint;
              mPoint: AppParCurvesMultiPoint) {.importcpp: "SetValue",
    header: "AppParCurves_MultiCurve.hxx".}
proc nbCurves*(this: AppParCurvesMultiCurve): cint {.noSideEffect,
    importcpp: "NbCurves", header: "AppParCurves_MultiCurve.hxx".}
proc nbPoles*(this: AppParCurvesMultiCurve): cint {.noSideEffect,
    importcpp: "NbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc degree*(this: AppParCurvesMultiCurve): cint {.noSideEffect, importcpp: "Degree",
    header: "AppParCurves_MultiCurve.hxx".}
proc dimension*(this: AppParCurvesMultiCurve; cuIndex: cint): cint {.noSideEffect,
    importcpp: "Dimension", header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; index: cint): AppParCurvesMultiPoint {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc pole*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): Pnt {.
    noSideEffect, importcpp: "Pole", header: "AppParCurves_MultiCurve.hxx".}
proc pole2d*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): Pnt2d {.
    noSideEffect, importcpp: "Pole2d", header: "AppParCurves_MultiCurve.hxx".}
proc transform*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat; dx: cfloat;
               y: cfloat; dy: cfloat; z: cfloat; dz: cfloat) {.importcpp: "Transform",
    header: "AppParCurves_MultiCurve.hxx".}
proc transform2d*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat;
                 dx: cfloat; y: cfloat; dy: cfloat) {.importcpp: "Transform2d",
    header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt) {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d) {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt; v1: var Vec) {.
    noSideEffect, importcpp: "D1", header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d) {.noSideEffect, importcpp: "D1",
                      header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt; v1: var Vec;
        v2: var Vec) {.noSideEffect, importcpp: "D2",
                    header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d; v2: var Vec2d) {.noSideEffect, importcpp: "D2",
                                  header: "AppParCurves_MultiCurve.hxx".}
proc dump*(this: AppParCurvesMultiCurve; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiCurve.hxx".}

























