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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Point

discard "forward decl of StepGeom_Point"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PointReplica"
discard "forward decl of StepGeom_PointReplica"
type
  Handle_StepGeom_PointReplica* = handle[StepGeom_PointReplica]
  StepGeom_PointReplica* {.importcpp: "StepGeom_PointReplica",
                          header: "StepGeom_PointReplica.hxx", bycopy.} = object of StepGeom_Point ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## PointReplica


proc constructStepGeom_PointReplica*(): StepGeom_PointReplica {.constructor,
    importcpp: "StepGeom_PointReplica(@)", header: "StepGeom_PointReplica.hxx".}
proc Init*(this: var StepGeom_PointReplica; aName: handle[TCollection_HAsciiString];
          aParentPt: handle[StepGeom_Point];
          aTransformation: handle[StepGeom_CartesianTransformationOperator]) {.
    importcpp: "Init", header: "StepGeom_PointReplica.hxx".}
proc SetParentPt*(this: var StepGeom_PointReplica; aParentPt: handle[StepGeom_Point]) {.
    importcpp: "SetParentPt", header: "StepGeom_PointReplica.hxx".}
proc ParentPt*(this: StepGeom_PointReplica): handle[StepGeom_Point] {.noSideEffect,
    importcpp: "ParentPt", header: "StepGeom_PointReplica.hxx".}
proc SetTransformation*(this: var StepGeom_PointReplica; aTransformation: handle[
    StepGeom_CartesianTransformationOperator]) {.importcpp: "SetTransformation",
    header: "StepGeom_PointReplica.hxx".}
proc Transformation*(this: StepGeom_PointReplica): handle[
    StepGeom_CartesianTransformationOperator] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_PointReplica.hxx".}
type
  StepGeom_PointReplicabase_type* = StepGeom_Point

proc get_type_name*(): cstring {.importcpp: "StepGeom_PointReplica::get_type_name(@)",
                              header: "StepGeom_PointReplica.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_PointReplica::get_type_descriptor(@)",
    header: "StepGeom_PointReplica.hxx".}
proc DynamicType*(this: StepGeom_PointReplica): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_PointReplica.hxx".}