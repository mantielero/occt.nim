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
  ../StepRepr/StepRepr_Representation,
  ../StepRepr/StepRepr_HArray1OfRepresentationItem

discard "forward decl of StepFEA_FeaModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_NodeRepresentation"
discard "forward decl of StepFEA_NodeRepresentation"
type
  Handle_StepFEA_NodeRepresentation* = handle[StepFEA_NodeRepresentation]

## ! Representation of STEP entity NodeRepresentation

type
  StepFEA_NodeRepresentation* {.importcpp: "StepFEA_NodeRepresentation",
                               header: "StepFEA_NodeRepresentation.hxx", bycopy.} = object of StepRepr_Representation ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepFEA_NodeRepresentation*(): StepFEA_NodeRepresentation {.
    constructor, importcpp: "StepFEA_NodeRepresentation(@)",
    header: "StepFEA_NodeRepresentation.hxx".}
proc Init*(this: var StepFEA_NodeRepresentation;
          aRepresentation_Name: handle[TCollection_HAsciiString];
          aRepresentation_Items: handle[StepRepr_HArray1OfRepresentationItem];
    aRepresentation_ContextOfItems: handle[StepRepr_RepresentationContext];
          aModelRef: handle[StepFEA_FeaModel]) {.importcpp: "Init",
    header: "StepFEA_NodeRepresentation.hxx".}
proc ModelRef*(this: StepFEA_NodeRepresentation): handle[StepFEA_FeaModel] {.
    noSideEffect, importcpp: "ModelRef", header: "StepFEA_NodeRepresentation.hxx".}
proc SetModelRef*(this: var StepFEA_NodeRepresentation;
                 ModelRef: handle[StepFEA_FeaModel]) {.importcpp: "SetModelRef",
    header: "StepFEA_NodeRepresentation.hxx".}
type
  StepFEA_NodeRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepFEA_NodeRepresentation::get_type_name(@)",
                              header: "StepFEA_NodeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_NodeRepresentation::get_type_descriptor(@)",
    header: "StepFEA_NodeRepresentation.hxx".}
proc DynamicType*(this: StepFEA_NodeRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_NodeRepresentation.hxx".}