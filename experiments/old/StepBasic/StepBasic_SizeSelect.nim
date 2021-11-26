##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepBasicSizeSelect* {.importcpp: "StepBasic_SizeSelect",
                        header: "StepBasic_SizeSelect.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicSizeSelect; theSize: csize_t): pointer {.
    importcpp: "StepBasic_SizeSelect::operator new",
    header: "StepBasic_SizeSelect.hxx".}
proc `delete`*(this: var StepBasicSizeSelect; theAddress: pointer) {.
    importcpp: "StepBasic_SizeSelect::operator delete",
    header: "StepBasic_SizeSelect.hxx".}
proc `new[]`*(this: var StepBasicSizeSelect; theSize: csize_t): pointer {.
    importcpp: "StepBasic_SizeSelect::operator new[]",
    header: "StepBasic_SizeSelect.hxx".}
proc `delete[]`*(this: var StepBasicSizeSelect; theAddress: pointer) {.
    importcpp: "StepBasic_SizeSelect::operator delete[]",
    header: "StepBasic_SizeSelect.hxx".}
proc `new`*(this: var StepBasicSizeSelect; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepBasic_SizeSelect::operator new",
    header: "StepBasic_SizeSelect.hxx".}
proc `delete`*(this: var StepBasicSizeSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepBasic_SizeSelect::operator delete",
    header: "StepBasic_SizeSelect.hxx".}
proc constructStepBasicSizeSelect*(): StepBasicSizeSelect {.constructor,
    importcpp: "StepBasic_SizeSelect(@)", header: "StepBasic_SizeSelect.hxx".}
proc caseNum*(this: StepBasicSizeSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_SizeSelect.hxx".}
proc newMember*(this: StepBasicSizeSelect): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepBasic_SizeSelect.hxx".}
proc caseMem*(this: StepBasicSizeSelect; ent: Handle[StepDataSelectMember]): int {.
    noSideEffect, importcpp: "CaseMem", header: "StepBasic_SizeSelect.hxx".}
proc setRealValue*(this: var StepBasicSizeSelect; aReal: StandardReal) {.
    importcpp: "SetRealValue", header: "StepBasic_SizeSelect.hxx".}
proc realValue*(this: StepBasicSizeSelect): StandardReal {.noSideEffect,
    importcpp: "RealValue", header: "StepBasic_SizeSelect.hxx".}