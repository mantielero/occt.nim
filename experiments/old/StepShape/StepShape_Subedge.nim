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

discard "forward decl of StepShape_Edge"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_Subedge"
discard "forward decl of StepShape_Subedge"
type
  HandleC1C1* = Handle[StepShapeSubedge]

## ! Representation of STEP entity Subedge

type
  StepShapeSubedge* {.importcpp: "StepShape_Subedge",
                     header: "StepShape_Subedge.hxx", bycopy.} = object of StepShapeEdge ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructStepShapeSubedge*(): StepShapeSubedge {.constructor,
    importcpp: "StepShape_Subedge(@)", header: "StepShape_Subedge.hxx".}
proc init*(this: var StepShapeSubedge;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aEdgeEdgeStart: Handle[StepShapeVertex];
          aEdgeEdgeEnd: Handle[StepShapeVertex];
          aParentEdge: Handle[StepShapeEdge]) {.importcpp: "Init",
    header: "StepShape_Subedge.hxx".}
proc parentEdge*(this: StepShapeSubedge): Handle[StepShapeEdge] {.noSideEffect,
    importcpp: "ParentEdge", header: "StepShape_Subedge.hxx".}
proc setParentEdge*(this: var StepShapeSubedge; parentEdge: Handle[StepShapeEdge]) {.
    importcpp: "SetParentEdge", header: "StepShape_Subedge.hxx".}
type
  StepShapeSubedgebaseType* = StepShapeEdge

proc getTypeName*(): cstring {.importcpp: "StepShape_Subedge::get_type_name(@)",
                            header: "StepShape_Subedge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Subedge::get_type_descriptor(@)",
    header: "StepShape_Subedge.hxx".}
proc dynamicType*(this: StepShapeSubedge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Subedge.hxx".}