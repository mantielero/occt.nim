##  Created on: 2002-01-04
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ConnectedFaceSet,
  StepShape_HArray1OfFace

discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ConnectedFaceSubSet"
discard "forward decl of StepShape_ConnectedFaceSubSet"
type
  Handle_StepShape_ConnectedFaceSubSet* = handle[StepShape_ConnectedFaceSubSet]

## ! Representation of STEP entity ConnectedFaceSubSet

type
  StepShape_ConnectedFaceSubSet* {.importcpp: "StepShape_ConnectedFaceSubSet",
                                  header: "StepShape_ConnectedFaceSubSet.hxx",
                                  bycopy.} = object of StepShape_ConnectedFaceSet ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructStepShape_ConnectedFaceSubSet*(): StepShape_ConnectedFaceSubSet {.
    constructor, importcpp: "StepShape_ConnectedFaceSubSet(@)",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc Init*(this: var StepShape_ConnectedFaceSubSet;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aConnectedFaceSet_CfsFaces: handle[StepShape_HArray1OfFace];
          aParentFaceSet: handle[StepShape_ConnectedFaceSet]) {.importcpp: "Init",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc ParentFaceSet*(this: StepShape_ConnectedFaceSubSet): handle[
    StepShape_ConnectedFaceSet] {.noSideEffect, importcpp: "ParentFaceSet",
                                 header: "StepShape_ConnectedFaceSubSet.hxx".}
proc SetParentFaceSet*(this: var StepShape_ConnectedFaceSubSet;
                      ParentFaceSet: handle[StepShape_ConnectedFaceSet]) {.
    importcpp: "SetParentFaceSet", header: "StepShape_ConnectedFaceSubSet.hxx".}
type
  StepShape_ConnectedFaceSubSetbase_type* = StepShape_ConnectedFaceSet

proc get_type_name*(): cstring {.importcpp: "StepShape_ConnectedFaceSubSet::get_type_name(@)",
                              header: "StepShape_ConnectedFaceSubSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ConnectedFaceSubSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc DynamicType*(this: StepShape_ConnectedFaceSubSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedFaceSubSet.hxx".}