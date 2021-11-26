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

type
  AppContFunction* {.importcpp: "AppCont_Function", header: "AppCont_Function.hxx",
                    bycopy.} = object


proc newAppContFunction*(): AppContFunction {.cdecl, constructor,
    importcpp: "AppCont_Function(@)", dynlib: tkgeombase.}
proc getNumberOfPoints*(this: AppContFunction; theNbPnt: var cint;
                       theNbPnt2d: var cint) {.noSideEffect, cdecl,
    importcpp: "GetNumberOfPoints", dynlib: tkgeombase.}
proc getNbOf3dPoints*(this: AppContFunction): cint {.noSideEffect, cdecl,
    importcpp: "GetNbOf3dPoints", dynlib: tkgeombase.}
proc getNbOf2dPoints*(this: AppContFunction): cint {.noSideEffect, cdecl,
    importcpp: "GetNbOf2dPoints", dynlib: tkgeombase.}
proc destroyAppContFunction*(this: var AppContFunction) {.cdecl,
    importcpp: "#.~AppCont_Function()", dynlib: tkgeombase.}
proc firstParameter*(this: AppContFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkgeombase.}
proc lastParameter*(this: AppContFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkgeombase.}
proc value*(this: AppContFunction; theU: cfloat;
           thePnt2d: var NCollectionArray1[Pnt2d];
           thePnt: var NCollectionArray1[Pnt]): bool {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
proc d1*(this: AppContFunction; theU: cfloat; theVec2d: var NCollectionArray1[Vec2d];
        theVec: var NCollectionArray1[Vec]): bool {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkgeombase.}
proc periodInformation*(this: AppContFunction; a2: cint; isPeriodic: var bool;
                       thePeriod: var cfloat) {.noSideEffect, cdecl,
    importcpp: "PeriodInformation", dynlib: tkgeombase.}