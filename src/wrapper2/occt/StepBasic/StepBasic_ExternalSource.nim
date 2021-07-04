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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SourceItem,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ExternalSource"
type
  Handle_StepBasic_ExternalSource* = handle[StepBasic_ExternalSource]

## ! Representation of STEP entity ExternalSource

type
  StepBasic_ExternalSource* {.importcpp: "StepBasic_ExternalSource",
                             header: "StepBasic_ExternalSource.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepBasic_ExternalSource*(): StepBasic_ExternalSource {.constructor,
    importcpp: "StepBasic_ExternalSource(@)",
    header: "StepBasic_ExternalSource.hxx".}
proc Init*(this: var StepBasic_ExternalSource; aSourceId: StepBasic_SourceItem) {.
    importcpp: "Init", header: "StepBasic_ExternalSource.hxx".}
proc SourceId*(this: StepBasic_ExternalSource): StepBasic_SourceItem {.noSideEffect,
    importcpp: "SourceId", header: "StepBasic_ExternalSource.hxx".}
proc SetSourceId*(this: var StepBasic_ExternalSource; SourceId: StepBasic_SourceItem) {.
    importcpp: "SetSourceId", header: "StepBasic_ExternalSource.hxx".}
type
  StepBasic_ExternalSourcebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ExternalSource::get_type_name(@)",
                              header: "StepBasic_ExternalSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ExternalSource::get_type_descriptor(@)",
    header: "StepBasic_ExternalSource.hxx".}
proc DynamicType*(this: StepBasic_ExternalSource): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ExternalSource.hxx".}