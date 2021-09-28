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

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of math_Matrix"
type
  HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx",
      bycopy.} = object of MathFunctionSetWithDerivatives


proc constructHLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter*(
    curve1: StandardAddress; curve2: StandardAddress): HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc nbVariables*(this: HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter): cint {.
    noSideEffect, importcpp: "NbVariables",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc nbEquations*(this: HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter): cint {.
    noSideEffect, importcpp: "NbEquations",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc value*(this: var HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
           x: MathVector; f: var MathVector): bool {.importcpp: "Value",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc derivatives*(this: var HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
                 x: MathVector; d: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}
proc values*(this: var HLRBRepTheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
            x: MathVector; f: var MathVector; d: var MathMatrix): bool {.
    importcpp: "Values",
    header: "HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx".}

























