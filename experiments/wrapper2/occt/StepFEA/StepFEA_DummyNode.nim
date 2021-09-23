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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_NodeRepresentation

discard "forward decl of StepFEA_DummyNode"
discard "forward decl of StepFEA_DummyNode"
type
  Handle_StepFEA_DummyNode* = handle[StepFEA_DummyNode]

## ! Representation of STEP entity DummyNode

type
  StepFEA_DummyNode* {.importcpp: "StepFEA_DummyNode",
                      header: "StepFEA_DummyNode.hxx", bycopy.} = object of StepFEA_NodeRepresentation ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepFEA_DummyNode*(): StepFEA_DummyNode {.constructor,
    importcpp: "StepFEA_DummyNode(@)", header: "StepFEA_DummyNode.hxx".}
type
  StepFEA_DummyNodebase_type* = StepFEA_NodeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepFEA_DummyNode::get_type_name(@)",
                              header: "StepFEA_DummyNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_DummyNode::get_type_descriptor(@)",
    header: "StepFEA_DummyNode.hxx".}
proc DynamicType*(this: StepFEA_DummyNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_DummyNode.hxx".}