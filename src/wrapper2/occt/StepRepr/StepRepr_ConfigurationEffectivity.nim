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
  ../StepBasic/StepBasic_ProductDefinitionEffectivity

discard "forward decl of StepRepr_ConfigurationDesign"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_ConfigurationEffectivity"
discard "forward decl of StepRepr_ConfigurationEffectivity"
type
  Handle_StepRepr_ConfigurationEffectivity* = handle[
      StepRepr_ConfigurationEffectivity]

## ! Representation of STEP entity ConfigurationEffectivity

type
  StepRepr_ConfigurationEffectivity* {.importcpp: "StepRepr_ConfigurationEffectivity", header: "StepRepr_ConfigurationEffectivity.hxx",
                                      bycopy.} = object of StepBasic_ProductDefinitionEffectivity ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepRepr_ConfigurationEffectivity*(): StepRepr_ConfigurationEffectivity {.
    constructor, importcpp: "StepRepr_ConfigurationEffectivity(@)",
    header: "StepRepr_ConfigurationEffectivity.hxx".}
proc Init*(this: var StepRepr_ConfigurationEffectivity;
          aEffectivity_Id: handle[TCollection_HAsciiString];
    aProductDefinitionEffectivity_Usage: handle[
    StepBasic_ProductDefinitionRelationship];
          aConfiguration: handle[StepRepr_ConfigurationDesign]) {.
    importcpp: "Init", header: "StepRepr_ConfigurationEffectivity.hxx".}
proc Configuration*(this: StepRepr_ConfigurationEffectivity): handle[
    StepRepr_ConfigurationDesign] {.noSideEffect, importcpp: "Configuration", header: "StepRepr_ConfigurationEffectivity.hxx".}
proc SetConfiguration*(this: var StepRepr_ConfigurationEffectivity;
                      Configuration: handle[StepRepr_ConfigurationDesign]) {.
    importcpp: "SetConfiguration", header: "StepRepr_ConfigurationEffectivity.hxx".}
type
  StepRepr_ConfigurationEffectivitybase_type* = StepBasic_ProductDefinitionEffectivity

proc get_type_name*(): cstring {.importcpp: "StepRepr_ConfigurationEffectivity::get_type_name(@)",
                              header: "StepRepr_ConfigurationEffectivity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ConfigurationEffectivity::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationEffectivity.hxx".}
proc DynamicType*(this: StepRepr_ConfigurationEffectivity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationEffectivity.hxx".}