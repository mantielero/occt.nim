##  Created on: 2016-03-30
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ProductDefinition

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionReferenceWithLocalRepresentation"
type
  Handle_StepBasic_ProductDefinitionReferenceWithLocalRepresentation* = handle[
      StepBasic_ProductDefinitionReferenceWithLocalRepresentation]
  StepBasic_ProductDefinitionReferenceWithLocalRepresentation* {.
      importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx",
      bycopy.} = object of StepBasic_ProductDefinition ## ! Returns a
                                                  ## ProductDefinitionReferenceWithLocalRepresentation


proc constructStepBasic_ProductDefinitionReferenceWithLocalRepresentation*(): StepBasic_ProductDefinitionReferenceWithLocalRepresentation {.
    constructor, importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation(@)",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionReferenceWithLocalRepresentation;
          theSource: handle[StepBasic_ExternalSource];
          theId: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theFormation: handle[StepBasic_ProductDefinitionFormation];
          theFrameOfReference: handle[StepBasic_ProductDefinitionContext]) {.
    importcpp: "Init",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc Source*(this: StepBasic_ProductDefinitionReferenceWithLocalRepresentation): handle[
    StepBasic_ExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc SetSource*(this: var StepBasic_ProductDefinitionReferenceWithLocalRepresentation;
               theSource: handle[StepBasic_ExternalSource]) {.
    importcpp: "SetSource",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
type
  StepBasic_ProductDefinitionReferenceWithLocalRepresentationbase_type* = StepBasic_ProductDefinition

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation::get_type_name(@)", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionReferenceWithLocalRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}