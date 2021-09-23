##  Created on: 1996-08-23
##  Created by: Benoit TANNIOU
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

type
  CSLib_NormalPolyDef* {.importcpp: "CSLib_NormalPolyDef",
                        header: "CSLib_NormalPolyDef.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructCSLib_NormalPolyDef*(k0: Standard_Integer; li: TColStd_Array1OfReal): CSLib_NormalPolyDef {.
    constructor, importcpp: "CSLib_NormalPolyDef(@)",
    header: "CSLib_NormalPolyDef.hxx".}
proc Value*(this: var CSLib_NormalPolyDef; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "CSLib_NormalPolyDef.hxx".}
proc Derivative*(this: var CSLib_NormalPolyDef; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "CSLib_NormalPolyDef.hxx".}
proc Values*(this: var CSLib_NormalPolyDef; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "CSLib_NormalPolyDef.hxx".}