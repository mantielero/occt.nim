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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepFEA_SymmetricTensor43d* {.importcpp: "StepFEA_SymmetricTensor43d",
                               header: "StepFEA_SymmetricTensor43d.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepFEA_SymmetricTensor43d*(): StepFEA_SymmetricTensor43d {.
    constructor, importcpp: "StepFEA_SymmetricTensor43d(@)",
    header: "StepFEA_SymmetricTensor43d.hxx".}
proc caseNum*(this: StepFEA_SymmetricTensor43d; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_SymmetricTensor43d.hxx".}
proc caseMem*(this: StepFEA_SymmetricTensor43d; ent: Handle[StepDataSelectMember]): int {.
    noSideEffect, importcpp: "CaseMem", header: "StepFEA_SymmetricTensor43d.hxx".}
proc newMember*(this: StepFEA_SymmetricTensor43d): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepFEA_SymmetricTensor43d.hxx".}
proc anisotropicSymmetricTensor43d*(this: StepFEA_SymmetricTensor43d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "AnisotropicSymmetricTensor43d",
                           header: "StepFEA_SymmetricTensor43d.hxx".}
proc setFeaIsotropicSymmetricTensor43d*(this: var StepFEA_SymmetricTensor43d;
                                       val: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetFeaIsotropicSymmetricTensor43d",
    header: "StepFEA_SymmetricTensor43d.hxx".}
proc feaIsotropicSymmetricTensor43d*(this: StepFEA_SymmetricTensor43d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "FeaIsotropicSymmetricTensor43d",
                           header: "StepFEA_SymmetricTensor43d.hxx".}
proc feaIsoOrthotropicSymmetricTensor43d*(this: StepFEA_SymmetricTensor43d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "FeaIsoOrthotropicSymmetricTensor43d",
                           header: "StepFEA_SymmetricTensor43d.hxx".}
proc feaTransverseIsotropicSymmetricTensor43d*(this: StepFEA_SymmetricTensor43d): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "FeaTransverseIsotropicSymmetricTensor43d",
                           header: "StepFEA_SymmetricTensor43d.hxx".}
proc feaColumnNormalisedOrthotropicSymmetricTensor43d*(
    this: StepFEA_SymmetricTensor43d): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "FeaColumnNormalisedOrthotropicSymmetricTensor43d",
    header: "StepFEA_SymmetricTensor43d.hxx".}
proc feaColumnNormalisedMonoclinicSymmetricTensor43d*(
    this: StepFEA_SymmetricTensor43d): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "FeaColumnNormalisedMonoclinicSymmetricTensor43d",
    header: "StepFEA_SymmetricTensor43d.hxx".}
