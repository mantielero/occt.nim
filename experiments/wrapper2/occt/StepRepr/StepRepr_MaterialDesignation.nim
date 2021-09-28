##  Created on: 1998-07-24
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_CharacterizedDefinition"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepRepr_MaterialDesignation"
type
  HandleC1C1* = Handle[StepReprMaterialDesignation]
  StepReprMaterialDesignation* {.importcpp: "StepRepr_MaterialDesignation",
                                header: "StepRepr_MaterialDesignation.hxx", bycopy.} = object of StandardTransient


proc constructStepReprMaterialDesignation*(): StepReprMaterialDesignation {.
    constructor, importcpp: "StepRepr_MaterialDesignation(@)",
    header: "StepRepr_MaterialDesignation.hxx".}
proc init*(this: var StepReprMaterialDesignation;
          aName: Handle[TCollectionHAsciiString];
          aOfDefinition: StepReprCharacterizedDefinition) {.importcpp: "Init",
    header: "StepRepr_MaterialDesignation.hxx".}
proc setName*(this: var StepReprMaterialDesignation;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_MaterialDesignation.hxx".}
proc name*(this: StepReprMaterialDesignation): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_MaterialDesignation.hxx".}
proc setOfDefinition*(this: var StepReprMaterialDesignation;
                     aOfDefinition: StepReprCharacterizedDefinition) {.
    importcpp: "SetOfDefinition", header: "StepRepr_MaterialDesignation.hxx".}
proc ofDefinition*(this: StepReprMaterialDesignation): StepReprCharacterizedDefinition {.
    noSideEffect, importcpp: "OfDefinition",
    header: "StepRepr_MaterialDesignation.hxx".}
type
  StepReprMaterialDesignationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_MaterialDesignation::get_type_name(@)",
                            header: "StepRepr_MaterialDesignation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_MaterialDesignation::get_type_descriptor(@)",
    header: "StepRepr_MaterialDesignation.hxx".}
proc dynamicType*(this: StepReprMaterialDesignation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_MaterialDesignation.hxx".}

























