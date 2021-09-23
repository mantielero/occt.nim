##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of math_Matrix"
type
  HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx",
      bycopy.} = object of math_FunctionSetWithDerivatives


proc constructHLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter*(
    curve1: Standard_Address; curve2: Standard_Address): HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc NbVariables*(this: HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc NbEquations*(this: HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc Value*(this: var HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc Derivatives*(this: var HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc Values*(this: var HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}