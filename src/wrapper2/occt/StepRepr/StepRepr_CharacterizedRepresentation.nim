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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_Representation

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_CharacterizedRepresentation"
discard "forward decl of StepRepr_CharacterizedRepresentation"
type
  Handle_StepRepr_CharacterizedRepresentation* = handle[
      StepRepr_CharacterizedRepresentation]
  StepRepr_CharacterizedRepresentation* {.
      importcpp: "StepRepr_CharacterizedRepresentation",
      header: "StepRepr_CharacterizedRepresentation.hxx", bycopy.} = object of StepRepr_Representation


proc constructStepRepr_CharacterizedRepresentation*(): StepRepr_CharacterizedRepresentation {.
    constructor, importcpp: "StepRepr_CharacterizedRepresentation(@)",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc Init*(this: var StepRepr_CharacterizedRepresentation;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theItems: handle[StepRepr_HArray1OfRepresentationItem];
          theContextOfItems: handle[StepRepr_RepresentationContext]) {.
    importcpp: "Init", header: "StepRepr_CharacterizedRepresentation.hxx".}
proc SetDescription*(this: var StepRepr_CharacterizedRepresentation;
                    theDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc Description*(this: StepRepr_CharacterizedRepresentation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_CharacterizedRepresentation.hxx".}
type
  StepRepr_CharacterizedRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepRepr_CharacterizedRepresentation::get_type_name(@)", header: "StepRepr_CharacterizedRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_CharacterizedRepresentation::get_type_descriptor(@)",
    header: "StepRepr_CharacterizedRepresentation.hxx".}
proc DynamicType*(this: StepRepr_CharacterizedRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CharacterizedRepresentation.hxx".}