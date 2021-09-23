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
  StepShape_HArray1OfConnectedFaceSet,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBasedSurfaceModel"
discard "forward decl of StepShape_FaceBasedSurfaceModel"
type
  Handle_StepShape_FaceBasedSurfaceModel* = handle[StepShape_FaceBasedSurfaceModel]

## ! Representation of STEP entity FaceBasedSurfaceModel

type
  StepShape_FaceBasedSurfaceModel* {.importcpp: "StepShape_FaceBasedSurfaceModel", header: "StepShape_FaceBasedSurfaceModel.hxx",
                                    bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepShape_FaceBasedSurfaceModel*(): StepShape_FaceBasedSurfaceModel {.
    constructor, importcpp: "StepShape_FaceBasedSurfaceModel(@)",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc Init*(this: var StepShape_FaceBasedSurfaceModel;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFbsmFaces: handle[StepShape_HArray1OfConnectedFaceSet]) {.
    importcpp: "Init", header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc FbsmFaces*(this: StepShape_FaceBasedSurfaceModel): handle[
    StepShape_HArray1OfConnectedFaceSet] {.noSideEffect, importcpp: "FbsmFaces",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc SetFbsmFaces*(this: var StepShape_FaceBasedSurfaceModel;
                  FbsmFaces: handle[StepShape_HArray1OfConnectedFaceSet]) {.
    importcpp: "SetFbsmFaces", header: "StepShape_FaceBasedSurfaceModel.hxx".}
type
  StepShape_FaceBasedSurfaceModelbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_FaceBasedSurfaceModel::get_type_name(@)",
                              header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FaceBasedSurfaceModel::get_type_descriptor(@)",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}
proc DynamicType*(this: StepShape_FaceBasedSurfaceModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_FaceBasedSurfaceModel.hxx".}