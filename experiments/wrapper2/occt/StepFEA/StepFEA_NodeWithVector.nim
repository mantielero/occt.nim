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

discard "forward decl of StepFEA_NodeWithVector"
discard "forward decl of StepFEA_NodeWithVector"
type
  HandleStepFEA_NodeWithVector* = Handle[StepFEA_NodeWithVector]

## ! Representation of STEP entity NodeWithVector

type
  StepFEA_NodeWithVector* {.importcpp: "StepFEA_NodeWithVector",
                           header: "StepFEA_NodeWithVector.hxx", bycopy.} = object of StepFEA_Node ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepFEA_NodeWithVector*(): StepFEA_NodeWithVector {.constructor,
    importcpp: "StepFEA_NodeWithVector(@)", header: "StepFEA_NodeWithVector.hxx".}
type
  StepFEA_NodeWithVectorbaseType* = StepFEA_Node

proc getTypeName*(): cstring {.importcpp: "StepFEA_NodeWithVector::get_type_name(@)",
                            header: "StepFEA_NodeWithVector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_NodeWithVector::get_type_descriptor(@)",
    header: "StepFEA_NodeWithVector.hxx".}
proc dynamicType*(this: StepFEA_NodeWithVector): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepFEA_NodeWithVector.hxx".}
