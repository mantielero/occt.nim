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

discard "forward decl of StepRepr_DataEnvironment"
discard "forward decl of StepRepr_RepresentedDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_MaterialPropertyRepresentation"
discard "forward decl of StepRepr_MaterialPropertyRepresentation"
type
  HandleC1C1* = Handle[StepReprMaterialPropertyRepresentation]

## ! Representation of STEP entity MaterialPropertyRepresentation

type
  StepReprMaterialPropertyRepresentation* {.
      importcpp: "StepRepr_MaterialPropertyRepresentation",
      header: "StepRepr_MaterialPropertyRepresentation.hxx", bycopy.} = object of StepReprPropertyDefinitionRepresentation ##
                                                                                                                    ## !
                                                                                                                    ## Empty
                                                                                                                    ## constructor


proc constructStepReprMaterialPropertyRepresentation*(): StepReprMaterialPropertyRepresentation {.
    constructor, importcpp: "StepRepr_MaterialPropertyRepresentation(@)",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc init*(this: var StepReprMaterialPropertyRepresentation;
    aPropertyDefinitionRepresentationDefinition: StepReprRepresentedDefinition;
    aPropertyDefinitionRepresentationUsedRepresentation: Handle[
    StepReprRepresentation];
          aDependentEnvironment: Handle[StepReprDataEnvironment]) {.
    importcpp: "Init", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc dependentEnvironment*(this: StepReprMaterialPropertyRepresentation): Handle[
    StepReprDataEnvironment] {.noSideEffect, importcpp: "DependentEnvironment", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc setDependentEnvironment*(this: var StepReprMaterialPropertyRepresentation;
    dependentEnvironment: Handle[StepReprDataEnvironment]) {.
    importcpp: "SetDependentEnvironment",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
type
  StepReprMaterialPropertyRepresentationbaseType* = StepReprPropertyDefinitionRepresentation

proc getTypeName*(): cstring {.importcpp: "StepRepr_MaterialPropertyRepresentation::get_type_name(@)", header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_MaterialPropertyRepresentation::get_type_descriptor(@)",
    header: "StepRepr_MaterialPropertyRepresentation.hxx".}
proc dynamicType*(this: StepReprMaterialPropertyRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_MaterialPropertyRepresentation.hxx".}