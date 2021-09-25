##  Created on: 1991-05-14
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_MultipleVarFunction"
type
  MathGaussMultipleIntegration* {.importcpp: "math_GaussMultipleIntegration",
                                 header: "math_GaussMultipleIntegration.hxx",
                                 bycopy.} = object ## ! The Gauss-Legendre integration with Order = points of
                                                ## ! integration for each unknow, is done on the function F
                                                ## ! between the bounds Lower and Upper.


proc constructMathGaussMultipleIntegration*(f: var MathMultipleVarFunction;
    lower: MathVector; upper: MathVector; order: MathIntegerVector): MathGaussMultipleIntegration {.
    constructor, importcpp: "math_GaussMultipleIntegration(@)",
    header: "math_GaussMultipleIntegration.hxx".}
proc isDone*(this: MathGaussMultipleIntegration): bool {.noSideEffect,
    importcpp: "IsDone", header: "math_GaussMultipleIntegration.hxx".}
proc value*(this: MathGaussMultipleIntegration): float {.noSideEffect,
    importcpp: "Value", header: "math_GaussMultipleIntegration.hxx".}
proc dump*(this: MathGaussMultipleIntegration; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_GaussMultipleIntegration.hxx".}
