##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_HArray1OfEdge,
  StepShape_TopologicalRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ConnectedEdgeSet"
discard "forward decl of StepShape_ConnectedEdgeSet"
type
  Handle_StepShape_ConnectedEdgeSet* = handle[StepShape_ConnectedEdgeSet]

## ! Representation of STEP entity ConnectedEdgeSet

type
  StepShape_ConnectedEdgeSet* {.importcpp: "StepShape_ConnectedEdgeSet",
                               header: "StepShape_ConnectedEdgeSet.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                               ## !
                                                                                                                               ## Empty
                                                                                                                               ## constructor


proc constructStepShape_ConnectedEdgeSet*(): StepShape_ConnectedEdgeSet {.
    constructor, importcpp: "StepShape_ConnectedEdgeSet(@)",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc Init*(this: var StepShape_ConnectedEdgeSet;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aCesEdges: handle[StepShape_HArray1OfEdge]) {.importcpp: "Init",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc CesEdges*(this: StepShape_ConnectedEdgeSet): handle[StepShape_HArray1OfEdge] {.
    noSideEffect, importcpp: "CesEdges", header: "StepShape_ConnectedEdgeSet.hxx".}
proc SetCesEdges*(this: var StepShape_ConnectedEdgeSet;
                 CesEdges: handle[StepShape_HArray1OfEdge]) {.
    importcpp: "SetCesEdges", header: "StepShape_ConnectedEdgeSet.hxx".}
type
  StepShape_ConnectedEdgeSetbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_ConnectedEdgeSet::get_type_name(@)",
                              header: "StepShape_ConnectedEdgeSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ConnectedEdgeSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc DynamicType*(this: StepShape_ConnectedEdgeSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedEdgeSet.hxx".}