import appcont_types

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

## ! Class describing a continous 3d and/or function f(u).
## ! This class must be provided by the user to use the approximation algorithm FittingCurve.



proc newAppContFunction*(): AppContFunction {.cdecl, constructor,
    importcpp: "AppCont_Function(@)", header: "AppCont_Function.hxx".}
proc getNumberOfPoints*(this: AppContFunction; theNbPnt: var cint;
                       theNbPnt2d: var cint) {.noSideEffect, cdecl,
    importcpp: "GetNumberOfPoints", header: "AppCont_Function.hxx".}
proc getNbOf3dPoints*(this: AppContFunction): cint {.noSideEffect, cdecl,
    importcpp: "GetNbOf3dPoints", header: "AppCont_Function.hxx".}
proc getNbOf2dPoints*(this: AppContFunction): cint {.noSideEffect, cdecl,
    importcpp: "GetNbOf2dPoints", header: "AppCont_Function.hxx".}
proc destroyAppContFunction*(this: var AppContFunction) {.cdecl,
    importcpp: "#.~AppCont_Function()", header: "AppCont_Function.hxx".}
proc firstParameter*(this: AppContFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "AppCont_Function.hxx".}
proc lastParameter*(this: AppContFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "AppCont_Function.hxx".}
proc value*(this: AppContFunction; theU: cfloat;
           thePnt2d: var NCollectionArray1[Pnt2dObj];
           thePnt: var NCollectionArray1[PntObj]): bool {.noSideEffect, cdecl,
    importcpp: "Value", header: "AppCont_Function.hxx".}
proc d1*(this: AppContFunction; theU: cfloat; theVec2d: var NCollectionArray1[Vec2dObj];
        theVec: var NCollectionArray1[VecObj]): bool {.noSideEffect, cdecl,
    importcpp: "D1", header: "AppCont_Function.hxx".}
proc periodInformation*(this: AppContFunction; a2: cint; isPeriodic: var bool;
                       thePeriod: var cfloat) {.noSideEffect, cdecl,
    importcpp: "PeriodInformation", header: "AppCont_Function.hxx".}
