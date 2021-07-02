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
proc constructAppParCurvesMultiCurve*(nbPol: StandardInteger): AppParCurvesMultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc constructAppParCurvesMultiCurve*(tabMU: AppParCurvesArray1OfMultiPoint): AppParCurvesMultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc destroyAppParCurvesMultiCurve*(this: var AppParCurvesMultiCurve) {.
    importcpp: "#.~AppParCurves_MultiCurve()",
    header: "AppParCurves_MultiCurve.hxx".}
proc setNbPoles*(this: var AppParCurvesMultiCurve; nbPoles: StandardInteger) {.
    importcpp: "SetNbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc setValue*(this: var AppParCurvesMultiCurve; index: StandardInteger;
              mPoint: AppParCurvesMultiPoint) {.importcpp: "SetValue",
    header: "AppParCurves_MultiCurve.hxx".}
proc nbCurves*(this: AppParCurvesMultiCurve): StandardInteger {.noSideEffect,
    importcpp: "NbCurves", header: "AppParCurves_MultiCurve.hxx".}
proc nbPoles*(this: AppParCurvesMultiCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc degree*(this: AppParCurvesMultiCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "AppParCurves_MultiCurve.hxx".}
proc dimension*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Dimension", header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger;
           tabPnt: var TColgpArray1OfPnt) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger;
           tabPnt: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; index: StandardInteger): AppParCurvesMultiPoint {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc pole*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger;
          nieme: StandardInteger): GpPnt {.noSideEffect, importcpp: "Pole",
                                        header: "AppParCurves_MultiCurve.hxx".}
proc pole2d*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger;
            nieme: StandardInteger): GpPnt2d {.noSideEffect, importcpp: "Pole2d",
    header: "AppParCurves_MultiCurve.hxx".}
proc transform*(this: var AppParCurvesMultiCurve; cuIndex: StandardInteger;
               x: StandardReal; dx: StandardReal; y: StandardReal; dy: StandardReal;
               z: StandardReal; dz: StandardReal) {.importcpp: "Transform",
    header: "AppParCurves_MultiCurve.hxx".}
proc transform2d*(this: var AppParCurvesMultiCurve; cuIndex: StandardInteger;
                 x: StandardReal; dx: StandardReal; y: StandardReal; dy: StandardReal) {.
    importcpp: "Transform2d", header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
           pt: var GpPnt) {.noSideEffect, importcpp: "Value",
                         header: "AppParCurves_MultiCurve.hxx".}
proc value*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
           pt: var GpPnt2d) {.noSideEffect, importcpp: "Value",
                           header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
        pt: var GpPnt; v1: var GpVec) {.noSideEffect, importcpp: "D1",
                                  header: "AppParCurves_MultiCurve.hxx".}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
        pt: var GpPnt2d; v1: var GpVec2d) {.noSideEffect, importcpp: "D1",
                                      header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
        pt: var GpPnt; v1: var GpVec; v2: var GpVec) {.noSideEffect, importcpp: "D2",
    header: "AppParCurves_MultiCurve.hxx".}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: StandardInteger; u: StandardReal;
        pt: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d) {.noSideEffect,
    importcpp: "D2", header: "AppParCurves_MultiCurve.hxx".}
proc dump*(this: AppParCurvesMultiCurve; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiCurve.hxx".}

