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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer, math_Vector

type
  math_ComputeGaussPointsAndWeights* {.importcpp: "math_ComputeGaussPointsAndWeights", header: "math_ComputeGaussPointsAndWeights.hxx",
                                      bycopy.} = object


proc constructmath_ComputeGaussPointsAndWeights*(Number: Standard_Integer): math_ComputeGaussPointsAndWeights {.
    constructor, importcpp: "math_ComputeGaussPointsAndWeights(@)",
    header: "math_ComputeGaussPointsAndWeights.hxx".}
proc IsDone*(this: math_ComputeGaussPointsAndWeights): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "math_ComputeGaussPointsAndWeights.hxx".}
proc Points*(this: math_ComputeGaussPointsAndWeights): math_Vector {.noSideEffect,
    importcpp: "Points", header: "math_ComputeGaussPointsAndWeights.hxx".}
proc Weights*(this: math_ComputeGaussPointsAndWeights): math_Vector {.noSideEffect,
    importcpp: "Weights", header: "math_ComputeGaussPointsAndWeights.hxx".}