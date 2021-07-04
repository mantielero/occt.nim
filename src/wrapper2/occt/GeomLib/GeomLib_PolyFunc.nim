##  Created on: 1998-09-22
##  Created by: Philippe MANGINGeomLib_PolyFunc.c
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../math/math_Vector,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

## ! Polynomial  Function

type
  GeomLib_PolyFunc* {.importcpp: "GeomLib_PolyFunc",
                     header: "GeomLib_PolyFunc.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeomLib_PolyFunc*(Coeffs: math_Vector): GeomLib_PolyFunc {.
    constructor, importcpp: "GeomLib_PolyFunc(@)", header: "GeomLib_PolyFunc.hxx".}
proc Value*(this: var GeomLib_PolyFunc; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GeomLib_PolyFunc.hxx".}
proc Derivative*(this: var GeomLib_PolyFunc; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "GeomLib_PolyFunc.hxx".}
proc Values*(this: var GeomLib_PolyFunc; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "GeomLib_PolyFunc.hxx".}