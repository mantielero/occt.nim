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
discard "forward decl of StepShape_Path"
discard "forward decl of StepShape_Path"
type
  HandleStepShapePath* = Handle[StepShapePath]
  StepShapePath* {.importcpp: "StepShape_Path", header: "StepShape_Path.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                                ## !
                                                                                                                                ## Returns
                                                                                                                                ## a
                                                                                                                                ## Path


proc constructStepShapePath*(): StepShapePath {.constructor,
    importcpp: "StepShape_Path(@)", header: "StepShape_Path.hxx".}
proc init*(this: var StepShapePath; aName: Handle[TCollectionHAsciiString];
          aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_Path.hxx".}
proc setEdgeList*(this: var StepShapePath;
                 aEdgeList: Handle[StepShapeHArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_Path.hxx".}
proc edgeList*(this: StepShapePath): Handle[StepShapeHArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_Path.hxx".}
proc edgeListValue*(this: StepShapePath; num: int): Handle[StepShapeOrientedEdge] {.
    noSideEffect, importcpp: "EdgeListValue", header: "StepShape_Path.hxx".}
proc nbEdgeList*(this: StepShapePath): int {.noSideEffect, importcpp: "NbEdgeList",
    header: "StepShape_Path.hxx".}
type
  StepShapePathbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_Path::get_type_name(@)",
                            header: "StepShape_Path.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_Path::get_type_descriptor(@)",
    header: "StepShape_Path.hxx".}
proc dynamicType*(this: StepShapePath): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Path.hxx".}
