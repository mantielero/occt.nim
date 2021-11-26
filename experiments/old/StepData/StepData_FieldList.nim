##  Created on: 1997-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_EntityIterator"
type
  StepDataFieldList* {.importcpp: "StepData_FieldList",
                      header: "StepData_FieldList.hxx", bycopy.} = object


proc `new`*(this: var StepDataFieldList; theSize: csize_t): pointer {.
    importcpp: "StepData_FieldList::operator new",
    header: "StepData_FieldList.hxx".}
proc `delete`*(this: var StepDataFieldList; theAddress: pointer) {.
    importcpp: "StepData_FieldList::operator delete",
    header: "StepData_FieldList.hxx".}
proc `new[]`*(this: var StepDataFieldList; theSize: csize_t): pointer {.
    importcpp: "StepData_FieldList::operator new[]",
    header: "StepData_FieldList.hxx".}
proc `delete[]`*(this: var StepDataFieldList; theAddress: pointer) {.
    importcpp: "StepData_FieldList::operator delete[]",
    header: "StepData_FieldList.hxx".}
proc `new`*(this: var StepDataFieldList; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_FieldList::operator new",
    header: "StepData_FieldList.hxx".}
proc `delete`*(this: var StepDataFieldList; a2: pointer; a3: pointer) {.
    importcpp: "StepData_FieldList::operator delete",
    header: "StepData_FieldList.hxx".}
proc destroyStepDataFieldList*(this: var StepDataFieldList) {.
    importcpp: "#.~StepData_FieldList()", header: "StepData_FieldList.hxx".}
proc constructStepDataFieldList*(): StepDataFieldList {.constructor,
    importcpp: "StepData_FieldList(@)", header: "StepData_FieldList.hxx".}
proc nbFields*(this: StepDataFieldList): int {.noSideEffect, importcpp: "NbFields",
    header: "StepData_FieldList.hxx".}
proc field*(this: StepDataFieldList; num: int): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_FieldList.hxx".}
proc cField*(this: var StepDataFieldList; num: int): var StepDataField {.
    importcpp: "CField", header: "StepData_FieldList.hxx".}
proc fillShared*(this: StepDataFieldList; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillShared", header: "StepData_FieldList.hxx".}