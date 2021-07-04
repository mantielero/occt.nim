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
  StepShape_TopologicalRepresentationItem, StepShape_HArray1OfOrientedEdge,
  ../Standard/Standard_Integer

discard "forward decl of StepShape_Loop"
discard "forward decl of StepShape_Path"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_LoopAndPath"
discard "forward decl of StepShape_LoopAndPath"
type
  Handle_StepShape_LoopAndPath* = handle[StepShape_LoopAndPath]
  StepShape_LoopAndPath* {.importcpp: "StepShape_LoopAndPath",
                          header: "StepShape_LoopAndPath.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## a
                                                                                                                     ## LoopAndPath


proc constructStepShape_LoopAndPath*(): StepShape_LoopAndPath {.constructor,
    importcpp: "StepShape_LoopAndPath(@)", header: "StepShape_LoopAndPath.hxx".}
proc Init*(this: var StepShape_LoopAndPath; aName: handle[TCollection_HAsciiString];
          aLoop: handle[StepShape_Loop]; aPath: handle[StepShape_Path]) {.
    importcpp: "Init", header: "StepShape_LoopAndPath.hxx".}
proc Init*(this: var StepShape_LoopAndPath; aName: handle[TCollection_HAsciiString];
          aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_LoopAndPath.hxx".}
proc SetLoop*(this: var StepShape_LoopAndPath; aLoop: handle[StepShape_Loop]) {.
    importcpp: "SetLoop", header: "StepShape_LoopAndPath.hxx".}
proc Loop*(this: StepShape_LoopAndPath): handle[StepShape_Loop] {.noSideEffect,
    importcpp: "Loop", header: "StepShape_LoopAndPath.hxx".}
proc SetPath*(this: var StepShape_LoopAndPath; aPath: handle[StepShape_Path]) {.
    importcpp: "SetPath", header: "StepShape_LoopAndPath.hxx".}
proc Path*(this: StepShape_LoopAndPath): handle[StepShape_Path] {.noSideEffect,
    importcpp: "Path", header: "StepShape_LoopAndPath.hxx".}
proc SetEdgeList*(this: var StepShape_LoopAndPath;
                 aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_LoopAndPath.hxx".}
proc EdgeList*(this: StepShape_LoopAndPath): handle[StepShape_HArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_LoopAndPath.hxx".}
proc EdgeListValue*(this: StepShape_LoopAndPath; num: Standard_Integer): handle[
    StepShape_OrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                             header: "StepShape_LoopAndPath.hxx".}
proc NbEdgeList*(this: StepShape_LoopAndPath): Standard_Integer {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_LoopAndPath.hxx".}
type
  StepShape_LoopAndPathbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_LoopAndPath::get_type_name(@)",
                              header: "StepShape_LoopAndPath.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_LoopAndPath::get_type_descriptor(@)",
    header: "StepShape_LoopAndPath.hxx".}
proc DynamicType*(this: StepShape_LoopAndPath): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_LoopAndPath.hxx".}