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
  StepElementSurfaceElementPurpose* {.importcpp: "StepElement_SurfaceElementPurpose", header: "StepElement_SurfaceElementPurpose.hxx",
                                     bycopy.} = object of StepDataSelectType ## ! Empty
                                                                        ## constructor


proc constructStepElementSurfaceElementPurpose*(): StepElementSurfaceElementPurpose {.
    constructor, importcpp: "StepElement_SurfaceElementPurpose(@)",
    header: "StepElement_SurfaceElementPurpose.hxx".}
proc caseNum*(this: StepElementSurfaceElementPurpose;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepElement_SurfaceElementPurpose.hxx".}
proc caseMem*(this: StepElementSurfaceElementPurpose;
             ent: Handle[StepDataSelectMember]): int {.noSideEffect,
    importcpp: "CaseMem", header: "StepElement_SurfaceElementPurpose.hxx".}
proc newMember*(this: StepElementSurfaceElementPurpose): Handle[
    StepDataSelectMember] {.noSideEffect, importcpp: "NewMember",
                           header: "StepElement_SurfaceElementPurpose.hxx".}
proc setEnumeratedSurfaceElementPurpose*(this: var StepElementSurfaceElementPurpose;
    aVal: StepElementEnumeratedSurfaceElementPurpose) {.
    importcpp: "SetEnumeratedSurfaceElementPurpose",
    header: "StepElement_SurfaceElementPurpose.hxx".}
proc enumeratedSurfaceElementPurpose*(this: StepElementSurfaceElementPurpose): StepElementEnumeratedSurfaceElementPurpose {.
    noSideEffect, importcpp: "EnumeratedSurfaceElementPurpose",
    header: "StepElement_SurfaceElementPurpose.hxx".}
proc setApplicationDefinedElementPurpose*(
    this: var StepElementSurfaceElementPurpose;
    aVal: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationDefinedElementPurpose",
    header: "StepElement_SurfaceElementPurpose.hxx".}
proc applicationDefinedElementPurpose*(this: StepElementSurfaceElementPurpose): Handle[
    TCollectionHAsciiString] {.noSideEffect,
                              importcpp: "ApplicationDefinedElementPurpose",
                              header: "StepElement_SurfaceElementPurpose.hxx".}
