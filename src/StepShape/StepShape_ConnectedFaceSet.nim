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
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of StepShape_ConnectedFaceSet"
type
  HandleC1C1* = Handle[StepShapeConnectedFaceSet]
  StepShapeConnectedFaceSet* {.importcpp: "StepShape_ConnectedFaceSet",
                              header: "StepShape_ConnectedFaceSet.hxx", bycopy.} = object of StepShapeTopologicalRepresentationItem ##
                                                                                                                             ## !
                                                                                                                             ## Returns
                                                                                                                             ## a
                                                                                                                             ## ConnectedFaceSet


proc constructStepShapeConnectedFaceSet*(): StepShapeConnectedFaceSet {.
    constructor, importcpp: "StepShape_ConnectedFaceSet(@)",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc init*(this: var StepShapeConnectedFaceSet;
          aName: Handle[TCollectionHAsciiString];
          aCfsFaces: Handle[StepShapeHArray1OfFace]) {.importcpp: "Init",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc setCfsFaces*(this: var StepShapeConnectedFaceSet;
                 aCfsFaces: Handle[StepShapeHArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
proc cfsFaces*(this: StepShapeConnectedFaceSet): Handle[StepShapeHArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
proc cfsFacesValue*(this: StepShapeConnectedFaceSet; num: int): Handle[StepShapeFace] {.
    noSideEffect, importcpp: "CfsFacesValue",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc nbCfsFaces*(this: StepShapeConnectedFaceSet): int {.noSideEffect,
    importcpp: "NbCfsFaces", header: "StepShape_ConnectedFaceSet.hxx".}
type
  StepShapeConnectedFaceSetbaseType* = StepShapeTopologicalRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_ConnectedFaceSet::get_type_name(@)",
                            header: "StepShape_ConnectedFaceSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ConnectedFaceSet::get_type_descriptor(@)",
    header: "StepShape_ConnectedFaceSet.hxx".}
proc dynamicType*(this: StepShapeConnectedFaceSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ConnectedFaceSet.hxx".}