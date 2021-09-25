##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of StepRepr_RepresentationRelationship"
type
  HandleStepReprRepresentationRelationship* = Handle[
      StepReprRepresentationRelationship]
  StepReprRepresentationRelationship* {.importcpp: "StepRepr_RepresentationRelationship", header: "StepRepr_RepresentationRelationship.hxx",
                                       bycopy.} = object of StandardTransient ## ! Returns a
                                                                         ## RepresentationRelationship


proc constructStepReprRepresentationRelationship*(): StepReprRepresentationRelationship {.
    constructor, importcpp: "StepRepr_RepresentationRelationship(@)",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc init*(this: var StepReprRepresentationRelationship;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aRep1: Handle[StepReprRepresentation];
          aRep2: Handle[StepReprRepresentation]) {.importcpp: "Init",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc setName*(this: var StepReprRepresentationRelationship;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc name*(this: StepReprRepresentationRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "StepRepr_RepresentationRelationship.hxx".}
proc setDescription*(this: var StepReprRepresentationRelationship;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_RepresentationRelationship.hxx".}
proc description*(this: StepReprRepresentationRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepRepr_RepresentationRelationship.hxx".}
proc setRep1*(this: var StepReprRepresentationRelationship;
             aRep1: Handle[StepReprRepresentation]) {.importcpp: "SetRep1",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc rep1*(this: StepReprRepresentationRelationship): Handle[StepReprRepresentation] {.
    noSideEffect, importcpp: "Rep1",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc setRep2*(this: var StepReprRepresentationRelationship;
             aRep2: Handle[StepReprRepresentation]) {.importcpp: "SetRep2",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc rep2*(this: StepReprRepresentationRelationship): Handle[StepReprRepresentation] {.
    noSideEffect, importcpp: "Rep2",
    header: "StepRepr_RepresentationRelationship.hxx".}
type
  StepReprRepresentationRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_RepresentationRelationship::get_type_name(@)",
                            header: "StepRepr_RepresentationRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_RepresentationRelationship::get_type_descriptor(@)",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc dynamicType*(this: StepReprRepresentationRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationRelationship.hxx".}
