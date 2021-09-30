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
discard "forward decl of StepShape_FaceBasedSurfaceModel"
discard "forward decl of StepShape_FaceBasedSurfaceModel"
type
  HandleC1C1* = Handle[StepShapeFaceBasedSurfaceModel]

## ! Representation of STEP entity FaceBasedSurfaceModel

type
  StepShapeFaceBasedSurfaceModel* {.importcpp: "StepShape_FaceBasedSurfaceModel", header: "StepShape_FaceBasedSurfaceModel.hxx",
                                   bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructStepShapeFaceBasedSurfaceModel*(): StepShapeFaceBasedSurfaceModel {.
    constructor, importcpp: "StepShape_FaceBasedSurfaceModel(@)",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc init*(this: var StepShapeFaceBasedSurfaceModel;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aFbsmFaces: Handle[StepShapeHArray1OfConnectedFaceSet]) {.
    importcpp: "Init", header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc fbsmFaces*(this: StepShapeFaceBasedSurfaceModel): Handle[
    StepShapeHArray1OfConnectedFaceSet] {.noSideEffect, importcpp: "FbsmFaces",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc setFbsmFaces*(this: var StepShapeFaceBasedSurfaceModel;
                  fbsmFaces: Handle[StepShapeHArray1OfConnectedFaceSet]) {.
    importcpp: "SetFbsmFaces", header: "StepShape_FaceBasedSurfaceModel.hxx".}
type
  StepShapeFaceBasedSurfaceModelbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_FaceBasedSurfaceModel::get_type_name(@)",
                            header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_FaceBasedSurfaceModel::get_type_descriptor(@)",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc dynamicType*(this: StepShapeFaceBasedSurfaceModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}

























