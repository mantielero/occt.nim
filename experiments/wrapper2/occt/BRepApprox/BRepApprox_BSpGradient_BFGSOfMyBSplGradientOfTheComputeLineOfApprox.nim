##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_MyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  BRepApproxBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox", header: "BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox.hxx",
      bycopy.} = object of MathBFGS


proc constructBRepApproxBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfApprox*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: float; tolerance2d: float; eps: float; nbIterations: int = 200): BRepApproxBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc isSolutionReached*(this: BRepApproxBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfApprox;
                       f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, importcpp: "IsSolutionReached", header: "BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
