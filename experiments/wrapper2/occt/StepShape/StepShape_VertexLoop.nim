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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_Loop

discard "forward decl of StepShape_Vertex"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_VertexLoop"
discard "forward decl of StepShape_VertexLoop"
type
  Handle_StepShape_VertexLoop* = handle[StepShape_VertexLoop]
  StepShape_VertexLoop* {.importcpp: "StepShape_VertexLoop",
                         header: "StepShape_VertexLoop.hxx", bycopy.} = object of StepShape_Loop ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## VertexLoop


proc constructStepShape_VertexLoop*(): StepShape_VertexLoop {.constructor,
    importcpp: "StepShape_VertexLoop(@)", header: "StepShape_VertexLoop.hxx".}
proc Init*(this: var StepShape_VertexLoop; aName: handle[TCollection_HAsciiString];
          aLoopVertex: handle[StepShape_Vertex]) {.importcpp: "Init",
    header: "StepShape_VertexLoop.hxx".}
proc SetLoopVertex*(this: var StepShape_VertexLoop;
                   aLoopVertex: handle[StepShape_Vertex]) {.
    importcpp: "SetLoopVertex", header: "StepShape_VertexLoop.hxx".}
proc LoopVertex*(this: StepShape_VertexLoop): handle[StepShape_Vertex] {.
    noSideEffect, importcpp: "LoopVertex", header: "StepShape_VertexLoop.hxx".}
type
  StepShape_VertexLoopbase_type* = StepShape_Loop

proc get_type_name*(): cstring {.importcpp: "StepShape_VertexLoop::get_type_name(@)",
                              header: "StepShape_VertexLoop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_VertexLoop::get_type_descriptor(@)",
    header: "StepShape_VertexLoop.hxx".}
proc DynamicType*(this: StepShape_VertexLoop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_VertexLoop.hxx".}