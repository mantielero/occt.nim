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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_EdgeBasedWireframeModel"
discard "forward decl of StepShape_EdgeBasedWireframeModel"
type
  HandleStepShapeEdgeBasedWireframeModel* = Handle[
      StepShapeEdgeBasedWireframeModel]

## ! Representation of STEP entity EdgeBasedWireframeModel

type
  StepShapeEdgeBasedWireframeModel* {.importcpp: "StepShape_EdgeBasedWireframeModel", header: "StepShape_EdgeBasedWireframeModel.hxx",
                                     bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepShapeEdgeBasedWireframeModel*(): StepShapeEdgeBasedWireframeModel {.
    constructor, importcpp: "StepShape_EdgeBasedWireframeModel(@)",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc init*(this: var StepShapeEdgeBasedWireframeModel;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aEbwmBoundary: Handle[StepShapeHArray1OfConnectedEdgeSet]) {.
    importcpp: "Init", header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc ebwmBoundary*(this: StepShapeEdgeBasedWireframeModel): Handle[
    StepShapeHArray1OfConnectedEdgeSet] {.noSideEffect, importcpp: "EbwmBoundary",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc setEbwmBoundary*(this: var StepShapeEdgeBasedWireframeModel;
                     ebwmBoundary: Handle[StepShapeHArray1OfConnectedEdgeSet]) {.
    importcpp: "SetEbwmBoundary", header: "StepShape_EdgeBasedWireframeModel.hxx".}
type
  StepShapeEdgeBasedWireframeModelbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_EdgeBasedWireframeModel::get_type_name(@)",
                            header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_EdgeBasedWireframeModel::get_type_descriptor(@)",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
proc dynamicType*(this: StepShapeEdgeBasedWireframeModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_EdgeBasedWireframeModel.hxx".}
