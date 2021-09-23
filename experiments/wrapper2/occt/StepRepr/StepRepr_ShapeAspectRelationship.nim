##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  Handle_StepRepr_ShapeAspectRelationship* = handle[
      StepRepr_ShapeAspectRelationship]

## ! Representation of STEP entity ShapeAspectRelationship

type
  StepRepr_ShapeAspectRelationship* {.importcpp: "StepRepr_ShapeAspectRelationship", header: "StepRepr_ShapeAspectRelationship.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Empty
                                                                        ## constructor


proc constructStepRepr_ShapeAspectRelationship*(): StepRepr_ShapeAspectRelationship {.
    constructor, importcpp: "StepRepr_ShapeAspectRelationship(@)",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc Init*(this: var StepRepr_ShapeAspectRelationship;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aRelatingShapeAspect: handle[StepRepr_ShapeAspect];
          aRelatedShapeAspect: handle[StepRepr_ShapeAspect]) {.importcpp: "Init",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc Name*(this: StepRepr_ShapeAspectRelationship): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ShapeAspectRelationship.hxx".}
proc SetName*(this: var StepRepr_ShapeAspectRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc Description*(this: StepRepr_ShapeAspectRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepRepr_ShapeAspectRelationship.hxx".}
proc SetDescription*(this: var StepRepr_ShapeAspectRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ShapeAspectRelationship.hxx".}
proc HasDescription*(this: StepRepr_ShapeAspectRelationship): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc RelatingShapeAspect*(this: StepRepr_ShapeAspectRelationship): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "RelatingShapeAspect",
                           header: "StepRepr_ShapeAspectRelationship.hxx".}
proc SetRelatingShapeAspect*(this: var StepRepr_ShapeAspectRelationship;
                            RelatingShapeAspect: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetRelatingShapeAspect",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc RelatedShapeAspect*(this: StepRepr_ShapeAspectRelationship): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "RelatedShapeAspect",
                           header: "StepRepr_ShapeAspectRelationship.hxx".}
proc SetRelatedShapeAspect*(this: var StepRepr_ShapeAspectRelationship;
                           RelatedShapeAspect: handle[StepRepr_ShapeAspect]) {.
    importcpp: "SetRelatedShapeAspect",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
type
  StepRepr_ShapeAspectRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ShapeAspectRelationship::get_type_name(@)",
                              header: "StepRepr_ShapeAspectRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ShapeAspectRelationship::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc DynamicType*(this: StepRepr_ShapeAspectRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ShapeAspectRelationship.hxx".}