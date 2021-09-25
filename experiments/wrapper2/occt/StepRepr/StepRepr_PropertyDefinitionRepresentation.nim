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

discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentedDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRepresentation"
discard "forward decl of StepRepr_PropertyDefinitionRepresentation"
type
  HandleStepReprPropertyDefinitionRepresentation* = Handle[
      StepReprPropertyDefinitionRepresentation]

## ! Representation of STEP entity PropertyDefinitionRepresentation

type
  StepReprPropertyDefinitionRepresentation* {.
      importcpp: "StepRepr_PropertyDefinitionRepresentation",
      header: "StepRepr_PropertyDefinitionRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepReprPropertyDefinitionRepresentation*(): StepReprPropertyDefinitionRepresentation {.
    constructor, importcpp: "StepRepr_PropertyDefinitionRepresentation(@)",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc init*(this: var StepReprPropertyDefinitionRepresentation;
          aDefinition: StepReprRepresentedDefinition;
          aUsedRepresentation: Handle[StepReprRepresentation]) {.
    importcpp: "Init", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc definition*(this: StepReprPropertyDefinitionRepresentation): StepReprRepresentedDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc setDefinition*(this: var StepReprPropertyDefinitionRepresentation;
                   definition: StepReprRepresentedDefinition) {.
    importcpp: "SetDefinition",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc usedRepresentation*(this: StepReprPropertyDefinitionRepresentation): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "UsedRepresentation", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc setUsedRepresentation*(this: var StepReprPropertyDefinitionRepresentation;
                           usedRepresentation: Handle[StepReprRepresentation]) {.
    importcpp: "SetUsedRepresentation",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
type
  StepReprPropertyDefinitionRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_PropertyDefinitionRepresentation::get_type_name(@)", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_PropertyDefinitionRepresentation::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc dynamicType*(this: StepReprPropertyDefinitionRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
