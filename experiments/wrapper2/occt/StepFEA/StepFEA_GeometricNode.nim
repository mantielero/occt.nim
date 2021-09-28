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

discard "forward decl of StepFEA_GeometricNode"
discard "forward decl of StepFEA_GeometricNode"
type
  HandleC1C1* = Handle[StepFEA_GeometricNode]

## ! Representation of STEP entity GeometricNode

type
  StepFEA_GeometricNode* {.importcpp: "StepFEA_GeometricNode",
                          header: "StepFEA_GeometricNode.hxx", bycopy.} = object of StepFEA_NodeRepresentation ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepFEA_GeometricNode*(): StepFEA_GeometricNode {.constructor,
    importcpp: "StepFEA_GeometricNode(@)", header: "StepFEA_GeometricNode.hxx".}
type
  StepFEA_GeometricNodebaseType* = StepFEA_NodeRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_GeometricNode::get_type_name(@)",
                            header: "StepFEA_GeometricNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_GeometricNode::get_type_descriptor(@)",
    header: "StepFEA_GeometricNode.hxx".}
proc dynamicType*(this: StepFEA_GeometricNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_GeometricNode.hxx".}

























