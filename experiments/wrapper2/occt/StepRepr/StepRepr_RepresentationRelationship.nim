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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of StepRepr_RepresentationRelationship"
type
  Handle_StepRepr_RepresentationRelationship* = handle[
      StepRepr_RepresentationRelationship]
  StepRepr_RepresentationRelationship* {.importcpp: "StepRepr_RepresentationRelationship", header: "StepRepr_RepresentationRelationship.hxx",
                                        bycopy.} = object of Standard_Transient ## !
                                                                           ## Returns a
                                                                           ## RepresentationRelationship


proc constructStepRepr_RepresentationRelationship*(): StepRepr_RepresentationRelationship {.
    constructor, importcpp: "StepRepr_RepresentationRelationship(@)",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc Init*(this: var StepRepr_RepresentationRelationship;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aRep1: handle[StepRepr_Representation];
          aRep2: handle[StepRepr_Representation]) {.importcpp: "Init",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc SetName*(this: var StepRepr_RepresentationRelationship;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc Name*(this: StepRepr_RepresentationRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_RepresentationRelationship.hxx".}
proc SetDescription*(this: var StepRepr_RepresentationRelationship;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_RepresentationRelationship.hxx".}
proc Description*(this: StepRepr_RepresentationRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_RepresentationRelationship.hxx".}
proc SetRep1*(this: var StepRepr_RepresentationRelationship;
             aRep1: handle[StepRepr_Representation]) {.importcpp: "SetRep1",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc Rep1*(this: StepRepr_RepresentationRelationship): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Rep1",
                              header: "StepRepr_RepresentationRelationship.hxx".}
proc SetRep2*(this: var StepRepr_RepresentationRelationship;
             aRep2: handle[StepRepr_Representation]) {.importcpp: "SetRep2",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc Rep2*(this: StepRepr_RepresentationRelationship): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Rep2",
                              header: "StepRepr_RepresentationRelationship.hxx".}
type
  StepRepr_RepresentationRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_RepresentationRelationship::get_type_name(@)",
                              header: "StepRepr_RepresentationRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_RepresentationRelationship::get_type_descriptor(@)",
    header: "StepRepr_RepresentationRelationship.hxx".}
proc DynamicType*(this: StepRepr_RepresentationRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationRelationship.hxx".}