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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppParCurvesMultiBSpCurve* {.importcpp: "AppParCurves_MultiBSpCurve",
                              header: "AppParCurves_MultiBSpCurve.hxx", bycopy.} = object of AppParCurvesMultiCurve ##
                                                                                                             ## !
                                                                                                             ## returns
                                                                                                             ## an
                                                                                                             ## indefinite
                                                                                                             ## MultiBSpCurve.


proc constructAppParCurvesMultiBSpCurve*(): AppParCurvesMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurvesMultiBSpCurve*(nbPol: cint): AppParCurvesMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurvesMultiBSpCurve*(tabMU: AppParCurvesArray1OfMultiPoint;
                                        knots: TColStdArray1OfReal;
                                        mults: TColStdArray1OfInteger): AppParCurvesMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurvesMultiBSpCurve*(sc: AppParCurvesMultiCurve;
                                        knots: TColStdArray1OfReal;
                                        mults: TColStdArray1OfInteger): AppParCurvesMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc setKnots*(this: var AppParCurvesMultiBSpCurve; theKnots: TColStdArray1OfReal) {.
    importcpp: "SetKnots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc setMultiplicities*(this: var AppParCurvesMultiBSpCurve;
                       theMults: TColStdArray1OfInteger) {.
    importcpp: "SetMultiplicities", header: "AppParCurves_MultiBSpCurve.hxx".}
proc knots*(this: AppParCurvesMultiBSpCurve): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Knots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc multiplicities*(this: AppParCurvesMultiBSpCurve): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "Multiplicities",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc degree*(this: AppParCurvesMultiBSpCurve): cint {.noSideEffect,
    importcpp: "Degree", header: "AppParCurves_MultiBSpCurve.hxx".}
proc value*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt) {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiBSpCurve.hxx".}
proc value*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d) {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiBSpCurve.hxx".}
proc d1*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt;
        v1: var Vec) {.noSideEffect, importcpp: "D1",
                    header: "AppParCurves_MultiBSpCurve.hxx".}
proc d1*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d) {.noSideEffect, importcpp: "D1",
                      header: "AppParCurves_MultiBSpCurve.hxx".}
proc d2*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt;
        v1: var Vec; v2: var Vec) {.noSideEffect, importcpp: "D2",
                              header: "AppParCurves_MultiBSpCurve.hxx".}
proc d2*(this: AppParCurvesMultiBSpCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d; v2: var Vec2d) {.noSideEffect, importcpp: "D2",
                                  header: "AppParCurves_MultiBSpCurve.hxx".}
proc dump*(this: AppParCurvesMultiBSpCurve; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiBSpCurve.hxx".}

























