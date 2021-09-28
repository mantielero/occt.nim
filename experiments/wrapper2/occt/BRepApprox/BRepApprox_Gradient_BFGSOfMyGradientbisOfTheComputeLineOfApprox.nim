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
discard "forward decl of BRepApprox_MyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  BRepApproxGradientBFGSOfMyGradientbisOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox", header: "BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox.hxx",
      bycopy.} = object of MathBFGS


proc constructBRepApproxGradientBFGSOfMyGradientbisOfTheComputeLineOfApprox*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: cfloat; tolerance2d: cfloat; eps: cfloat; nbIterations: cint = 200): BRepApproxGradientBFGSOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc isSolutionReached*(this: BRepApproxGradientBFGSOfMyGradientbisOfTheComputeLineOfApprox;
                       f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, importcpp: "IsSolutionReached", header: "BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox.hxx".}

























