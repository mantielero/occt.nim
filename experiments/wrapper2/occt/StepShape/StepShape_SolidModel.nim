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

discard "forward decl of StepShape_SolidModel"
discard "forward decl of StepShape_SolidModel"
type
  Handle_StepShape_SolidModel* = handle[StepShape_SolidModel]
  StepShape_SolidModel* {.importcpp: "StepShape_SolidModel",
                         header: "StepShape_SolidModel.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## SolidModel


proc constructStepShape_SolidModel*(): StepShape_SolidModel {.constructor,
    importcpp: "StepShape_SolidModel(@)", header: "StepShape_SolidModel.hxx".}
type
  StepShape_SolidModelbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_SolidModel::get_type_name(@)",
                              header: "StepShape_SolidModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_SolidModel::get_type_descriptor(@)",
    header: "StepShape_SolidModel.hxx".}
proc DynamicType*(this: StepShape_SolidModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_SolidModel.hxx".}