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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  HandleStepReprShapeAspectRelationship* = Handle[StepReprShapeAspectRelationship]

## ! Representation of STEP entity ShapeAspectRelationship

type
  StepReprShapeAspectRelationship* {.importcpp: "StepRepr_ShapeAspectRelationship", header: "StepRepr_ShapeAspectRelationship.hxx",
                                    bycopy.} = object of StandardTransient ## ! Empty
                                                                      ## constructor


proc constructStepReprShapeAspectRelationship*(): StepReprShapeAspectRelationship {.
    constructor, importcpp: "StepRepr_ShapeAspectRelationship(@)",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc init*(this: var StepReprShapeAspectRelationship;
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingShapeAspect: Handle[StepReprShapeAspect];
          aRelatedShapeAspect: Handle[StepReprShapeAspect]) {.importcpp: "Init",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc name*(this: StepReprShapeAspectRelationship): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ShapeAspectRelationship.hxx".}
proc setName*(this: var StepReprShapeAspectRelationship;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc description*(this: StepReprShapeAspectRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepRepr_ShapeAspectRelationship.hxx".}
proc setDescription*(this: var StepReprShapeAspectRelationship;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ShapeAspectRelationship.hxx".}
proc hasDescription*(this: StepReprShapeAspectRelationship): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepRepr_ShapeAspectRelationship.hxx".}
proc relatingShapeAspect*(this: StepReprShapeAspectRelationship): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "RelatingShapeAspect",
                          header: "StepRepr_ShapeAspectRelationship.hxx".}
proc setRelatingShapeAspect*(this: var StepReprShapeAspectRelationship;
                            relatingShapeAspect: Handle[StepReprShapeAspect]) {.
    importcpp: "SetRelatingShapeAspect",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc relatedShapeAspect*(this: StepReprShapeAspectRelationship): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "RelatedShapeAspect",
                          header: "StepRepr_ShapeAspectRelationship.hxx".}
proc setRelatedShapeAspect*(this: var StepReprShapeAspectRelationship;
                           relatedShapeAspect: Handle[StepReprShapeAspect]) {.
    importcpp: "SetRelatedShapeAspect",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
type
  StepReprShapeAspectRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ShapeAspectRelationship::get_type_name(@)",
                            header: "StepRepr_ShapeAspectRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ShapeAspectRelationship::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
proc dynamicType*(this: StepReprShapeAspectRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ShapeAspectRelationship.hxx".}
