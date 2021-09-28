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

discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_OrientedPath"
discard "forward decl of StepShape_OrientedPath"
type
  HandleC1C1* = Handle[StepShapeOrientedPath]
  StepShapeOrientedPath* {.importcpp: "StepShape_OrientedPath",
                          header: "StepShape_OrientedPath.hxx", bycopy.} = object of StepShapePath ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## OrientedPath


proc constructStepShapeOrientedPath*(): StepShapeOrientedPath {.constructor,
    importcpp: "StepShape_OrientedPath(@)", header: "StepShape_OrientedPath.hxx".}
proc init*(this: var StepShapeOrientedPath; aName: Handle[TCollectionHAsciiString];
          aPathElement: Handle[StepShapeEdgeLoop]; aOrientation: bool) {.
    importcpp: "Init", header: "StepShape_OrientedPath.hxx".}
proc setPathElement*(this: var StepShapeOrientedPath;
                    aPathElement: Handle[StepShapeEdgeLoop]) {.
    importcpp: "SetPathElement", header: "StepShape_OrientedPath.hxx".}
proc pathElement*(this: StepShapeOrientedPath): Handle[StepShapeEdgeLoop] {.
    noSideEffect, importcpp: "PathElement", header: "StepShape_OrientedPath.hxx".}
proc setOrientation*(this: var StepShapeOrientedPath; aOrientation: bool) {.
    importcpp: "SetOrientation", header: "StepShape_OrientedPath.hxx".}
proc orientation*(this: StepShapeOrientedPath): bool {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedPath.hxx".}
proc setEdgeList*(this: var StepShapeOrientedPath;
                 aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_OrientedPath.hxx".}
proc edgeList*(this: StepShapeOrientedPath): Handle[StepShapeHArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_OrientedPath.hxx".}
proc edgeListValue*(this: StepShapeOrientedPath; num: cint): Handle[
    StepShapeOrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                            header: "StepShape_OrientedPath.hxx".}
proc nbEdgeList*(this: StepShapeOrientedPath): cint {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_OrientedPath.hxx".}
type
  StepShapeOrientedPathbaseType* = StepShapePath

proc getTypeName*(): cstring {.importcpp: "StepShape_OrientedPath::get_type_name(@)",
                            header: "StepShape_OrientedPath.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_OrientedPath::get_type_descriptor(@)",
    header: "StepShape_OrientedPath.hxx".}
proc dynamicType*(this: StepShapeOrientedPath): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_OrientedPath.hxx".}

























