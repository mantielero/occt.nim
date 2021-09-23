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

import
  AppCont_Function, ../AppParCurves/AppParCurves_MultiCurve, ../math/math_Vector,
  ../math/math_Matrix, ../NCollection/NCollection_Array1,
  ../AppParCurves/AppParCurves_Constraint

type
  PeriodicityInfo* {.importcpp: "PeriodicityInfo",
                    header: "AppCont_LeastSquare.hxx", bycopy.} = object
    isPeriodic* {.importc: "isPeriodic".}: Standard_Boolean
    myPeriod* {.importc: "myPeriod".}: Standard_Real

  AppCont_LeastSquare* {.importcpp: "AppCont_LeastSquare",
                        header: "AppCont_LeastSquare.hxx", bycopy.} = object ## ! Fix border point
                                                                        ## evaluation.


proc constructAppCont_LeastSquare*(SSP: AppCont_Function; U0: Standard_Real;
                                  U1: Standard_Real;
                                  FirstCons: AppParCurves_Constraint;
                                  LastCons: AppParCurves_Constraint;
                                  Deg: Standard_Integer;
                                  NbPoints: Standard_Integer): AppCont_LeastSquare {.
    constructor, importcpp: "AppCont_LeastSquare(@)",
    header: "AppCont_LeastSquare.hxx".}
proc Value*(this: var AppCont_LeastSquare): AppParCurves_MultiCurve {.
    importcpp: "Value", header: "AppCont_LeastSquare.hxx".}
proc Error*(this: AppCont_LeastSquare; F: var Standard_Real;
           MaxE3d: var Standard_Real; MaxE2d: var Standard_Real) {.noSideEffect,
    importcpp: "Error", header: "AppCont_LeastSquare.hxx".}
proc IsDone*(this: AppCont_LeastSquare): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AppCont_LeastSquare.hxx".}