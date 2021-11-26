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

type
  MathComputeGaussPointsAndWeights* {.importcpp: "math_ComputeGaussPointsAndWeights", header: "math_ComputeGaussPointsAndWeights.hxx",
                                     bycopy.} = object


proc newMathComputeGaussPointsAndWeights*(number: cint): MathComputeGaussPointsAndWeights {.
    cdecl, constructor, importcpp: "math_ComputeGaussPointsAndWeights(@)",
    dynlib: tkmath.}
proc isDone*(this: MathComputeGaussPointsAndWeights): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc points*(this: MathComputeGaussPointsAndWeights): MathVector {.noSideEffect,
    cdecl, importcpp: "Points", dynlib: tkmath.}
proc weights*(this: MathComputeGaussPointsAndWeights): MathVector {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkmath.}