##  Created on: 2002-12-10
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
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepFEA_SymmetricTensor23d* {.importcpp: "StepFEA_SymmetricTensor23d",
                               header: "StepFEA_SymmetricTensor23d.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepFEA_SymmetricTensor23d*(): StepFEA_SymmetricTensor23d {.
    constructor, importcpp: "StepFEA_SymmetricTensor23d(@)",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc CaseNum*(this: StepFEA_SymmetricTensor23d; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_SymmetricTensor23d.hxx".}
proc CaseMem*(this: StepFEA_SymmetricTensor23d; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepFEA_SymmetricTensor23d.hxx".}
proc NewMember*(this: StepFEA_SymmetricTensor23d): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepFEA_SymmetricTensor23d.hxx".}
proc SetIsotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                    aVal: Standard_Real) {.
    importcpp: "SetIsotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc IsotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): Standard_Real {.
    noSideEffect, importcpp: "IsotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc SetOrthotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                      aVal: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetOrthotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc OrthotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): handle[
    TColStd_HArray1OfReal] {.noSideEffect,
                            importcpp: "OrthotropicSymmetricTensor23d",
                            header: "StepFEA_SymmetricTensor23d.hxx".}
proc SetAnisotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                      aVal: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetAnisotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc AnisotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): handle[
    TColStd_HArray1OfReal] {.noSideEffect,
                            importcpp: "AnisotropicSymmetricTensor23d",
                            header: "StepFEA_SymmetricTensor23d.hxx".}