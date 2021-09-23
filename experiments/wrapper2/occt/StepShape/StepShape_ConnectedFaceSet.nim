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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_HArray1OfFace,
  StepShape_TopologicalRepresentationItem, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of StepShape_ConnectedFaceSet"
type
  Handle_StepShape_ConnectedFaceSet* = handle[StepShape_ConnectedFaceSet]
  StepShape_ConnectedFaceSet* {.importcpp: "StepShape_ConnectedFaceSet",
                               header: "StepShape_ConnectedFaceSet.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                               ## !
                                                                                                                               ## Returns
                                                                                                                               ## a
                                                                                                                               ## ConnectedFaceSet


proc constructStepShape_ConnectedFaceSet*(): StepShape_ConnectedFaceSet {.
    constructor, importcpp: "StepShape_ConnectedFaceSet(@)",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc Init*(this: var StepShape_ConnectedFaceSet;
          aName: handle[TCollection_HAsciiString];
          aCfsFaces: handle[StepShape_HArray1OfFace]) {.importcpp: "Init",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc SetCfsFaces*(this: var StepShape_ConnectedFaceSet;
                 aCfsFaces: handle[StepShape_HArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
proc CfsFaces*(this: StepShape_ConnectedFaceSet): handle[StepShape_HArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
proc CfsFacesValue*(this: StepShape_ConnectedFaceSet; num: Standard_Integer): handle[
    StepShape_Face] {.noSideEffect, importcpp: "CfsFacesValue",
                     header: "StepShape_ConnectedFaceSet.hxx".}
proc NbCfsFaces*(this: StepShape_ConnectedFaceSet): Standard_Integer {.noSideEffect,
    importcpp: "NbCfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
type
  StepShape_ConnectedFaceSetbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_ConnectedFaceSet::get_type_name(@)",
                              header: "StepShape_ConnectedFaceSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ConnectedFaceSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc DynamicType*(this: StepShape_ConnectedFaceSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedFaceSet.hxx".}