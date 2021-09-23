##  Copyright (c) 1995-1999 Matra Datavision
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
  ../gp/gp_Pnt, ../gp/gp_Pnt2d, ../gp/gp_Vec, ../gp/gp_Vec2d,
  ../NCollection/NCollection_Array1, ../Standard/Standard_Integer

## ! Class describing a continous 3d and/or function f(u).
## ! This class must be provided by the user to use the approximation algorithm FittingCurve.

type
  AppCont_Function* {.importcpp: "AppCont_Function",
                     header: "AppCont_Function.hxx", bycopy.} = object


proc constructAppCont_Function*(): AppCont_Function {.constructor,
    importcpp: "AppCont_Function(@)", header: "AppCont_Function.hxx".}
proc GetNumberOfPoints*(this: AppCont_Function; theNbPnt: var Standard_Integer;
                       theNbPnt2d: var Standard_Integer) {.noSideEffect,
    importcpp: "GetNumberOfPoints", header: "AppCont_Function.hxx".}
proc GetNbOf3dPoints*(this: AppCont_Function): Standard_Integer {.noSideEffect,
    importcpp: "GetNbOf3dPoints", header: "AppCont_Function.hxx".}
proc GetNbOf2dPoints*(this: AppCont_Function): Standard_Integer {.noSideEffect,
    importcpp: "GetNbOf2dPoints", header: "AppCont_Function.hxx".}
proc destroyAppCont_Function*(this: var AppCont_Function) {.
    importcpp: "#.~AppCont_Function()", header: "AppCont_Function.hxx".}
proc FirstParameter*(this: AppCont_Function): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "AppCont_Function.hxx".}
proc LastParameter*(this: AppCont_Function): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "AppCont_Function.hxx".}
proc Value*(this: AppCont_Function; theU: Standard_Real;
           thePnt2d: var NCollection_Array1[gp_Pnt2d];
           thePnt: var NCollection_Array1[gp_Pnt]): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "AppCont_Function.hxx".}
proc D1*(this: AppCont_Function; theU: Standard_Real;
        theVec2d: var NCollection_Array1[gp_Vec2d];
        theVec: var NCollection_Array1[gp_Vec]): Standard_Boolean {.noSideEffect,
    importcpp: "D1", header: "AppCont_Function.hxx".}
proc PeriodInformation*(this: AppCont_Function; a2: Standard_Integer; ## theDimIdx
                       IsPeriodic: var Standard_Boolean;
                       thePeriod: var Standard_Real) {.noSideEffect,
    importcpp: "PeriodInformation", header: "AppCont_Function.hxx".}