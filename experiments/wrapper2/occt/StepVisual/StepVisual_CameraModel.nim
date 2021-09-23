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
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepVisual_CameraModel"
discard "forward decl of StepVisual_CameraModel"
type
  Handle_StepVisual_CameraModel* = handle[StepVisual_CameraModel]
  StepVisual_CameraModel* {.importcpp: "StepVisual_CameraModel",
                           header: "StepVisual_CameraModel.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## CameraModel


proc constructStepVisual_CameraModel*(): StepVisual_CameraModel {.constructor,
    importcpp: "StepVisual_CameraModel(@)", header: "StepVisual_CameraModel.hxx".}
type
  StepVisual_CameraModelbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_CameraModel::get_type_name(@)",
                              header: "StepVisual_CameraModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CameraModel::get_type_descriptor(@)",
    header: "StepVisual_CameraModel.hxx".}
proc DynamicType*(this: StepVisual_CameraModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_CameraModel.hxx".}