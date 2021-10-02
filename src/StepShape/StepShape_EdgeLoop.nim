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
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of StepShape_EdgeLoop"
type
  HandleC1C1* = Handle[StepShapeEdgeLoop]
  StepShapeEdgeLoop* {.importcpp: "StepShape_EdgeLoop",
                      header: "StepShape_EdgeLoop.hxx", bycopy.} = object of StepShapeLoop ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## EdgeLoop


proc constructStepShapeEdgeLoop*(): StepShapeEdgeLoop {.constructor,
    importcpp: "StepShape_EdgeLoop(@)", header: "StepShape_EdgeLoop.hxx".}
proc init*(this: var StepShapeEdgeLoop; aName: Handle[TCollectionHAsciiString];
          aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_EdgeLoop.hxx".}
proc setEdgeList*(this: var StepShapeEdgeLoop;
                 aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_EdgeLoop.hxx".}
proc edgeList*(this: StepShapeEdgeLoop): Handle[StepShapeHArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_EdgeLoop.hxx".}
proc edgeListValue*(this: StepShapeEdgeLoop; num: int): Handle[StepShapeOrientedEdge] {.
    noSideEffect, importcpp: "EdgeListValue", header: "StepShape_EdgeLoop.hxx".}
proc nbEdgeList*(this: StepShapeEdgeLoop): int {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_EdgeLoop.hxx".}
type
  StepShapeEdgeLoopbaseType* = StepShapeLoop

proc getTypeName*(): cstring {.importcpp: "StepShape_EdgeLoop::get_type_name(@)",
                            header: "StepShape_EdgeLoop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_EdgeLoop::get_type_descriptor(@)",
    header: "StepShape_EdgeLoop.hxx".}
proc dynamicType*(this: StepShapeEdgeLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_EdgeLoop.hxx".}