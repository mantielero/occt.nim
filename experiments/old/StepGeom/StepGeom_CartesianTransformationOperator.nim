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

discard "forward decl of StepGeom_Direction"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of StepGeom_CartesianTransformationOperator"
type
  HandleC1C1* = Handle[StepGeomCartesianTransformationOperator]
  StepGeomCartesianTransformationOperator* {.
      importcpp: "StepGeom_CartesianTransformationOperator",
      header: "StepGeom_CartesianTransformationOperator.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## CartesianTransformationOperator


proc constructStepGeomCartesianTransformationOperator*(): StepGeomCartesianTransformationOperator {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator(@)",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc init*(this: var StepGeomCartesianTransformationOperator;
          aName: Handle[TCollectionHAsciiString]; hasAaxis1: StandardBoolean;
          aAxis1: Handle[StepGeomDirection]; hasAaxis2: StandardBoolean;
          aAxis2: Handle[StepGeomDirection];
          aLocalOrigin: Handle[StepGeomCartesianPoint];
          hasAscale: StandardBoolean; aScale: StandardReal) {.importcpp: "Init",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc setAxis1*(this: var StepGeomCartesianTransformationOperator;
              aAxis1: Handle[StepGeomDirection]) {.importcpp: "SetAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc unSetAxis1*(this: var StepGeomCartesianTransformationOperator) {.
    importcpp: "UnSetAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc axis1*(this: StepGeomCartesianTransformationOperator): Handle[
    StepGeomDirection] {.noSideEffect, importcpp: "Axis1",
                        header: "StepGeom_CartesianTransformationOperator.hxx".}
proc hasAxis1*(this: StepGeomCartesianTransformationOperator): StandardBoolean {.
    noSideEffect, importcpp: "HasAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc setAxis2*(this: var StepGeomCartesianTransformationOperator;
              aAxis2: Handle[StepGeomDirection]) {.importcpp: "SetAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc unSetAxis2*(this: var StepGeomCartesianTransformationOperator) {.
    importcpp: "UnSetAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc axis2*(this: StepGeomCartesianTransformationOperator): Handle[
    StepGeomDirection] {.noSideEffect, importcpp: "Axis2",
                        header: "StepGeom_CartesianTransformationOperator.hxx".}
proc hasAxis2*(this: StepGeomCartesianTransformationOperator): StandardBoolean {.
    noSideEffect, importcpp: "HasAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc setLocalOrigin*(this: var StepGeomCartesianTransformationOperator;
                    aLocalOrigin: Handle[StepGeomCartesianPoint]) {.
    importcpp: "SetLocalOrigin",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc localOrigin*(this: StepGeomCartesianTransformationOperator): Handle[
    StepGeomCartesianPoint] {.noSideEffect, importcpp: "LocalOrigin", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc setScale*(this: var StepGeomCartesianTransformationOperator;
              aScale: StandardReal) {.importcpp: "SetScale", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc unSetScale*(this: var StepGeomCartesianTransformationOperator) {.
    importcpp: "UnSetScale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc scale*(this: StepGeomCartesianTransformationOperator): StandardReal {.
    noSideEffect, importcpp: "Scale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc hasScale*(this: StepGeomCartesianTransformationOperator): StandardBoolean {.
    noSideEffect, importcpp: "HasScale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
type
  StepGeomCartesianTransformationOperatorbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_CartesianTransformationOperator::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc dynamicType*(this: StepGeomCartesianTransformationOperator): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_CartesianTransformationOperator.hxx".}