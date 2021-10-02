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
type
  StepFEA_SymmetricTensor22d* {.importcpp: "StepFEA_SymmetricTensor22d",
                               header: "StepFEA_SymmetricTensor22d.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepFEA_SymmetricTensor22d; theSize: csize_t): pointer {.
    importcpp: "StepFEA_SymmetricTensor22d::operator new",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc `delete`*(this: var StepFEA_SymmetricTensor22d; theAddress: pointer) {.
    importcpp: "StepFEA_SymmetricTensor22d::operator delete",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc `new[]`*(this: var StepFEA_SymmetricTensor22d; theSize: csize_t): pointer {.
    importcpp: "StepFEA_SymmetricTensor22d::operator new[]",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc `delete[]`*(this: var StepFEA_SymmetricTensor22d; theAddress: pointer) {.
    importcpp: "StepFEA_SymmetricTensor22d::operator delete[]",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc `new`*(this: var StepFEA_SymmetricTensor22d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepFEA_SymmetricTensor22d::operator new",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc `delete`*(this: var StepFEA_SymmetricTensor22d; a2: pointer; a3: pointer) {.
    importcpp: "StepFEA_SymmetricTensor22d::operator delete",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc constructStepFEA_SymmetricTensor22d*(): StepFEA_SymmetricTensor22d {.
    constructor, importcpp: "StepFEA_SymmetricTensor22d(@)",
    header: "StepFEA_SymmetricTensor22d.hxx".}
proc caseNum*(this: StepFEA_SymmetricTensor22d; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_SymmetricTensor22d.hxx".}
proc anisotropicSymmetricTensor22d*(this: StepFEA_SymmetricTensor22d): Handle[
    TColStdHArray1OfReal] {.noSideEffect,
                           importcpp: "AnisotropicSymmetricTensor22d",
                           header: "StepFEA_SymmetricTensor22d.hxx".}