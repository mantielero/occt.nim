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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ConnectedEdgeSet"
discard "forward decl of StepShape_ConnectedEdgeSet"
type
  HandleC1C1* = Handle[StepShapeConnectedEdgeSet]

## ! Representation of STEP entity ConnectedEdgeSet

type
  StepShapeConnectedEdgeSet* {.importcpp: "StepShape_ConnectedEdgeSet",
                              header: "StepShape_ConnectedEdgeSet.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Empty
                                                                                                                             ## constructor


proc constructStepShapeConnectedEdgeSet*(): StepShapeConnectedEdgeSet {.
    constructor, importcpp: "StepShape_ConnectedEdgeSet(@)",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc init*(this: var StepShapeConnectedEdgeSet;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aCesEdges: Handle[StepShapeHArray1OfEdge]) {.importcpp: "Init",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc cesEdges*(this: StepShapeConnectedEdgeSet): Handle[StepShapeHArray1OfEdge] {.
    noSideEffect, importcpp: "CesEdges", header: "StepShape_ConnectedEdgeSet.hxx".}
proc setCesEdges*(this: var StepShapeConnectedEdgeSet;
                 cesEdges: Handle[StepShapeHArray1OfEdge]) {.
    importcpp: "SetCesEdges", header: "StepShape_ConnectedEdgeSet.hxx".}
type
  StepShapeConnectedEdgeSetbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_ConnectedEdgeSet::get_type_name(@)",
                            header: "StepShape_ConnectedEdgeSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ConnectedEdgeSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedEdgeSet.hxx".}
proc dynamicType*(this: StepShapeConnectedEdgeSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedEdgeSet.hxx".}