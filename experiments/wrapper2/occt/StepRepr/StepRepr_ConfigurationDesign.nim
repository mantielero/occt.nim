##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  StepRepr_ConfigurationDesignItem, ../Standard/Standard_Transient

discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepRepr_ConfigurationDesignItem"
discard "forward decl of StepRepr_ConfigurationDesign"
discard "forward decl of StepRepr_ConfigurationDesign"
type
  Handle_StepRepr_ConfigurationDesign* = handle[StepRepr_ConfigurationDesign]

## ! Representation of STEP entity ConfigurationDesign

type
  StepRepr_ConfigurationDesign* {.importcpp: "StepRepr_ConfigurationDesign",
                                 header: "StepRepr_ConfigurationDesign.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepRepr_ConfigurationDesign*(): StepRepr_ConfigurationDesign {.
    constructor, importcpp: "StepRepr_ConfigurationDesign(@)",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc Init*(this: var StepRepr_ConfigurationDesign;
          aConfiguration: handle[StepRepr_ConfigurationItem];
          aDesign: StepRepr_ConfigurationDesignItem) {.importcpp: "Init",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc Configuration*(this: StepRepr_ConfigurationDesign): handle[
    StepRepr_ConfigurationItem] {.noSideEffect, importcpp: "Configuration",
                                 header: "StepRepr_ConfigurationDesign.hxx".}
proc SetConfiguration*(this: var StepRepr_ConfigurationDesign;
                      Configuration: handle[StepRepr_ConfigurationItem]) {.
    importcpp: "SetConfiguration", header: "StepRepr_ConfigurationDesign.hxx".}
proc Design*(this: StepRepr_ConfigurationDesign): StepRepr_ConfigurationDesignItem {.
    noSideEffect, importcpp: "Design", header: "StepRepr_ConfigurationDesign.hxx".}
proc SetDesign*(this: var StepRepr_ConfigurationDesign;
               Design: StepRepr_ConfigurationDesignItem) {.importcpp: "SetDesign",
    header: "StepRepr_ConfigurationDesign.hxx".}
type
  StepRepr_ConfigurationDesignbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ConfigurationDesign::get_type_name(@)",
                              header: "StepRepr_ConfigurationDesign.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ConfigurationDesign::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc DynamicType*(this: StepRepr_ConfigurationDesign): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationDesign.hxx".}