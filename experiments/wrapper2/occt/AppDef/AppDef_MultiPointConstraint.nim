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
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppDefMultiPointConstraint* {.importcpp: "AppDef_MultiPointConstraint",
                               header: "AppDef_MultiPointConstraint.hxx", bycopy.} = object of AppParCurvesMultiPoint ##
                                                                                                               ## !
                                                                                                               ## creates
                                                                                                               ## an
                                                                                                               ## undefined
                                                                                                               ## MultiPointConstraint.


proc constructAppDefMultiPointConstraint*(): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(nbPoints: int; nbPoints2d: int): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt2d): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt;
    tabP2d: TColgpArray1OfPnt2d): AppDefMultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt;
    tabP2d: TColgpArray1OfPnt2d; tabVec: TColgpArray1OfVec;
    tabVec2d: TColgpArray1OfVec2d; tabCur: TColgpArray1OfVec;
    tabCur2d: TColgpArray1OfVec2d): AppDefMultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt;
    tabP2d: TColgpArray1OfPnt2d; tabVec: TColgpArray1OfVec;
    tabVec2d: TColgpArray1OfVec2d): AppDefMultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt;
    tabVec: TColgpArray1OfVec; tabCur: TColgpArray1OfVec): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP: TColgpArray1OfPnt;
    tabVec: TColgpArray1OfVec): AppDefMultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP2d: TColgpArray1OfPnt2d;
    tabVec2d: TColgpArray1OfVec2d): AppDefMultiPointConstraint {.constructor,
    importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc constructAppDefMultiPointConstraint*(tabP2d: TColgpArray1OfPnt2d;
    tabVec2d: TColgpArray1OfVec2d; tabCur2d: TColgpArray1OfVec2d): AppDefMultiPointConstraint {.
    constructor, importcpp: "AppDef_MultiPointConstraint(@)",
    header: "AppDef_MultiPointConstraint.hxx".}
proc setTang*(this: var AppDefMultiPointConstraint; index: int; tang: Vec) {.
    importcpp: "SetTang", header: "AppDef_MultiPointConstraint.hxx".}
proc tang*(this: AppDefMultiPointConstraint; index: int): Vec {.noSideEffect,
    importcpp: "Tang", header: "AppDef_MultiPointConstraint.hxx".}
proc setTang2d*(this: var AppDefMultiPointConstraint; index: int; tang2d: Vec2d) {.
    importcpp: "SetTang2d", header: "AppDef_MultiPointConstraint.hxx".}
proc tang2d*(this: AppDefMultiPointConstraint; index: int): Vec2d {.noSideEffect,
    importcpp: "Tang2d", header: "AppDef_MultiPointConstraint.hxx".}
proc setCurv*(this: var AppDefMultiPointConstraint; index: int; curv: Vec) {.
    importcpp: "SetCurv", header: "AppDef_MultiPointConstraint.hxx".}
proc curv*(this: AppDefMultiPointConstraint; index: int): Vec {.noSideEffect,
    importcpp: "Curv", header: "AppDef_MultiPointConstraint.hxx".}
proc setCurv2d*(this: var AppDefMultiPointConstraint; index: int; curv2d: Vec2d) {.
    importcpp: "SetCurv2d", header: "AppDef_MultiPointConstraint.hxx".}
proc curv2d*(this: AppDefMultiPointConstraint; index: int): Vec2d {.noSideEffect,
    importcpp: "Curv2d", header: "AppDef_MultiPointConstraint.hxx".}
proc isTangencyPoint*(this: AppDefMultiPointConstraint): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "AppDef_MultiPointConstraint.hxx".}
proc isCurvaturePoint*(this: AppDefMultiPointConstraint): bool {.noSideEffect,
    importcpp: "IsCurvaturePoint", header: "AppDef_MultiPointConstraint.hxx".}
proc dump*(this: AppDefMultiPointConstraint; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppDef_MultiPointConstraint.hxx".}
