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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepFEA_SymmetricTensor23d* {.importcpp: "StepFEA_SymmetricTensor23d",
                               header: "StepFEA_SymmetricTensor23d.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepFEA_SymmetricTensor23d*(): StepFEA_SymmetricTensor23d {.
    constructor, importcpp: "StepFEA_SymmetricTensor23d(@)",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc caseNum*(this: StepFEA_SymmetricTensor23d; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_SymmetricTensor23d.hxx".}
proc caseMem*(this: StepFEA_SymmetricTensor23d; ent: Handle[StepDataSelectMember]): cint {.
    noSideEffect, importcpp: "CaseMem", header: "StepFEA_SymmetricTensor23d.hxx".}
proc newMember*(this: StepFEA_SymmetricTensor23d): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepFEA_SymmetricTensor23d.hxx".}
proc setIsotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                    aVal: cfloat) {.
    importcpp: "SetIsotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc isotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): cfloat {.
    noSideEffect, importcpp: "IsotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc setOrthotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                      aVal: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetOrthotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc orthotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "OrthotropicSymmetricTensor23d",
                           header: "StepFEA_SymmetricTensor23d.hxx".}
proc setAnisotropicSymmetricTensor23d*(this: var StepFEA_SymmetricTensor23d;
                                      aVal: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetAnisotropicSymmetricTensor23d",
    header: "StepFEA_SymmetricTensor23d.hxx".}
proc anisotropicSymmetricTensor23d*(this: StepFEA_SymmetricTensor23d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "AnisotropicSymmetricTensor23d",
                           header: "StepFEA_SymmetricTensor23d.hxx".}

























