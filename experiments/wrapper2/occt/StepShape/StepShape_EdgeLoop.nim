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
  StepShape_HArray1OfOrientedEdge, StepShape_Loop, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of StepShape_EdgeLoop"
type
  Handle_StepShape_EdgeLoop* = handle[StepShape_EdgeLoop]
  StepShape_EdgeLoop* {.importcpp: "StepShape_EdgeLoop",
                       header: "StepShape_EdgeLoop.hxx", bycopy.} = object of StepShape_Loop ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## EdgeLoop


proc constructStepShape_EdgeLoop*(): StepShape_EdgeLoop {.constructor,
    importcpp: "StepShape_EdgeLoop(@)", header: "StepShape_EdgeLoop.hxx".}
proc Init*(this: var StepShape_EdgeLoop; aName: handle[TCollection_HAsciiString];
          aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_EdgeLoop.hxx".}
proc SetEdgeList*(this: var StepShape_EdgeLoop;
                 aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_EdgeLoop.hxx".}
proc EdgeList*(this: StepShape_EdgeLoop): handle[StepShape_HArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_EdgeLoop.hxx".}
proc EdgeListValue*(this: StepShape_EdgeLoop; num: Standard_Integer): handle[
    StepShape_OrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                             header: "StepShape_EdgeLoop.hxx".}
proc NbEdgeList*(this: StepShape_EdgeLoop): Standard_Integer {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_EdgeLoop.hxx".}
type
  StepShape_EdgeLoopbase_type* = StepShape_Loop

proc get_type_name*(): cstring {.importcpp: "StepShape_EdgeLoop::get_type_name(@)",
                              header: "StepShape_EdgeLoop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_EdgeLoop::get_type_descriptor(@)",
    header: "StepShape_EdgeLoop.hxx".}
proc DynamicType*(this: StepShape_EdgeLoop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_EdgeLoop.hxx".}