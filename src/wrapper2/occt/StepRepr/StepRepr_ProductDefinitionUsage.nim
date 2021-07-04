##  Created on: 2000-07-03
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_ProductDefinitionRelationship

discard "forward decl of StepRepr_ProductDefinitionUsage"
discard "forward decl of StepRepr_ProductDefinitionUsage"
type
  Handle_StepRepr_ProductDefinitionUsage* = handle[StepRepr_ProductDefinitionUsage]

## ! Representation of STEP entity ProductDefinitionUsage

type
  StepRepr_ProductDefinitionUsage* {.importcpp: "StepRepr_ProductDefinitionUsage", header: "StepRepr_ProductDefinitionUsage.hxx",
                                    bycopy.} = object of StepBasic_ProductDefinitionRelationship ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepRepr_ProductDefinitionUsage*(): StepRepr_ProductDefinitionUsage {.
    constructor, importcpp: "StepRepr_ProductDefinitionUsage(@)",
    header: "StepRepr_ProductDefinitionUsage.hxx".}
type
  StepRepr_ProductDefinitionUsagebase_type* = StepBasic_ProductDefinitionRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_ProductDefinitionUsage::get_type_name(@)",
                              header: "StepRepr_ProductDefinitionUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ProductDefinitionUsage::get_type_descriptor(@)",
    header: "StepRepr_ProductDefinitionUsage.hxx".}
proc DynamicType*(this: StepRepr_ProductDefinitionUsage): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ProductDefinitionUsage.hxx".}