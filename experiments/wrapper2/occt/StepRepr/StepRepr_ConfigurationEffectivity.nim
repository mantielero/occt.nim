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

discard "forward decl of StepRepr_ConfigurationDesign"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_ConfigurationEffectivity"
discard "forward decl of StepRepr_ConfigurationEffectivity"
type
  HandleC1C1* = Handle[StepReprConfigurationEffectivity]

## ! Representation of STEP entity ConfigurationEffectivity

type
  StepReprConfigurationEffectivity* {.importcpp: "StepRepr_ConfigurationEffectivity", header: "StepRepr_ConfigurationEffectivity.hxx",
                                     bycopy.} = object of StepBasicProductDefinitionEffectivity ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepReprConfigurationEffectivity*(): StepReprConfigurationEffectivity {.
    constructor, importcpp: "StepRepr_ConfigurationEffectivity(@)",
    header: "StepRepr_ConfigurationEffectivity.hxx".}
proc init*(this: var StepReprConfigurationEffectivity;
          aEffectivityId: Handle[TCollectionHAsciiString];
    aProductDefinitionEffectivityUsage: Handle[
    StepBasicProductDefinitionRelationship];
          aConfiguration: Handle[StepReprConfigurationDesign]) {.
    importcpp: "Init", header: "StepRepr_ConfigurationEffectivity.hxx".}
proc configuration*(this: StepReprConfigurationEffectivity): Handle[
    StepReprConfigurationDesign] {.noSideEffect, importcpp: "Configuration", header: "StepRepr_ConfigurationEffectivity.hxx".}
proc setConfiguration*(this: var StepReprConfigurationEffectivity;
                      configuration: Handle[StepReprConfigurationDesign]) {.
    importcpp: "SetConfiguration", header: "StepRepr_ConfigurationEffectivity.hxx".}
type
  StepReprConfigurationEffectivitybaseType* = StepBasicProductDefinitionEffectivity

proc getTypeName*(): cstring {.importcpp: "StepRepr_ConfigurationEffectivity::get_type_name(@)",
                            header: "StepRepr_ConfigurationEffectivity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ConfigurationEffectivity::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationEffectivity.hxx".}
proc dynamicType*(this: StepReprConfigurationEffectivity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationEffectivity.hxx".}

























