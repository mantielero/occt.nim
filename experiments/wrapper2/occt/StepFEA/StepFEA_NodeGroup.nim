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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaModel"
discard "forward decl of StepFEA_NodeGroup"
discard "forward decl of StepFEA_NodeGroup"
type
  HandleStepFEA_NodeGroup* = Handle[StepFEA_NodeGroup]

## ! Representation of STEP entity NodeGroup

type
  StepFEA_NodeGroup* {.importcpp: "StepFEA_NodeGroup",
                      header: "StepFEA_NodeGroup.hxx", bycopy.} = object of StepFEA_FeaGroup ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructStepFEA_NodeGroup*(): StepFEA_NodeGroup {.constructor,
    importcpp: "StepFEA_NodeGroup(@)", header: "StepFEA_NodeGroup.hxx".}
proc init*(this: var StepFEA_NodeGroup; aGroupName: Handle[TCollectionHAsciiString];
          aGroupDescription: Handle[TCollectionHAsciiString];
          aFeaGroupModelRef: Handle[StepFEA_FeaModel];
          aNodes: Handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "Init", header: "StepFEA_NodeGroup.hxx".}
proc nodes*(this: StepFEA_NodeGroup): Handle[StepFEA_HArray1OfNodeRepresentation] {.
    noSideEffect, importcpp: "Nodes", header: "StepFEA_NodeGroup.hxx".}
proc setNodes*(this: var StepFEA_NodeGroup;
              nodes: Handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "SetNodes", header: "StepFEA_NodeGroup.hxx".}
type
  StepFEA_NodeGroupbaseType* = StepFEA_FeaGroup

proc getTypeName*(): cstring {.importcpp: "StepFEA_NodeGroup::get_type_name(@)",
                            header: "StepFEA_NodeGroup.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_NodeGroup::get_type_descriptor(@)",
    header: "StepFEA_NodeGroup.hxx".}
proc dynamicType*(this: StepFEA_NodeGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_NodeGroup.hxx".}
