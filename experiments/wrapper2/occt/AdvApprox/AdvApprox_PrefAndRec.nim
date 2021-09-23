##  Created on: 1996-11-14
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, AdvApprox_Cutting, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
type
  AdvApprox_PrefAndRec* {.importcpp: "AdvApprox_PrefAndRec",
                         header: "AdvApprox_PrefAndRec.hxx", bycopy.} = object of AdvApprox_Cutting


proc constructAdvApprox_PrefAndRec*(RecomendedCut: TColStd_Array1OfReal;
                                   PrefferedCut: TColStd_Array1OfReal;
                                   Weight: Standard_Real = 5): AdvApprox_PrefAndRec {.
    constructor, importcpp: "AdvApprox_PrefAndRec(@)",
    header: "AdvApprox_PrefAndRec.hxx".}
proc Value*(this: AdvApprox_PrefAndRec; a: Standard_Real; b: Standard_Real;
           cuttingvalue: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "AdvApprox_PrefAndRec.hxx".}