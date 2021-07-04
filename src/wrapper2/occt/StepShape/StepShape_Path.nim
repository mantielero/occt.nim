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
  StepShape_HArray1OfOrientedEdge, StepShape_TopologicalRepresentationItem,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_OrientedEdge"
discard "forward decl of StepShape_Path"
discard "forward decl of StepShape_Path"
type
  Handle_StepShape_Path* = handle[StepShape_Path]
  StepShape_Path* {.importcpp: "StepShape_Path", header: "StepShape_Path.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                                  ## !
                                                                                                                                  ## Returns
                                                                                                                                  ## a
                                                                                                                                  ## Path


proc constructStepShape_Path*(): StepShape_Path {.constructor,
    importcpp: "StepShape_Path(@)", header: "StepShape_Path.hxx".}
proc Init*(this: var StepShape_Path; aName: handle[TCollection_HAsciiString];
          aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.importcpp: "Init",
    header: "StepShape_Path.hxx".}
proc SetEdgeList*(this: var StepShape_Path;
                 aEdgeList: handle[StepShape_HArray1OfOrientedEdge]) {.
    importcpp: "SetEdgeList", header: "StepShape_Path.hxx".}
proc EdgeList*(this: StepShape_Path): handle[StepShape_HArray1OfOrientedEdge] {.
    noSideEffect, importcpp: "EdgeList", header: "StepShape_Path.hxx".}
proc EdgeListValue*(this: StepShape_Path; num: Standard_Integer): handle[
    StepShape_OrientedEdge] {.noSideEffect, importcpp: "EdgeListValue",
                             header: "StepShape_Path.hxx".}
proc NbEdgeList*(this: StepShape_Path): Standard_Integer {.noSideEffect,
    importcpp: "NbEdgeList", header: "StepShape_Path.hxx".}
type
  StepShape_Pathbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Path::get_type_name(@)",
                              header: "StepShape_Path.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Path::get_type_descriptor(@)",
    header: "StepShape_Path.hxx".}
proc DynamicType*(this: StepShape_Path): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Path.hxx".}