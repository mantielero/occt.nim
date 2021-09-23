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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Curve

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveReplica"
discard "forward decl of StepGeom_CurveReplica"
type
  Handle_StepGeom_CurveReplica* = handle[StepGeom_CurveReplica]
  StepGeom_CurveReplica* {.importcpp: "StepGeom_CurveReplica",
                          header: "StepGeom_CurveReplica.hxx", bycopy.} = object of StepGeom_Curve ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## CurveReplica


proc constructStepGeom_CurveReplica*(): StepGeom_CurveReplica {.constructor,
    importcpp: "StepGeom_CurveReplica(@)", header: "StepGeom_CurveReplica.hxx".}
proc Init*(this: var StepGeom_CurveReplica; aName: handle[TCollection_HAsciiString];
          aParentCurve: handle[StepGeom_Curve];
          aTransformation: handle[StepGeom_CartesianTransformationOperator]) {.
    importcpp: "Init", header: "StepGeom_CurveReplica.hxx".}
proc SetParentCurve*(this: var StepGeom_CurveReplica;
                    aParentCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetParentCurve", header: "StepGeom_CurveReplica.hxx".}
proc ParentCurve*(this: StepGeom_CurveReplica): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "ParentCurve", header: "StepGeom_CurveReplica.hxx".}
proc SetTransformation*(this: var StepGeom_CurveReplica; aTransformation: handle[
    StepGeom_CartesianTransformationOperator]) {.importcpp: "SetTransformation",
    header: "StepGeom_CurveReplica.hxx".}
proc Transformation*(this: StepGeom_CurveReplica): handle[
    StepGeom_CartesianTransformationOperator] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_CurveReplica.hxx".}
type
  StepGeom_CurveReplicabase_type* = StepGeom_Curve

proc get_type_name*(): cstring {.importcpp: "StepGeom_CurveReplica::get_type_name(@)",
                              header: "StepGeom_CurveReplica.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_CurveReplica::get_type_descriptor(@)",
    header: "StepGeom_CurveReplica.hxx".}
proc DynamicType*(this: StepGeom_CurveReplica): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_CurveReplica.hxx".}