##  Created on: 1995-03-14
##  Created by: Modelistation
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

type
  PeriodicityInfo* {.importcpp: "PeriodicityInfo",
                    header: "AppCont_LeastSquare.hxx", bycopy.} = object
    isPeriodic* {.importc: "isPeriodic".}: StandardBoolean
    myPeriod* {.importc: "myPeriod".}: StandardReal

  AppContLeastSquare* {.importcpp: "AppCont_LeastSquare",
                       header: "AppCont_LeastSquare.hxx", bycopy.} = object ## ! Fix border point
                                                                       ## evaluation.


proc constructAppContLeastSquare*(ssp: AppContFunction; u0: StandardReal;
                                 u1: StandardReal;
                                 firstCons: AppParCurvesConstraint;
                                 lastCons: AppParCurvesConstraint;
                                 deg: StandardInteger; nbPoints: StandardInteger): AppContLeastSquare {.
    constructor, importcpp: "AppCont_LeastSquare(@)",
    header: "AppCont_LeastSquare.hxx".}
proc value*(this: var AppContLeastSquare): AppParCurvesMultiCurve {.
    importcpp: "Value", header: "AppCont_LeastSquare.hxx".}
proc error*(this: AppContLeastSquare; f: var StandardReal; maxE3d: var StandardReal;
           maxE2d: var StandardReal) {.noSideEffect, importcpp: "Error",
                                    header: "AppCont_LeastSquare.hxx".}
proc isDone*(this: AppContLeastSquare): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "AppCont_LeastSquare.hxx".}

