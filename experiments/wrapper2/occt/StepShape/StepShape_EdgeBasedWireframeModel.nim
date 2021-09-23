##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  StepShape_HArray1OfConnectedEdgeSet,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_EdgeBasedWireframeModel"
discard "forward decl of StepShape_EdgeBasedWireframeModel"
type
  Handle_StepShape_EdgeBasedWireframeModel* = handle[
      StepShape_EdgeBasedWireframeModel]

## ! Representation of STEP entity EdgeBasedWireframeModel

type
  StepShape_EdgeBasedWireframeModel* {.importcpp: "StepShape_EdgeBasedWireframeModel", header: "StepShape_EdgeBasedWireframeModel.hxx",
                                      bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepShape_EdgeBasedWireframeModel*(): StepShape_EdgeBasedWireframeModel {.
    constructor, importcpp: "StepShape_EdgeBasedWireframeModel(@)",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc Init*(this: var StepShape_EdgeBasedWireframeModel;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aEbwmBoundary: handle[StepShape_HArray1OfConnectedEdgeSet]) {.
    importcpp: "Init", header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc EbwmBoundary*(this: StepShape_EdgeBasedWireframeModel): handle[
    StepShape_HArray1OfConnectedEdgeSet] {.noSideEffect,
    importcpp: "EbwmBoundary", header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc SetEbwmBoundary*(this: var StepShape_EdgeBasedWireframeModel;
                     EbwmBoundary: handle[StepShape_HArray1OfConnectedEdgeSet]) {.
    importcpp: "SetEbwmBoundary", header: "StepShape_EdgeBasedWireframeModel.hxx".}
type
  StepShape_EdgeBasedWireframeModelbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_EdgeBasedWireframeModel::get_type_name(@)",
                              header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_EdgeBasedWireframeModel::get_type_descriptor(@)",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc DynamicType*(this: StepShape_EdgeBasedWireframeModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}