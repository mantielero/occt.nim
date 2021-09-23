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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_TopologicalRepresentationItem, StepShape_Vertex

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_Edge"
type
  Handle_StepShape_Edge* = handle[StepShape_Edge]
  StepShape_Edge* {.importcpp: "StepShape_Edge", header: "StepShape_Edge.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                                  ## !
                                                                                                                                  ## Returns
                                                                                                                                  ## a
                                                                                                                                  ## Edge


proc constructStepShape_Edge*(): StepShape_Edge {.constructor,
    importcpp: "StepShape_Edge(@)", header: "StepShape_Edge.hxx".}
proc Init*(this: var StepShape_Edge; aName: handle[TCollection_HAsciiString];
          aEdgeStart: handle[StepShape_Vertex]; aEdgeEnd: handle[StepShape_Vertex]) {.
    importcpp: "Init", header: "StepShape_Edge.hxx".}
proc SetEdgeStart*(this: var StepShape_Edge; aEdgeStart: handle[StepShape_Vertex]) {.
    importcpp: "SetEdgeStart", header: "StepShape_Edge.hxx".}
proc EdgeStart*(this: StepShape_Edge): handle[StepShape_Vertex] {.noSideEffect,
    importcpp: "EdgeStart", header: "StepShape_Edge.hxx".}
proc SetEdgeEnd*(this: var StepShape_Edge; aEdgeEnd: handle[StepShape_Vertex]) {.
    importcpp: "SetEdgeEnd", header: "StepShape_Edge.hxx".}
proc EdgeEnd*(this: StepShape_Edge): handle[StepShape_Vertex] {.noSideEffect,
    importcpp: "EdgeEnd", header: "StepShape_Edge.hxx".}
type
  StepShape_Edgebase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Edge::get_type_name(@)",
                              header: "StepShape_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Edge::get_type_descriptor(@)",
    header: "StepShape_Edge.hxx".}
proc DynamicType*(this: StepShape_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Edge.hxx".}