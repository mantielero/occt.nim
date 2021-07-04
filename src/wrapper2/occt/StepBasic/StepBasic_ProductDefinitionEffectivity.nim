##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_Effectivity

discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
type
  Handle_StepBasic_ProductDefinitionEffectivity* = handle[
      StepBasic_ProductDefinitionEffectivity]
  StepBasic_ProductDefinitionEffectivity* {.
      importcpp: "StepBasic_ProductDefinitionEffectivity",
      header: "StepBasic_ProductDefinitionEffectivity.hxx", bycopy.} = object of StepBasic_Effectivity


proc constructStepBasic_ProductDefinitionEffectivity*(): StepBasic_ProductDefinitionEffectivity {.
    constructor, importcpp: "StepBasic_ProductDefinitionEffectivity(@)",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionEffectivity;
          aId: handle[TCollection_HAsciiString];
          aUsage: handle[StepBasic_ProductDefinitionRelationship]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc Usage*(this: StepBasic_ProductDefinitionEffectivity): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect, importcpp: "Usage",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc SetUsage*(this: var StepBasic_ProductDefinitionEffectivity;
              aUsage: handle[StepBasic_ProductDefinitionRelationship]) {.
    importcpp: "SetUsage", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
type
  StepBasic_ProductDefinitionEffectivitybase_type* = StepBasic_Effectivity

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionEffectivity::get_type_name(@)", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionEffectivity::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionEffectivity): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ProductDefinitionEffectivity.hxx".}