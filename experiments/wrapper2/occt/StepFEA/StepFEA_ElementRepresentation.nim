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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_ElementRepresentation"
discard "forward decl of StepFEA_ElementRepresentation"
type
  HandleStepFEA_ElementRepresentation* = Handle[StepFEA_ElementRepresentation]

## ! Representation of STEP entity ElementRepresentation

type
  StepFEA_ElementRepresentation* {.importcpp: "StepFEA_ElementRepresentation",
                                  header: "StepFEA_ElementRepresentation.hxx",
                                  bycopy.} = object of StepReprRepresentation ## ! Empty
                                                                         ## constructor


proc constructStepFEA_ElementRepresentation*(): StepFEA_ElementRepresentation {.
    constructor, importcpp: "StepFEA_ElementRepresentation(@)",
    header: "StepFEA_ElementRepresentation.hxx".}
proc init*(this: var StepFEA_ElementRepresentation;
          aRepresentationName: Handle[TCollectionHAsciiString];
          aRepresentationItems: Handle[StepReprHArray1OfRepresentationItem];
          aRepresentationContextOfItems: Handle[StepReprRepresentationContext];
          aNodeList: Handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "Init", header: "StepFEA_ElementRepresentation.hxx".}
proc nodeList*(this: StepFEA_ElementRepresentation): Handle[
    StepFEA_HArray1OfNodeRepresentation] {.noSideEffect, importcpp: "NodeList",
    header: "StepFEA_ElementRepresentation.hxx".}
proc setNodeList*(this: var StepFEA_ElementRepresentation;
                 nodeList: Handle[StepFEA_HArray1OfNodeRepresentation]) {.
    importcpp: "SetNodeList", header: "StepFEA_ElementRepresentation.hxx".}
type
  StepFEA_ElementRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_ElementRepresentation::get_type_name(@)",
                            header: "StepFEA_ElementRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_ElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_ElementRepresentation.hxx".}
proc dynamicType*(this: StepFEA_ElementRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_ElementRepresentation.hxx".}
