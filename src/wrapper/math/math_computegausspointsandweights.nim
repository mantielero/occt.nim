import math_types

##  Created on: 2005-12-19
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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



proc newMathComputeGaussPointsAndWeights*(number: cint): MathComputeGaussPointsAndWeights {.
    cdecl, constructor, importcpp: "math_ComputeGaussPointsAndWeights(@)",
    header: "math_ComputeGaussPointsAndWeights.hxx".}
proc isDone*(this: MathComputeGaussPointsAndWeights): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_ComputeGaussPointsAndWeights.hxx".}
proc points*(this: MathComputeGaussPointsAndWeights): MathVector {.noSideEffect,
    cdecl, importcpp: "Points", header: "math_ComputeGaussPointsAndWeights.hxx".}
proc weights*(this: MathComputeGaussPointsAndWeights): MathVector {.noSideEffect,
    cdecl, importcpp: "Weights", header: "math_ComputeGaussPointsAndWeights.hxx".}
