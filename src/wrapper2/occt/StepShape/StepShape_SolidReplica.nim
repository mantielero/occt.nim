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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_SolidModel

discard "forward decl of StepShape_SolidModel"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SolidReplica"
discard "forward decl of StepShape_SolidReplica"
type
  Handle_StepShape_SolidReplica* = handle[StepShape_SolidReplica]
  StepShape_SolidReplica* {.importcpp: "StepShape_SolidReplica",
                           header: "StepShape_SolidReplica.hxx", bycopy.} = object of StepShape_SolidModel ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## SolidReplica


proc constructStepShape_SolidReplica*(): StepShape_SolidReplica {.constructor,
    importcpp: "StepShape_SolidReplica(@)", header: "StepShape_SolidReplica.hxx".}
proc Init*(this: var StepShape_SolidReplica;
          aName: handle[TCollection_HAsciiString];
          aParentSolid: handle[StepShape_SolidModel];
          aTransformation: handle[StepGeom_CartesianTransformationOperator3d]) {.
    importcpp: "Init", header: "StepShape_SolidReplica.hxx".}
proc SetParentSolid*(this: var StepShape_SolidReplica;
                    aParentSolid: handle[StepShape_SolidModel]) {.
    importcpp: "SetParentSolid", header: "StepShape_SolidReplica.hxx".}
proc ParentSolid*(this: StepShape_SolidReplica): handle[StepShape_SolidModel] {.
    noSideEffect, importcpp: "ParentSolid", header: "StepShape_SolidReplica.hxx".}
proc SetTransformation*(this: var StepShape_SolidReplica; aTransformation: handle[
    StepGeom_CartesianTransformationOperator3d]) {.
    importcpp: "SetTransformation", header: "StepShape_SolidReplica.hxx".}
proc Transformation*(this: StepShape_SolidReplica): handle[
    StepGeom_CartesianTransformationOperator3d] {.noSideEffect,
    importcpp: "Transformation", header: "StepShape_SolidReplica.hxx".}
type
  StepShape_SolidReplicabase_type* = StepShape_SolidModel

proc get_type_name*(): cstring {.importcpp: "StepShape_SolidReplica::get_type_name(@)",
                              header: "StepShape_SolidReplica.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_SolidReplica::get_type_descriptor(@)",
    header: "StepShape_SolidReplica.hxx".}
proc DynamicType*(this: StepShape_SolidReplica): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_SolidReplica.hxx".}