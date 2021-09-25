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

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionReferenceWithLocalRepresentation"
type
  HandleStepBasicProductDefinitionReferenceWithLocalRepresentation* = Handle[
      StepBasicProductDefinitionReferenceWithLocalRepresentation]
  StepBasicProductDefinitionReferenceWithLocalRepresentation* {.
      importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx",
      bycopy.} = object of StepBasicProductDefinition ## ! Returns a
                                                 ## ProductDefinitionReferenceWithLocalRepresentation


proc constructStepBasicProductDefinitionReferenceWithLocalRepresentation*(): StepBasicProductDefinitionReferenceWithLocalRepresentation {.
    constructor, importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation(@)",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc init*(this: var StepBasicProductDefinitionReferenceWithLocalRepresentation;
          theSource: Handle[StepBasicExternalSource];
          theId: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theFormation: Handle[StepBasicProductDefinitionFormation];
          theFrameOfReference: Handle[StepBasicProductDefinitionContext]) {.
    importcpp: "Init",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc source*(this: StepBasicProductDefinitionReferenceWithLocalRepresentation): Handle[
    StepBasicExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc setSource*(this: var StepBasicProductDefinitionReferenceWithLocalRepresentation;
               theSource: Handle[StepBasicExternalSource]) {.
    importcpp: "SetSource",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
type
  StepBasicProductDefinitionReferenceWithLocalRepresentationbaseType* = StepBasicProductDefinition

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation::get_type_name(@)", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionReferenceWithLocalRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionReferenceWithLocalRepresentation.hxx".}
