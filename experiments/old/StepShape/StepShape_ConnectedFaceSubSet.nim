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

discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ConnectedFaceSubSet"
discard "forward decl of StepShape_ConnectedFaceSubSet"
type
  HandleC1C1* = Handle[StepShapeConnectedFaceSubSet]

## ! Representation of STEP entity ConnectedFaceSubSet

type
  StepShapeConnectedFaceSubSet* {.importcpp: "StepShape_ConnectedFaceSubSet",
                                 header: "StepShape_ConnectedFaceSubSet.hxx",
                                 bycopy.} = object of StepShapeConnectedFaceSet ## ! Empty
                                                                           ## constructor


proc constructStepShapeConnectedFaceSubSet*(): StepShapeConnectedFaceSubSet {.
    constructor, importcpp: "StepShape_ConnectedFaceSubSet(@)",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc init*(this: var StepShapeConnectedFaceSubSet;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aConnectedFaceSetCfsFaces: Handle[StepShapeHArray1OfFace];
          aParentFaceSet: Handle[StepShapeConnectedFaceSet]) {.importcpp: "Init",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc parentFaceSet*(this: StepShapeConnectedFaceSubSet): Handle[
    StepShapeConnectedFaceSet] {.noSideEffect, importcpp: "ParentFaceSet",
                                header: "StepShape_ConnectedFaceSubSet.hxx".}
proc setParentFaceSet*(this: var StepShapeConnectedFaceSubSet;
                      parentFaceSet: Handle[StepShapeConnectedFaceSet]) {.
    importcpp: "SetParentFaceSet", header: "StepShape_ConnectedFaceSubSet.hxx".}
type
  StepShapeConnectedFaceSubSetbaseType* = StepShapeConnectedFaceSet

proc getTypeName*(): cstring {.importcpp: "StepShape_ConnectedFaceSubSet::get_type_name(@)",
                            header: "StepShape_ConnectedFaceSubSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ConnectedFaceSubSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedFaceSubSet.hxx".}
proc dynamicType*(this: StepShapeConnectedFaceSubSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedFaceSubSet.hxx".}