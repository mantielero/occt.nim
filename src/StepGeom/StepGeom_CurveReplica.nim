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

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveReplica"
discard "forward decl of StepGeom_CurveReplica"
type
  HandleC1C1* = Handle[StepGeomCurveReplica]
  StepGeomCurveReplica* {.importcpp: "StepGeom_CurveReplica",
                         header: "StepGeom_CurveReplica.hxx", bycopy.} = object of StepGeomCurve ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## CurveReplica


proc constructStepGeomCurveReplica*(): StepGeomCurveReplica {.constructor,
    importcpp: "StepGeom_CurveReplica(@)", header: "StepGeom_CurveReplica.hxx".}
proc init*(this: var StepGeomCurveReplica; aName: Handle[TCollectionHAsciiString];
          aParentCurve: Handle[StepGeomCurve];
          aTransformation: Handle[StepGeomCartesianTransformationOperator]) {.
    importcpp: "Init", header: "StepGeom_CurveReplica.hxx".}
proc setParentCurve*(this: var StepGeomCurveReplica;
                    aParentCurve: Handle[StepGeomCurve]) {.
    importcpp: "SetParentCurve", header: "StepGeom_CurveReplica.hxx".}
proc parentCurve*(this: StepGeomCurveReplica): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "ParentCurve", header: "StepGeom_CurveReplica.hxx".}
proc setTransformation*(this: var StepGeomCurveReplica; aTransformation: Handle[
    StepGeomCartesianTransformationOperator]) {.importcpp: "SetTransformation",
    header: "StepGeom_CurveReplica.hxx".}
proc transformation*(this: StepGeomCurveReplica): Handle[
    StepGeomCartesianTransformationOperator] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_CurveReplica.hxx".}
type
  StepGeomCurveReplicabaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_CurveReplica::get_type_name(@)",
                            header: "StepGeom_CurveReplica.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_CurveReplica::get_type_descriptor(@)",
    header: "StepGeom_CurveReplica.hxx".}
proc dynamicType*(this: StepGeomCurveReplica): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_CurveReplica.hxx".}