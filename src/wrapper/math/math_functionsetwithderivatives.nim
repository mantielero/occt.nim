import math_types

##  Created on: 1991-05-13
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

discard "forward decl of math_Matrix"


proc nbVariables*(this: MathFunctionSetWithDerivatives): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "math_FunctionSetWithDerivatives.hxx".}
proc nbEquations*(this: MathFunctionSetWithDerivatives): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "math_FunctionSetWithDerivatives.hxx".}
proc value*(this: var MathFunctionSetWithDerivatives; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "math_FunctionSetWithDerivatives.hxx".}
proc derivatives*(this: var MathFunctionSetWithDerivatives; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "math_FunctionSetWithDerivatives.hxx".}
proc values*(this: var MathFunctionSetWithDerivatives; x: MathVector;
            f: var MathVector; d: var MathMatrix): bool {.cdecl, importcpp: "Values",
    header: "math_FunctionSetWithDerivatives.hxx".}
