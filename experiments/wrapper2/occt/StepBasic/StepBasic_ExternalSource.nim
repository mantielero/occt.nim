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

discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ExternalSource"
type
  HandleC1C1* = Handle[StepBasicExternalSource]

## ! Representation of STEP entity ExternalSource

type
  StepBasicExternalSource* {.importcpp: "StepBasic_ExternalSource",
                            header: "StepBasic_ExternalSource.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepBasicExternalSource*(): StepBasicExternalSource {.constructor,
    importcpp: "StepBasic_ExternalSource(@)",
    header: "StepBasic_ExternalSource.hxx".}
proc init*(this: var StepBasicExternalSource; aSourceId: StepBasicSourceItem) {.
    importcpp: "Init", header: "StepBasic_ExternalSource.hxx".}
proc sourceId*(this: StepBasicExternalSource): StepBasicSourceItem {.noSideEffect,
    importcpp: "SourceId", header: "StepBasic_ExternalSource.hxx".}
proc setSourceId*(this: var StepBasicExternalSource; sourceId: StepBasicSourceItem) {.
    importcpp: "SetSourceId", header: "StepBasic_ExternalSource.hxx".}
type
  StepBasicExternalSourcebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ExternalSource::get_type_name(@)",
                            header: "StepBasic_ExternalSource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ExternalSource::get_type_descriptor(@)",
    header: "StepBasic_ExternalSource.hxx".}
proc dynamicType*(this: StepBasicExternalSource): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_ExternalSource.hxx".}

























