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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_Path, StepShape_HArray1OfOrientedEdge, ../Standard/Standard_Integer

discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_OrientedPath"
discard "forward decl of StepShape_OrientedPath"
type
  Handle_StepShape_OrientedPath* = handle[StepShape_OrientedPath]
  StepShape_OrientedPath* {.importcpp: "StepShape_OrientedPath",
                           header: "StepShape_OrientedPath.hxx", bycopy.} = object of StepShape_Path ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## OrientedPath


proc constructStepShape_OrientedPath*(): StepShape_OrientedPath {.constructor,
    importcpp: "StepShape_OrientedPath(@)", header: "StepShape_OrientedPath.hxx".}
proc Init*(this: var StepShape_OrientedPath;
          aName: handle[TCollection_HAsciiString];
          aPathElement: handle[StepShape_EdgeLoop]; aOrientation: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_OrientedPath.hxx".}
proc SetPathElement*(this: var StepShape_OrientedPath;
                    aPathElement: handle[StepShape_EdgeLoop]) {.
    importcpp: "SetPathElement", header: "StepShape_OrientedPath.hxx".}
proc PathElement*(this: StepShape_OrientedPath): handle[StepShape_EdgeLoop] {.
    noSideEffect, importcpp: "PathElement", header: "StepShape_OrientedPath.hxx".}
proc SetOrientation*(this: var StepShape_OrientedPath;
                    aOrientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepShape_OrientedPath.hxx".}
proc Orientation*(this: StepShape_OrientedPath): Standard_Boolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedPath.hxx".}
proc SetEdgeList*(this: var StepShape_OrientedPath;
                 aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_OrientedPath.hxx".}
proc EdgeList*(this: StepShape_OrientedPath): handle[
    StepShape_HArray1OfOrientedEdge] {.noSideEffect, importcpp: "EdgeList",
                                      header: "StepShape_OrientedPath.hxx".}
proc EdgeListValue*(this: StepShape_OrientedPath; num: Standard_Integer): handle[
    StepShape_OrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                             header: "StepShape_OrientedPath.hxx".}
proc NbEdgeList*(this: StepShape_OrientedPath): Standard_Integer {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_OrientedPath.hxx".}
type
  StepShape_OrientedPathbase_type* = StepShape_Path

proc get_type_name*(): cstring {.importcpp: "StepShape_OrientedPath::get_type_name(@)",
                              header: "StepShape_OrientedPath.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_OrientedPath::get_type_descriptor(@)",
    header: "StepShape_OrientedPath.hxx".}
proc DynamicType*(this: StepShape_OrientedPath): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_OrientedPath.hxx".}