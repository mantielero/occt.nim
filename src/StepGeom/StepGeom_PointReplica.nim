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

discard "forward decl of StepGeom_Point"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PointReplica"
discard "forward decl of StepGeom_PointReplica"
type
  HandleC1C1* = Handle[StepGeomPointReplica]
  StepGeomPointReplica* {.importcpp: "StepGeom_PointReplica",
                         header: "StepGeom_PointReplica.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## PointReplica


proc constructStepGeomPointReplica*(): StepGeomPointReplica {.constructor,
    importcpp: "StepGeom_PointReplica(@)", header: "StepGeom_PointReplica.hxx".}
proc init*(this: var StepGeomPointReplica; aName: Handle[TCollectionHAsciiString];
          aParentPt: Handle[StepGeomPoint];
          aTransformation: Handle[StepGeomCartesianTransformationOperator]) {.
    importcpp: "Init", header: "StepGeom_PointReplica.hxx".}
proc setParentPt*(this: var StepGeomPointReplica; aParentPt: Handle[StepGeomPoint]) {.
    importcpp: "SetParentPt", header: "StepGeom_PointReplica.hxx".}
proc parentPt*(this: StepGeomPointReplica): Handle[StepGeomPoint] {.noSideEffect,
    importcpp: "ParentPt", header: "StepGeom_PointReplica.hxx".}
proc setTransformation*(this: var StepGeomPointReplica; aTransformation: Handle[
    StepGeomCartesianTransformationOperator]) {.importcpp: "SetTransformation",
    header: "StepGeom_PointReplica.hxx".}
proc transformation*(this: StepGeomPointReplica): Handle[
    StepGeomCartesianTransformationOperator] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_PointReplica.hxx".}
type
  StepGeomPointReplicabaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepGeom_PointReplica::get_type_name(@)",
                            header: "StepGeom_PointReplica.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_PointReplica::get_type_descriptor(@)",
    header: "StepGeom_PointReplica.hxx".}
proc dynamicType*(this: StepGeomPointReplica): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_PointReplica.hxx".}