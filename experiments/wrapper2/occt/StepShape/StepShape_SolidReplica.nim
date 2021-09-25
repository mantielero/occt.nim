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

discard "forward decl of StepShape_SolidModel"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SolidReplica"
discard "forward decl of StepShape_SolidReplica"
type
  HandleStepShapeSolidReplica* = Handle[StepShapeSolidReplica]
  StepShapeSolidReplica* {.importcpp: "StepShape_SolidReplica",
                          header: "StepShape_SolidReplica.hxx", bycopy.} = object of StepShapeSolidModel ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## SolidReplica


proc constructStepShapeSolidReplica*(): StepShapeSolidReplica {.constructor,
    importcpp: "StepShape_SolidReplica(@)", header: "StepShape_SolidReplica.hxx".}
proc init*(this: var StepShapeSolidReplica; aName: Handle[TCollectionHAsciiString];
          aParentSolid: Handle[StepShapeSolidModel];
          aTransformation: Handle[StepGeomCartesianTransformationOperator3d]) {.
    importcpp: "Init", header: "StepShape_SolidReplica.hxx".}
proc setParentSolid*(this: var StepShapeSolidReplica;
                    aParentSolid: Handle[StepShapeSolidModel]) {.
    importcpp: "SetParentSolid", header: "StepShape_SolidReplica.hxx".}
proc parentSolid*(this: StepShapeSolidReplica): Handle[StepShapeSolidModel] {.
    noSideEffect, importcpp: "ParentSolid", header: "StepShape_SolidReplica.hxx".}
proc setTransformation*(this: var StepShapeSolidReplica; aTransformation: Handle[
    StepGeomCartesianTransformationOperator3d]) {.importcpp: "SetTransformation",
    header: "StepShape_SolidReplica.hxx".}
proc transformation*(this: StepShapeSolidReplica): Handle[
    StepGeomCartesianTransformationOperator3d] {.noSideEffect,
    importcpp: "Transformation", header: "StepShape_SolidReplica.hxx".}
type
  StepShapeSolidReplicabaseType* = StepShapeSolidModel

proc getTypeName*(): cstring {.importcpp: "StepShape_SolidReplica::get_type_name(@)",
                            header: "StepShape_SolidReplica.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_SolidReplica::get_type_descriptor(@)",
    header: "StepShape_SolidReplica.hxx".}
proc dynamicType*(this: StepShapeSolidReplica): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_SolidReplica.hxx".}
