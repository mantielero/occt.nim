##  Created on: 2016-08-25
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_CharacterizedRepresentation"
discard "forward decl of StepRepr_CharacterizedRepresentation"
type
  HandleStepReprCharacterizedRepresentation* = Handle[
      StepReprCharacterizedRepresentation]
  StepReprCharacterizedRepresentation* {.importcpp: "StepRepr_CharacterizedRepresentation", header: "StepRepr_CharacterizedRepresentation.hxx",
                                        bycopy.} = object of StepReprRepresentation


proc constructStepReprCharacterizedRepresentation*(): StepReprCharacterizedRepresentation {.
    constructor, importcpp: "StepRepr_CharacterizedRepresentation(@)",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc init*(this: var StepReprCharacterizedRepresentation;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theItems: Handle[StepReprHArray1OfRepresentationItem];
          theContextOfItems: Handle[StepReprRepresentationContext]) {.
    importcpp: "Init", header: "StepRepr_CharacterizedRepresentation.hxx".}
proc setDescription*(this: var StepReprCharacterizedRepresentation;
                    theDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc description*(this: StepReprCharacterizedRepresentation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_CharacterizedRepresentation.hxx".}
type
  StepReprCharacterizedRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepRepr_CharacterizedRepresentation::get_type_name(@)",
                            header: "StepRepr_CharacterizedRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_CharacterizedRepresentation::get_type_descriptor(@)",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc dynamicType*(this: StepReprCharacterizedRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
