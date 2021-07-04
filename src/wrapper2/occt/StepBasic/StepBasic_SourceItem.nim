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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of TCollection_HAsciiString"
type
  StepBasic_SourceItem* {.importcpp: "StepBasic_SourceItem",
                         header: "StepBasic_SourceItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepBasic_SourceItem*(): StepBasic_SourceItem {.constructor,
    importcpp: "StepBasic_SourceItem(@)", header: "StepBasic_SourceItem.hxx".}
proc CaseNum*(this: StepBasic_SourceItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepBasic_SourceItem.hxx".}
proc NewMember*(this: StepBasic_SourceItem): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepBasic_SourceItem.hxx".}
proc Identifier*(this: StepBasic_SourceItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Identifier", header: "StepBasic_SourceItem.hxx".}