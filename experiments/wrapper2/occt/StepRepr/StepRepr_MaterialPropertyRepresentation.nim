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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_PropertyDefinitionRepresentation

discard "forward decl of StepRepr_DataEnvironment"
discard "forward decl of StepRepr_RepresentedDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_MaterialPropertyRepresentation"
discard "forward decl of StepRepr_MaterialPropertyRepresentation"
type
  Handle_StepRepr_MaterialPropertyRepresentation* = handle[
      StepRepr_MaterialPropertyRepresentation]

## ! Representation of STEP entity MaterialPropertyRepresentation

type
  StepRepr_MaterialPropertyRepresentation* {.
      importcpp: "StepRepr_MaterialPropertyRepresentation",
      header: "StepRepr_MaterialPropertyRepresentation.hxx", bycopy.} = object of StepRepr_PropertyDefinitionRepresentation ##
                                                                                                                     ## !
                                                                                                                     ## Empty
                                                                                                                     ## constructor


proc constructStepRepr_MaterialPropertyRepresentation*(): StepRepr_MaterialPropertyRepresentation {.
    constructor, importcpp: "StepRepr_MaterialPropertyRepresentation(@)",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc Init*(this: var StepRepr_MaterialPropertyRepresentation;
    aPropertyDefinitionRepresentation_Definition: StepRepr_RepresentedDefinition;
    aPropertyDefinitionRepresentation_UsedRepresentation: handle[
    StepRepr_Representation];
          aDependentEnvironment: handle[StepRepr_DataEnvironment]) {.
    importcpp: "Init", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc DependentEnvironment*(this: StepRepr_MaterialPropertyRepresentation): handle[
    StepRepr_DataEnvironment] {.noSideEffect, importcpp: "DependentEnvironment", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc SetDependentEnvironment*(this: var StepRepr_MaterialPropertyRepresentation;
    DependentEnvironment: handle[StepRepr_DataEnvironment]) {.
    importcpp: "SetDependentEnvironment",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
type
  StepRepr_MaterialPropertyRepresentationbase_type* = StepRepr_PropertyDefinitionRepresentation

proc get_type_name*(): cstring {.importcpp: "StepRepr_MaterialPropertyRepresentation::get_type_name(@)", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_MaterialPropertyRepresentation::get_type_descriptor(@)",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc DynamicType*(this: StepRepr_MaterialPropertyRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_MaterialPropertyRepresentation.hxx".}