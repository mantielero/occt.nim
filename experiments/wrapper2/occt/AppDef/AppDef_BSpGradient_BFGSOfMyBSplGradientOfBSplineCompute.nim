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

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_MyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  AppDefBSpGradientBFGSOfMyBSplGradientOfBSplineCompute* {.
      importcpp: "AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute",
      header: "AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute.hxx",
      bycopy.} = object of MathBFGS


proc constructAppDefBSpGradientBFGSOfMyBSplGradientOfBSplineCompute*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: float; tolerance2d: float; eps: float; nbIterations: int = 200): AppDefBSpGradientBFGSOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute.hxx".}
proc isSolutionReached*(this: AppDefBSpGradientBFGSOfMyBSplGradientOfBSplineCompute;
                       f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, importcpp: "IsSolutionReached",
    header: "AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute.hxx".}
