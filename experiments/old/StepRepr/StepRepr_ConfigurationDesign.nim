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

discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepRepr_ConfigurationDesignItem"
discard "forward decl of StepRepr_ConfigurationDesign"
discard "forward decl of StepRepr_ConfigurationDesign"
type
  HandleC1C1* = Handle[StepReprConfigurationDesign]

## ! Representation of STEP entity ConfigurationDesign

type
  StepReprConfigurationDesign* {.importcpp: "StepRepr_ConfigurationDesign",
                                header: "StepRepr_ConfigurationDesign.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepReprConfigurationDesign*(): StepReprConfigurationDesign {.
    constructor, importcpp: "StepRepr_ConfigurationDesign(@)",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc init*(this: var StepReprConfigurationDesign;
          aConfiguration: Handle[StepReprConfigurationItem];
          aDesign: StepReprConfigurationDesignItem) {.importcpp: "Init",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc configuration*(this: StepReprConfigurationDesign): Handle[
    StepReprConfigurationItem] {.noSideEffect, importcpp: "Configuration",
                                header: "StepRepr_ConfigurationDesign.hxx".}
proc setConfiguration*(this: var StepReprConfigurationDesign;
                      configuration: Handle[StepReprConfigurationItem]) {.
    importcpp: "SetConfiguration", header: "StepRepr_ConfigurationDesign.hxx".}
proc design*(this: StepReprConfigurationDesign): StepReprConfigurationDesignItem {.
    noSideEffect, importcpp: "Design", header: "StepRepr_ConfigurationDesign.hxx".}
proc setDesign*(this: var StepReprConfigurationDesign;
               design: StepReprConfigurationDesignItem) {.importcpp: "SetDesign",
    header: "StepRepr_ConfigurationDesign.hxx".}
type
  StepReprConfigurationDesignbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ConfigurationDesign::get_type_name(@)",
                            header: "StepRepr_ConfigurationDesign.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ConfigurationDesign::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationDesign.hxx".}
proc dynamicType*(this: StepReprConfigurationDesign): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationDesign.hxx".}