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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentedDefinition,
  ../Standard/Standard_Transient

discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentedDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRepresentation"
discard "forward decl of StepRepr_PropertyDefinitionRepresentation"
type
  Handle_StepRepr_PropertyDefinitionRepresentation* = handle[
      StepRepr_PropertyDefinitionRepresentation]

## ! Representation of STEP entity PropertyDefinitionRepresentation

type
  StepRepr_PropertyDefinitionRepresentation* {.
      importcpp: "StepRepr_PropertyDefinitionRepresentation",
      header: "StepRepr_PropertyDefinitionRepresentation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepRepr_PropertyDefinitionRepresentation*(): StepRepr_PropertyDefinitionRepresentation {.
    constructor, importcpp: "StepRepr_PropertyDefinitionRepresentation(@)",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc Init*(this: var StepRepr_PropertyDefinitionRepresentation;
          aDefinition: StepRepr_RepresentedDefinition;
          aUsedRepresentation: handle[StepRepr_Representation]) {.
    importcpp: "Init", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc Definition*(this: StepRepr_PropertyDefinitionRepresentation): StepRepr_RepresentedDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc SetDefinition*(this: var StepRepr_PropertyDefinitionRepresentation;
                   Definition: StepRepr_RepresentedDefinition) {.
    importcpp: "SetDefinition",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc UsedRepresentation*(this: StepRepr_PropertyDefinitionRepresentation): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "UsedRepresentation", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc SetUsedRepresentation*(this: var StepRepr_PropertyDefinitionRepresentation;
                           UsedRepresentation: handle[StepRepr_Representation]) {.
    importcpp: "SetUsedRepresentation",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
type
  StepRepr_PropertyDefinitionRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_PropertyDefinitionRepresentation::get_type_name(@)", header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_PropertyDefinitionRepresentation::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}
proc DynamicType*(this: StepRepr_PropertyDefinitionRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_PropertyDefinitionRepresentation.hxx".}