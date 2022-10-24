import math_types

##  Created on: 1996-01-22
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of Standard_NotImplemented"
discard "forward decl of math_FunctionSet"


proc newMathGaussSetIntegration*(f: var MathFunctionSet; lower: MathVector;
                                upper: MathVector; order: MathIntegerVector): MathGaussSetIntegration {.
    cdecl, constructor, importcpp: "math_GaussSetIntegration(@)", header: "math_GaussSetIntegration.hxx".}
proc isDone*(this: MathGaussSetIntegration): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_GaussSetIntegration.hxx".}
proc value*(this: MathGaussSetIntegration): MathVector {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_GaussSetIntegration.hxx".}
proc dump*(this: MathGaussSetIntegration; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "math_GaussSetIntegration.hxx".}
