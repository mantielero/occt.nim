##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of math_Matrix"
type
  Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter* {.
      importcpp: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter", header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx",
      bycopy.} = object of MathFunctionSetWithDerivatives


proc constructGeom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter*(
    curve1: Adaptor2dCurve2d; curve2: Adaptor2dCurve2d): Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc nbVariables*(this: Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc nbEquations*(this: Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter): int {.
    noSideEffect, importcpp: "NbEquations",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc value*(this: var Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
           x: MathVector; f: var MathVector): bool {.importcpp: "Value",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc derivatives*(this: var Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
                 x: MathVector; d: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc values*(this: var Geom2dIntTheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
            x: MathVector; f: var MathVector; d: var MathMatrix): bool {.
    importcpp: "Values",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
