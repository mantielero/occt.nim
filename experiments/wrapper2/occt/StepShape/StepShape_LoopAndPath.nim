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

discard "forward decl of StepShape_Loop"
discard "forward decl of StepShape_Path"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_LoopAndPath"
discard "forward decl of StepShape_LoopAndPath"
type
  HandleStepShapeLoopAndPath* = Handle[StepShapeLoopAndPath]
  StepShapeLoopAndPath* {.importcpp: "StepShape_LoopAndPath",
                         header: "StepShape_LoopAndPath.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                   ## !
                                                                                                                   ## Returns
                                                                                                                   ## a
                                                                                                                   ## LoopAndPath


proc constructStepShapeLoopAndPath*(): StepShapeLoopAndPath {.constructor,
    importcpp: "StepShape_LoopAndPath(@)", header: "StepShape_LoopAndPath.hxx".}
proc init*(this: var StepShapeLoopAndPath; aName: Handle[TCollectionHAsciiString];
          aLoop: Handle[StepShapeLoop]; aPath: Handle[StepShapePath]) {.
    importcpp: "Init", header: "StepShape_LoopAndPath.hxx".}
proc init*(this: var StepShapeLoopAndPath; aName: Handle[TCollectionHAsciiString];
          aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_LoopAndPath.hxx".}
proc setLoop*(this: var StepShapeLoopAndPath; aLoop: Handle[StepShapeLoop]) {.
    importcpp: "SetLoop", header: "StepShape_LoopAndPath.hxx".}
proc loop*(this: StepShapeLoopAndPath): Handle[StepShapeLoop] {.noSideEffect,
    importcpp: "Loop", header: "StepShape_LoopAndPath.hxx".}
proc setPath*(this: var StepShapeLoopAndPath; aPath: Handle[StepShapePath]) {.
    importcpp: "SetPath", header: "StepShape_LoopAndPath.hxx".}
proc path*(this: StepShapeLoopAndPath): Handle[StepShapePath] {.noSideEffect,
    importcpp: "Path", header: "StepShape_LoopAndPath.hxx".}
proc setEdgeList*(this: var StepShapeLoopAndPath;
                 aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_LoopAndPath.hxx".}
proc edgeList*(this: StepShapeLoopAndPath): Handle[StepShapeHArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_LoopAndPath.hxx".}
proc edgeListValue*(this: StepShapeLoopAndPath; num: int): Handle[
    StepShapeOrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                            header: "StepShape_LoopAndPath.hxx".}
proc nbEdgeList*(this: StepShapeLoopAndPath): int {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_LoopAndPath.hxx".}
type
  StepShapeLoopAndPathbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_LoopAndPath::get_type_name(@)",
                            header: "StepShape_LoopAndPath.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_LoopAndPath::get_type_descriptor(@)",
    header: "StepShape_LoopAndPath.hxx".}
proc dynamicType*(this: StepShapeLoopAndPath): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_LoopAndPath.hxx".}
