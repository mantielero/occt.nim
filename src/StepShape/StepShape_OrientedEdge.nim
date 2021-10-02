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

discard "forward decl of StepShape_Edge"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_OrientedEdge"
type
  HandleC1C1* = Handle[StepShapeOrientedEdge]
  StepShapeOrientedEdge* {.importcpp: "StepShape_OrientedEdge",
                          header: "StepShape_OrientedEdge.hxx", bycopy.} = object of StepShapeEdge ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## OrientedEdge


proc constructStepShapeOrientedEdge*(): StepShapeOrientedEdge {.constructor,
    importcpp: "StepShape_OrientedEdge(@)", header: "StepShape_OrientedEdge.hxx".}
proc init*(this: var StepShapeOrientedEdge; aName: Handle[TCollectionHAsciiString];
          aEdgeElement: Handle[StepShapeEdge]; aOrientation: StandardBoolean) {.
    importcpp: "Init", header: "StepShape_OrientedEdge.hxx".}
proc setEdgeElement*(this: var StepShapeOrientedEdge;
                    aEdgeElement: Handle[StepShapeEdge]) {.
    importcpp: "SetEdgeElement", header: "StepShape_OrientedEdge.hxx".}
proc edgeElement*(this: StepShapeOrientedEdge): Handle[StepShapeEdge] {.
    noSideEffect, importcpp: "EdgeElement", header: "StepShape_OrientedEdge.hxx".}
proc setOrientation*(this: var StepShapeOrientedEdge; aOrientation: StandardBoolean) {.
    importcpp: "SetOrientation", header: "StepShape_OrientedEdge.hxx".}
proc orientation*(this: StepShapeOrientedEdge): StandardBoolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedEdge.hxx".}
proc setEdgeStart*(this: var StepShapeOrientedEdge;
                  aEdgeStart: Handle[StepShapeVertex]) {.
    importcpp: "SetEdgeStart", header: "StepShape_OrientedEdge.hxx".}
proc edgeStart*(this: StepShapeOrientedEdge): Handle[StepShapeVertex] {.
    noSideEffect, importcpp: "EdgeStart", header: "StepShape_OrientedEdge.hxx".}
proc setEdgeEnd*(this: var StepShapeOrientedEdge; aEdgeEnd: Handle[StepShapeVertex]) {.
    importcpp: "SetEdgeEnd", header: "StepShape_OrientedEdge.hxx".}
proc edgeEnd*(this: StepShapeOrientedEdge): Handle[StepShapeVertex] {.noSideEffect,
    importcpp: "EdgeEnd", header: "StepShape_OrientedEdge.hxx".}
type
  StepShapeOrientedEdgebaseType* = StepShapeEdge

proc getTypeName*(): cstring {.importcpp: "StepShape_OrientedEdge::get_type_name(@)",
                            header: "StepShape_OrientedEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_OrientedEdge::get_type_descriptor(@)",
    header: "StepShape_OrientedEdge.hxx".}
proc dynamicType*(this: StepShapeOrientedEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_OrientedEdge.hxx".}