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
  StepFEA_HArray1OfNodeRepresentation, ../StepRepr/StepRepr_Representation,
  ../StepRepr/StepRepr_HArray1OfRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_ElementRepresentation"
discard "forward decl of StepFEA_ElementRepresentation"
type
  Handle_StepFEA_ElementRepresentation* = handle[StepFEA_ElementRepresentation]

## ! Representation of STEP entity ElementRepresentation

type
  StepFEA_ElementRepresentation* {.importcpp: "StepFEA_ElementRepresentation",
                                  header: "StepFEA_ElementRepresentation.hxx",
                                  bycopy.} = object of StepRepr_Representation ## ! Empty
                                                                          ## constructor


proc constructStepFEA_ElementRepresentation*(): StepFEA_ElementRepresentation {.
    constructor, importcpp: "StepFEA_ElementRepresentation(@)",
    header: "StepFEA_ElementRepresentation.hxx".}
proc Init*(this: var StepFEA_ElementRepresentation;
          aRepresentation_Name: handle[TCollection_HAsciiString];
          aRepresentation_Items: handle[StepRepr_HArray1OfRepresentationItem];
    aRepresentation_ContextOfItems: handle[StepRepr_RepresentationContext];
          aNodeList: handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "Init", header: "StepFEA_ElementRepresentation.hxx".}
proc NodeList*(this: StepFEA_ElementRepresentation): handle[
    StepFEA_HArray1OfNodeRepresentation] {.noSideEffect, importcpp: "NodeList",
    header: "StepFEA_ElementRepresentation.hxx".}
proc SetNodeList*(this: var StepFEA_ElementRepresentation;
                 NodeList: handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "SetNodeList", header: "StepFEA_ElementRepresentation.hxx".}
type
  StepFEA_ElementRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepFEA_ElementRepresentation::get_type_name(@)",
                              header: "StepFEA_ElementRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_ElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_ElementRepresentation.hxx".}
proc DynamicType*(this: StepFEA_ElementRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_ElementRepresentation.hxx".}