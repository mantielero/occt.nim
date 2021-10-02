##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  StepBasicSourceItem* {.importcpp: "StepBasic_SourceItem",
                        header: "StepBasic_SourceItem.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepBasicSourceItem; theSize: csize_t): pointer {.
    importcpp: "StepBasic_SourceItem::operator new",
    header: "StepBasic_SourceItem.hxx".}
proc `delete`*(this: var StepBasicSourceItem; theAddress: pointer) {.
    importcpp: "StepBasic_SourceItem::operator delete",
    header: "StepBasic_SourceItem.hxx".}
proc `new[]`*(this: var StepBasicSourceItem; theSize: csize_t): pointer {.
    importcpp: "StepBasic_SourceItem::operator new[]",
    header: "StepBasic_SourceItem.hxx".}
proc `delete[]`*(this: var StepBasicSourceItem; theAddress: pointer) {.
    importcpp: "StepBasic_SourceItem::operator delete[]",
    header: "StepBasic_SourceItem.hxx".}
proc `new`*(this: var StepBasicSourceItem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepBasic_SourceItem::operator new",
    header: "StepBasic_SourceItem.hxx".}
proc `delete`*(this: var StepBasicSourceItem; a2: pointer; a3: pointer) {.
    importcpp: "StepBasic_SourceItem::operator delete",
    header: "StepBasic_SourceItem.hxx".}
proc constructStepBasicSourceItem*(): StepBasicSourceItem {.constructor,
    importcpp: "StepBasic_SourceItem(@)", header: "StepBasic_SourceItem.hxx".}
proc caseNum*(this: StepBasicSourceItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_SourceItem.hxx".}
proc newMember*(this: StepBasicSourceItem): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepBasic_SourceItem.hxx".}
proc identifier*(this: StepBasicSourceItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Identifier", header: "StepBasic_SourceItem.hxx".}