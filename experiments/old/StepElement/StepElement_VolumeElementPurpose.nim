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
discard "forward decl of TCollection_HAsciiString"
type
  StepElementVolumeElementPurpose* {.importcpp: "StepElement_VolumeElementPurpose", header: "StepElement_VolumeElementPurpose.hxx",
                                    bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepElementVolumeElementPurpose; theSize: csize_t): pointer {.
    importcpp: "StepElement_VolumeElementPurpose::operator new",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc `delete`*(this: var StepElementVolumeElementPurpose; theAddress: pointer) {.
    importcpp: "StepElement_VolumeElementPurpose::operator delete",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc `new[]`*(this: var StepElementVolumeElementPurpose; theSize: csize_t): pointer {.
    importcpp: "StepElement_VolumeElementPurpose::operator new[]",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc `delete[]`*(this: var StepElementVolumeElementPurpose; theAddress: pointer) {.
    importcpp: "StepElement_VolumeElementPurpose::operator delete[]",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc `new`*(this: var StepElementVolumeElementPurpose; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepElement_VolumeElementPurpose::operator new", header: "StepElement_VolumeElementPurpose.hxx".}
proc `delete`*(this: var StepElementVolumeElementPurpose; a2: pointer; a3: pointer) {.
    importcpp: "StepElement_VolumeElementPurpose::operator delete",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc constructStepElementVolumeElementPurpose*(): StepElementVolumeElementPurpose {.
    constructor, importcpp: "StepElement_VolumeElementPurpose(@)",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc caseNum*(this: StepElementVolumeElementPurpose; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc caseMem*(this: StepElementVolumeElementPurpose;
             ent: Handle[StepDataSelectMember]): int {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_VolumeElementPurpose.hxx".}
proc newMember*(this: StepElementVolumeElementPurpose): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc setEnumeratedVolumeElementPurpose*(this: var StepElementVolumeElementPurpose;
    aVal: StepElementEnumeratedVolumeElementPurpose) {.
    importcpp: "SetEnumeratedVolumeElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc enumeratedVolumeElementPurpose*(this: StepElementVolumeElementPurpose): StepElementEnumeratedVolumeElementPurpose {.
    noSideEffect, importcpp: "EnumeratedVolumeElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc setApplicationDefinedElementPurpose*(
    this: var StepElementVolumeElementPurpose;
    aVal: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationDefinedElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc applicationDefinedElementPurpose*(this: StepElementVolumeElementPurpose): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ApplicationDefinedElementPurpose",
                              header: "StepElement_VolumeElementPurpose.hxx".}