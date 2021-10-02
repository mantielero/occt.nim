##  Created on: 2002-12-12
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

discard "forward decl of StepFEA_FeaModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaGroup"
discard "forward decl of StepFEA_FeaGroup"
type
  HandleC1C1* = Handle[StepFEA_FeaGroup]

## ! Representation of STEP entity FeaGroup

type
  StepFEA_FeaGroup* {.importcpp: "StepFEA_FeaGroup",
                     header: "StepFEA_FeaGroup.hxx", bycopy.} = object of StepBasicGroup ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepFEA_FeaGroup*(): StepFEA_FeaGroup {.constructor,
    importcpp: "StepFEA_FeaGroup(@)", header: "StepFEA_FeaGroup.hxx".}
proc init*(this: var StepFEA_FeaGroup; aGroupName: Handle[TCollectionHAsciiString];
          aGroupDescription: Handle[TCollectionHAsciiString];
          aModelRef: Handle[StepFEA_FeaModel]) {.importcpp: "Init",
    header: "StepFEA_FeaGroup.hxx".}
proc modelRef*(this: StepFEA_FeaGroup): Handle[StepFEA_FeaModel] {.noSideEffect,
    importcpp: "ModelRef", header: "StepFEA_FeaGroup.hxx".}
proc setModelRef*(this: var StepFEA_FeaGroup; modelRef: Handle[StepFEA_FeaModel]) {.
    importcpp: "SetModelRef", header: "StepFEA_FeaGroup.hxx".}
type
  StepFEA_FeaGroupbaseType* = StepBasicGroup

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaGroup::get_type_name(@)",
                            header: "StepFEA_FeaGroup.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaGroup::get_type_descriptor(@)",
    header: "StepFEA_FeaGroup.hxx".}
proc dynamicType*(this: StepFEA_FeaGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_FeaGroup.hxx".}