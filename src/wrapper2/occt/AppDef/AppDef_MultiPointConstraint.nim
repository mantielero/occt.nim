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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiPoint,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_HArray1OfVec, ../TColgp/TColgp_HArray1OfVec2d

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppDef_MultiPointConstraint* {.importcpp: "AppDef_MultiPointConstraint",
                                header: "AppDef_MultiPointConstraint.hxx", bycopy.} = object of AppParCurves_MultiPoint ##
                                                                                                                 ## !
                                                                                                                 ## creates
                                                                                                                 ## an
                                                                                                                 ## undefined
                                                                                                                 ## MultiPointConstraint.


proc constructAppDef_MultiPointConstraint*(): AppDef_MultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(NbPoints: Standard_Integer;
    NbPoints2d: Standard_Integer): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt): AppDef_MultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt2d): AppDef_MultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt;
    tabP2d: TColgp_Array1OfPnt2d): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt;
    tabP2d: TColgp_Array1OfPnt2d; tabVec: TColgp_Array1OfVec;
    tabVec2d: TColgp_Array1OfVec2d; tabCur: TColgp_Array1OfVec;
    tabCur2d: TColgp_Array1OfVec2d): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt;
    tabP2d: TColgp_Array1OfPnt2d; tabVec: TColgp_Array1OfVec;
    tabVec2d: TColgp_Array1OfVec2d): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt;
    tabVec: TColgp_Array1OfVec; tabCur: TColgp_Array1OfVec): AppDef_MultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP: TColgp_Array1OfPnt;
    tabVec: TColgp_Array1OfVec): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP2d: TColgp_Array1OfPnt2d;
    tabVec2d: TColgp_Array1OfVec2d): AppDef_MultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDef_MultiPointConstraint*(tabP2d: TColgp_Array1OfPnt2d;
    tabVec2d: TColgp_Array1OfVec2d; tabCur2d: TColgp_Array1OfVec2d): AppDef_MultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc SetTang*(this: var AppDef_MultiPointConstraint; Index: Standard_Integer;
             Tang: gp_Vec) {.importcpp: "SetTang",
                           header: "AppDef_MultiPointConstraint.hxx".}
proc Tang*(this: AppDef_MultiPointConstraint; Index: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "Tang", header: "AppDef_MultiPointConstraint.hxx".}
proc SetTang2d*(this: var AppDef_MultiPointConstraint; Index: Standard_Integer;
               Tang2d: gp_Vec2d) {.importcpp: "SetTang2d",
                                 header: "AppDef_MultiPointConstraint.hxx".}
proc Tang2d*(this: AppDef_MultiPointConstraint; Index: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "Tang2d", header: "AppDef_MultiPointConstraint.hxx".}
proc SetCurv*(this: var AppDef_MultiPointConstraint; Index: Standard_Integer;
             Curv: gp_Vec) {.importcpp: "SetCurv",
                           header: "AppDef_MultiPointConstraint.hxx".}
proc Curv*(this: AppDef_MultiPointConstraint; Index: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "Curv", header: "AppDef_MultiPointConstraint.hxx".}
proc SetCurv2d*(this: var AppDef_MultiPointConstraint; Index: Standard_Integer;
               Curv2d: gp_Vec2d) {.importcpp: "SetCurv2d",
                                 header: "AppDef_MultiPointConstraint.hxx".}
proc Curv2d*(this: AppDef_MultiPointConstraint; Index: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "Curv2d", header: "AppDef_MultiPointConstraint.hxx".}
proc IsTangencyPoint*(this: AppDef_MultiPointConstraint): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "AppDef_MultiPointConstraint.hxx".}
proc IsCurvaturePoint*(this: AppDef_MultiPointConstraint): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurvaturePoint",
    header: "AppDef_MultiPointConstraint.hxx".}
proc Dump*(this: AppDef_MultiPointConstraint; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_MultiPointConstraint.hxx".}