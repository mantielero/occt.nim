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

discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionEffectivity]
  StepBasicProductDefinitionEffectivity* {.
      importcpp: "StepBasic_ProductDefinitionEffectivity",
      header: "StepBasic_ProductDefinitionEffectivity.hxx", bycopy.} = object of StepBasicEffectivity


proc constructStepBasicProductDefinitionEffectivity*(): StepBasicProductDefinitionEffectivity {.
    constructor, importcpp: "StepBasic_ProductDefinitionEffectivity(@)",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc init*(this: var StepBasicProductDefinitionEffectivity;
          aId: Handle[TCollectionHAsciiString];
          aUsage: Handle[StepBasicProductDefinitionRelationship]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc usage*(this: StepBasicProductDefinitionEffectivity): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect, importcpp: "Usage",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc setUsage*(this: var StepBasicProductDefinitionEffectivity;
              aUsage: Handle[StepBasicProductDefinitionRelationship]) {.
    importcpp: "SetUsage", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
type
  StepBasicProductDefinitionEffectivitybaseType* = StepBasicEffectivity

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionEffectivity::get_type_name(@)", header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionEffectivity::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionEffectivity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionEffectivity.hxx".}