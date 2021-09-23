##  Created on: 1996-04-05
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal, AdvApprox_Cutting,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

## ! inherits class Cutting; contains a list of preferential points (di)i
## ! if Cutting is necessary in [a,b], we cut at the di nearest from (a+b)/2.

type
  AdvApprox_PrefCutting* {.importcpp: "AdvApprox_PrefCutting",
                          header: "AdvApprox_PrefCutting.hxx", bycopy.} = object of AdvApprox_Cutting


proc constructAdvApprox_PrefCutting*(CutPnts: TColStd_Array1OfReal): AdvApprox_PrefCutting {.
    constructor, importcpp: "AdvApprox_PrefCutting(@)",
    header: "AdvApprox_PrefCutting.hxx".}
proc Value*(this: AdvApprox_PrefCutting; a: Standard_Real; b: Standard_Real;
           cuttingvalue: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "AdvApprox_PrefCutting.hxx".}