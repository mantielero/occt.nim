##  Created on: 1999-09-08
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_DerivedUnit"
type
  StepBasicUnit* {.importcpp: "StepBasic_Unit", header: "StepBasic_Unit.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicUnit; theSize: csize_t): pointer {.
    importcpp: "StepBasic_Unit::operator new", header: "StepBasic_Unit.hxx".}
proc `delete`*(this: var StepBasicUnit; theAddress: pointer) {.
    importcpp: "StepBasic_Unit::operator delete", header: "StepBasic_Unit.hxx".}
proc `new[]`*(this: var StepBasicUnit; theSize: csize_t): pointer {.
    importcpp: "StepBasic_Unit::operator new[]", header: "StepBasic_Unit.hxx".}
proc `delete[]`*(this: var StepBasicUnit; theAddress: pointer) {.
    importcpp: "StepBasic_Unit::operator delete[]", header: "StepBasic_Unit.hxx".}
proc `new`*(this: var StepBasicUnit; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepBasic_Unit::operator new", header: "StepBasic_Unit.hxx".}
proc `delete`*(this: var StepBasicUnit; a2: pointer; a3: pointer) {.
    importcpp: "StepBasic_Unit::operator delete", header: "StepBasic_Unit.hxx".}
proc constructStepBasicUnit*(): StepBasicUnit {.constructor,
    importcpp: "StepBasic_Unit(@)", header: "StepBasic_Unit.hxx".}
proc caseNum*(this: StepBasicUnit; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_Unit.hxx".}
proc namedUnit*(this: StepBasicUnit): Handle[StepBasicNamedUnit] {.noSideEffect,
    importcpp: "NamedUnit", header: "StepBasic_Unit.hxx".}
proc derivedUnit*(this: StepBasicUnit): Handle[StepBasicDerivedUnit] {.noSideEffect,
    importcpp: "DerivedUnit", header: "StepBasic_Unit.hxx".}