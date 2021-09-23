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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Direction"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianTransformationOperator"
discard "forward decl of StepGeom_CartesianTransformationOperator"
type
  Handle_StepGeom_CartesianTransformationOperator* = handle[
      StepGeom_CartesianTransformationOperator]
  StepGeom_CartesianTransformationOperator* {.
      importcpp: "StepGeom_CartesianTransformationOperator",
      header: "StepGeom_CartesianTransformationOperator.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                 ## !
                                                                                                                 ## Returns
                                                                                                                 ## a
                                                                                                                 ## CartesianTransformationOperator


proc constructStepGeom_CartesianTransformationOperator*(): StepGeom_CartesianTransformationOperator {.
    constructor, importcpp: "StepGeom_CartesianTransformationOperator(@)",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc Init*(this: var StepGeom_CartesianTransformationOperator;
          aName: handle[TCollection_HAsciiString]; hasAaxis1: Standard_Boolean;
          aAxis1: handle[StepGeom_Direction]; hasAaxis2: Standard_Boolean;
          aAxis2: handle[StepGeom_Direction];
          aLocalOrigin: handle[StepGeom_CartesianPoint];
          hasAscale: Standard_Boolean; aScale: Standard_Real) {.importcpp: "Init",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc SetAxis1*(this: var StepGeom_CartesianTransformationOperator;
              aAxis1: handle[StepGeom_Direction]) {.importcpp: "SetAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc UnSetAxis1*(this: var StepGeom_CartesianTransformationOperator) {.
    importcpp: "UnSetAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc Axis1*(this: StepGeom_CartesianTransformationOperator): handle[
    StepGeom_Direction] {.noSideEffect, importcpp: "Axis1",
                         header: "StepGeom_CartesianTransformationOperator.hxx".}
proc HasAxis1*(this: StepGeom_CartesianTransformationOperator): Standard_Boolean {.
    noSideEffect, importcpp: "HasAxis1",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc SetAxis2*(this: var StepGeom_CartesianTransformationOperator;
              aAxis2: handle[StepGeom_Direction]) {.importcpp: "SetAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc UnSetAxis2*(this: var StepGeom_CartesianTransformationOperator) {.
    importcpp: "UnSetAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc Axis2*(this: StepGeom_CartesianTransformationOperator): handle[
    StepGeom_Direction] {.noSideEffect, importcpp: "Axis2",
                         header: "StepGeom_CartesianTransformationOperator.hxx".}
proc HasAxis2*(this: StepGeom_CartesianTransformationOperator): Standard_Boolean {.
    noSideEffect, importcpp: "HasAxis2",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc SetLocalOrigin*(this: var StepGeom_CartesianTransformationOperator;
                    aLocalOrigin: handle[StepGeom_CartesianPoint]) {.
    importcpp: "SetLocalOrigin",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc LocalOrigin*(this: StepGeom_CartesianTransformationOperator): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "LocalOrigin", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc SetScale*(this: var StepGeom_CartesianTransformationOperator;
              aScale: Standard_Real) {.importcpp: "SetScale", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc UnSetScale*(this: var StepGeom_CartesianTransformationOperator) {.
    importcpp: "UnSetScale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc Scale*(this: StepGeom_CartesianTransformationOperator): Standard_Real {.
    noSideEffect, importcpp: "Scale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc HasScale*(this: StepGeom_CartesianTransformationOperator): Standard_Boolean {.
    noSideEffect, importcpp: "HasScale",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
type
  StepGeom_CartesianTransformationOperatorbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepGeom_CartesianTransformationOperator::get_type_name(@)", header: "StepGeom_CartesianTransformationOperator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_CartesianTransformationOperator::get_type_descriptor(@)",
    header: "StepGeom_CartesianTransformationOperator.hxx".}
proc DynamicType*(this: StepGeom_CartesianTransformationOperator): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_CartesianTransformationOperator.hxx".}