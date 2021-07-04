##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Standard_Transient"
type
  StepFEA_SymmetricTensor42d* {.importcpp: "StepFEA_SymmetricTensor42d",
                               header: "StepFEA_SymmetricTensor42d.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepFEA_SymmetricTensor42d*(): StepFEA_SymmetricTensor42d {.
    constructor, importcpp: "StepFEA_SymmetricTensor42d(@)",
    header: "StepFEA_SymmetricTensor42d.hxx".}
proc CaseNum*(this: StepFEA_SymmetricTensor42d; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_SymmetricTensor42d.hxx".}
proc AnisotropicSymmetricTensor42d*(this: StepFEA_SymmetricTensor42d): handle[
    TColStd_HArray1OfReal] {.noSideEffect,
                            importcpp: "AnisotropicSymmetricTensor42d",
                            header: "StepFEA_SymmetricTensor42d.hxx".}