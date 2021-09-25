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

discard "forward decl of StepFEA_FeaModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_NodeRepresentation"
discard "forward decl of StepFEA_NodeRepresentation"
type
  HandleStepFEA_NodeRepresentation* = Handle[StepFEA_NodeRepresentation]

## ! Representation of STEP entity NodeRepresentation

type
  StepFEA_NodeRepresentation* {.importcpp: "StepFEA_NodeRepresentation",
                               header: "StepFEA_NodeRepresentation.hxx", bycopy.} = object of StepReprRepresentation ##
                                                                                                              ## !
                                                                                                              ## Empty
                                                                                                              ## constructor


proc constructStepFEA_NodeRepresentation*(): StepFEA_NodeRepresentation {.
    constructor, importcpp: "StepFEA_NodeRepresentation(@)",
    header: "StepFEA_NodeRepresentation.hxx".}
proc init*(this: var StepFEA_NodeRepresentation;
          aRepresentationName: Handle[TCollectionHAsciiString];
          aRepresentationItems: Handle[StepReprHArray1OfRepresentationItem];
          aRepresentationContextOfItems: Handle[StepReprRepresentationContext];
          aModelRef: Handle[StepFEA_FeaModel]) {.importcpp: "Init",
    header: "StepFEA_NodeRepresentation.hxx".}
proc modelRef*(this: StepFEA_NodeRepresentation): Handle[StepFEA_FeaModel] {.
    noSideEffect, importcpp: "ModelRef", header: "StepFEA_NodeRepresentation.hxx".}
proc setModelRef*(this: var StepFEA_NodeRepresentation;
                 modelRef: Handle[StepFEA_FeaModel]) {.importcpp: "SetModelRef",
    header: "StepFEA_NodeRepresentation.hxx".}
type
  StepFEA_NodeRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_NodeRepresentation::get_type_name(@)",
                            header: "StepFEA_NodeRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_NodeRepresentation::get_type_descriptor(@)",
    header: "StepFEA_NodeRepresentation.hxx".}
proc dynamicType*(this: StepFEA_NodeRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_NodeRepresentation.hxx".}
