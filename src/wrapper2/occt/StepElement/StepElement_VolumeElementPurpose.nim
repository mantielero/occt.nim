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
  ../Standard/Standard_Integer, StepElement_EnumeratedVolumeElementPurpose

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of TCollection_HAsciiString"
type
  StepElement_VolumeElementPurpose* {.importcpp: "StepElement_VolumeElementPurpose", header: "StepElement_VolumeElementPurpose.hxx",
                                     bycopy.} = object of StepData_SelectType ## ! Empty
                                                                         ## constructor


proc constructStepElement_VolumeElementPurpose*(): StepElement_VolumeElementPurpose {.
    constructor, importcpp: "StepElement_VolumeElementPurpose(@)",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc CaseNum*(this: StepElement_VolumeElementPurpose;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_VolumeElementPurpose.hxx".}
proc CaseMem*(this: StepElement_VolumeElementPurpose;
             ent: handle[StepData_SelectMember]): Standard_Integer {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_VolumeElementPurpose.hxx".}
proc NewMember*(this: StepElement_VolumeElementPurpose): handle[
    StepData_SelectMember] {.noSideEffect, importcpp: "NewMember",
                            header: "StepElement_VolumeElementPurpose.hxx".}
proc SetEnumeratedVolumeElementPurpose*(this: var StepElement_VolumeElementPurpose;
    aVal: StepElement_EnumeratedVolumeElementPurpose) {.
    importcpp: "SetEnumeratedVolumeElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc EnumeratedVolumeElementPurpose*(this: StepElement_VolumeElementPurpose): StepElement_EnumeratedVolumeElementPurpose {.
    noSideEffect, importcpp: "EnumeratedVolumeElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc SetApplicationDefinedElementPurpose*(
    this: var StepElement_VolumeElementPurpose;
    aVal: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationDefinedElementPurpose",
    header: "StepElement_VolumeElementPurpose.hxx".}
proc ApplicationDefinedElementPurpose*(this: StepElement_VolumeElementPurpose): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "ApplicationDefinedElementPurpose",
                               header: "StepElement_VolumeElementPurpose.hxx".}