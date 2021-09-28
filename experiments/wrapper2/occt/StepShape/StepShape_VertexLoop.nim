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

discard "forward decl of StepShape_Vertex"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_VertexLoop"
discard "forward decl of StepShape_VertexLoop"
type
  HandleC1C1* = Handle[StepShapeVertexLoop]
  StepShapeVertexLoop* {.importcpp: "StepShape_VertexLoop",
                        header: "StepShape_VertexLoop.hxx", bycopy.} = object of StepShapeLoop ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## VertexLoop


proc constructStepShapeVertexLoop*(): StepShapeVertexLoop {.constructor,
    importcpp: "StepShape_VertexLoop(@)", header: "StepShape_VertexLoop.hxx".}
proc init*(this: var StepShapeVertexLoop; aName: Handle[TCollectionHAsciiString];
          aLoopVertex: Handle[StepShapeVertex]) {.importcpp: "Init",
    header: "StepShape_VertexLoop.hxx".}
proc setLoopVertex*(this: var StepShapeVertexLoop;
                   aLoopVertex: Handle[StepShapeVertex]) {.
    importcpp: "SetLoopVertex", header: "StepShape_VertexLoop.hxx".}
proc loopVertex*(this: StepShapeVertexLoop): Handle[StepShapeVertex] {.noSideEffect,
    importcpp: "LoopVertex", header: "StepShape_VertexLoop.hxx".}
type
  StepShapeVertexLoopbaseType* = StepShapeLoop

proc getTypeName*(): cstring {.importcpp: "StepShape_VertexLoop::get_type_name(@)",
                            header: "StepShape_VertexLoop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_VertexLoop::get_type_descriptor(@)",
    header: "StepShape_VertexLoop.hxx".}
proc dynamicType*(this: StepShapeVertexLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_VertexLoop.hxx".}

























