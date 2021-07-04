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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_Edge

discard "forward decl of StepShape_Edge"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_OrientedEdge"
type
  Handle_StepShape_OrientedEdge* = handle[StepShape_OrientedEdge]
  StepShape_OrientedEdge* {.importcpp: "StepShape_OrientedEdge",
                           header: "StepShape_OrientedEdge.hxx", bycopy.} = object of StepShape_Edge ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## OrientedEdge


proc constructStepShape_OrientedEdge*(): StepShape_OrientedEdge {.constructor,
    importcpp: "StepShape_OrientedEdge(@)", header: "StepShape_OrientedEdge.hxx".}
proc Init*(this: var StepShape_OrientedEdge;
          aName: handle[TCollection_HAsciiString];
          aEdgeElement: handle[StepShape_Edge]; aOrientation: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_OrientedEdge.hxx".}
proc SetEdgeElement*(this: var StepShape_OrientedEdge;
                    aEdgeElement: handle[StepShape_Edge]) {.
    importcpp: "SetEdgeElement", header: "StepShape_OrientedEdge.hxx".}
proc EdgeElement*(this: StepShape_OrientedEdge): handle[StepShape_Edge] {.
    noSideEffect, importcpp: "EdgeElement", header: "StepShape_OrientedEdge.hxx".}
proc SetOrientation*(this: var StepShape_OrientedEdge;
                    aOrientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepShape_OrientedEdge.hxx".}
proc Orientation*(this: StepShape_OrientedEdge): Standard_Boolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedEdge.hxx".}
proc SetEdgeStart*(this: var StepShape_OrientedEdge;
                  aEdgeStart: handle[StepShape_Vertex]) {.
    importcpp: "SetEdgeStart", header: "StepShape_OrientedEdge.hxx".}
proc EdgeStart*(this: StepShape_OrientedEdge): handle[StepShape_Vertex] {.
    noSideEffect, importcpp: "EdgeStart", header: "StepShape_OrientedEdge.hxx".}
proc SetEdgeEnd*(this: var StepShape_OrientedEdge;
                aEdgeEnd: handle[StepShape_Vertex]) {.importcpp: "SetEdgeEnd",
    header: "StepShape_OrientedEdge.hxx".}
proc EdgeEnd*(this: StepShape_OrientedEdge): handle[StepShape_Vertex] {.
    noSideEffect, importcpp: "EdgeEnd", header: "StepShape_OrientedEdge.hxx".}
type
  StepShape_OrientedEdgebase_type* = StepShape_Edge

proc get_type_name*(): cstring {.importcpp: "StepShape_OrientedEdge::get_type_name(@)",
                              header: "StepShape_OrientedEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_OrientedEdge::get_type_descriptor(@)",
    header: "StepShape_OrientedEdge.hxx".}
proc DynamicType*(this: StepShape_OrientedEdge): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_OrientedEdge.hxx".}