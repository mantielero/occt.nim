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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of math_Matrix"
type
  Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter* {.
      importcpp: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter", header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx",
      bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter*(
    curve1: Adaptor2d_Curve2d; curve2: Adaptor2d_Curve2d): Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc NbVariables*(this: Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc NbEquations*(this: Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc Value*(this: var Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc Derivatives*(this: var Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}
proc Values*(this: var Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx".}