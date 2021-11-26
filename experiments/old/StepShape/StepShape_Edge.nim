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
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_Edge"
type
  HandleC1C1* = Handle[StepShapeEdge]
  StepShapeEdge* {.importcpp: "StepShape_Edge", header: "StepShape_Edge.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## Edge


proc constructStepShapeEdge*(): StepShapeEdge {.constructor,
    importcpp: "StepShape_Edge(@)", header: "StepShape_Edge.hxx".}
proc init*(this: var StepShapeEdge; aName: Handle[TCollectionHAsciiString];
          aEdgeStart: Handle[StepShapeVertex]; aEdgeEnd: Handle[StepShapeVertex]) {.
    importcpp: "Init", header: "StepShape_Edge.hxx".}
proc setEdgeStart*(this: var StepShapeEdge; aEdgeStart: Handle[StepShapeVertex]) {.
    importcpp: "SetEdgeStart", header: "StepShape_Edge.hxx".}
proc edgeStart*(this: StepShapeEdge): Handle[StepShapeVertex] {.noSideEffect,
    importcpp: "EdgeStart", header: "StepShape_Edge.hxx".}
proc setEdgeEnd*(this: var StepShapeEdge; aEdgeEnd: Handle[StepShapeVertex]) {.
    importcpp: "SetEdgeEnd", header: "StepShape_Edge.hxx".}
proc edgeEnd*(this: StepShapeEdge): Handle[StepShapeVertex] {.noSideEffect,
    importcpp: "EdgeEnd", header: "StepShape_Edge.hxx".}
type
  StepShapeEdgebaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Edge::get_type_name(@)",
                            header: "StepShape_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Edge::get_type_descriptor(@)",
    header: "StepShape_Edge.hxx".}
proc dynamicType*(this: StepShapeEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Edge.hxx".}