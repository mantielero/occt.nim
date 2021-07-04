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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_Edge

discard "forward decl of StepShape_Edge"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_Subedge"
discard "forward decl of StepShape_Subedge"
type
  Handle_StepShape_Subedge* = handle[StepShape_Subedge]

## ! Representation of STEP entity Subedge

type
  StepShape_Subedge* {.importcpp: "StepShape_Subedge",
                      header: "StepShape_Subedge.hxx", bycopy.} = object of StepShape_Edge ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor


proc constructStepShape_Subedge*(): StepShape_Subedge {.constructor,
    importcpp: "StepShape_Subedge(@)", header: "StepShape_Subedge.hxx".}
proc Init*(this: var StepShape_Subedge;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aEdge_EdgeStart: handle[StepShape_Vertex];
          aEdge_EdgeEnd: handle[StepShape_Vertex];
          aParentEdge: handle[StepShape_Edge]) {.importcpp: "Init",
    header: "StepShape_Subedge.hxx".}
proc ParentEdge*(this: StepShape_Subedge): handle[StepShape_Edge] {.noSideEffect,
    importcpp: "ParentEdge", header: "StepShape_Subedge.hxx".}
proc SetParentEdge*(this: var StepShape_Subedge; ParentEdge: handle[StepShape_Edge]) {.
    importcpp: "SetParentEdge", header: "StepShape_Subedge.hxx".}
type
  StepShape_Subedgebase_type* = StepShape_Edge

proc get_type_name*(): cstring {.importcpp: "StepShape_Subedge::get_type_name(@)",
                              header: "StepShape_Subedge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Subedge::get_type_descriptor(@)",
    header: "StepShape_Subedge.hxx".}
proc DynamicType*(this: StepShape_Subedge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Subedge.hxx".}