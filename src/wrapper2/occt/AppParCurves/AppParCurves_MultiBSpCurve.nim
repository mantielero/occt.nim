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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Integer,
  AppParCurves_MultiCurve, AppParCurves_Array1OfMultiPoint,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppParCurves_MultiBSpCurve* {.importcpp: "AppParCurves_MultiBSpCurve",
                               header: "AppParCurves_MultiBSpCurve.hxx", bycopy.} = object of AppParCurves_MultiCurve ##
                                                                                                               ## !
                                                                                                               ## returns
                                                                                                               ## an
                                                                                                               ## indefinite
                                                                                                               ## MultiBSpCurve.


proc constructAppParCurves_MultiBSpCurve*(): AppParCurves_MultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurves_MultiBSpCurve*(NbPol: Standard_Integer): AppParCurves_MultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurves_MultiBSpCurve*(tabMU: AppParCurves_Array1OfMultiPoint;
    Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger): AppParCurves_MultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc constructAppParCurves_MultiBSpCurve*(SC: AppParCurves_MultiCurve;
    Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger): AppParCurves_MultiBSpCurve {.
    constructor, importcpp: "AppParCurves_MultiBSpCurve(@)",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc SetKnots*(this: var AppParCurves_MultiBSpCurve; theKnots: TColStd_Array1OfReal) {.
    importcpp: "SetKnots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc SetMultiplicities*(this: var AppParCurves_MultiBSpCurve;
                       theMults: TColStd_Array1OfInteger) {.
    importcpp: "SetMultiplicities", header: "AppParCurves_MultiBSpCurve.hxx".}
proc Knots*(this: AppParCurves_MultiBSpCurve): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Knots", header: "AppParCurves_MultiBSpCurve.hxx".}
proc Multiplicities*(this: AppParCurves_MultiBSpCurve): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Multiplicities",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc Degree*(this: AppParCurves_MultiBSpCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "AppParCurves_MultiBSpCurve.hxx".}
proc Value*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
           U: Standard_Real; Pt: var gp_Pnt) {.noSideEffect, importcpp: "Value",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc Value*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
           U: Standard_Real; Pt: var gp_Pnt2d) {.noSideEffect, importcpp: "Value",
    header: "AppParCurves_MultiBSpCurve.hxx".}
proc D1*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
        U: Standard_Real; Pt: var gp_Pnt; V1: var gp_Vec) {.noSideEffect,
    importcpp: "D1", header: "AppParCurves_MultiBSpCurve.hxx".}
proc D1*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
        U: Standard_Real; Pt: var gp_Pnt2d; V1: var gp_Vec2d) {.noSideEffect,
    importcpp: "D1", header: "AppParCurves_MultiBSpCurve.hxx".}
proc D2*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
        U: Standard_Real; Pt: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.noSideEffect,
    importcpp: "D2", header: "AppParCurves_MultiBSpCurve.hxx".}
proc D2*(this: AppParCurves_MultiBSpCurve; CuIndex: Standard_Integer;
        U: Standard_Real; Pt: var gp_Pnt2d; V1: var gp_Vec2d; V2: var gp_Vec2d) {.
    noSideEffect, importcpp: "D2", header: "AppParCurves_MultiBSpCurve.hxx".}
proc Dump*(this: AppParCurves_MultiBSpCurve; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiBSpCurve.hxx".}