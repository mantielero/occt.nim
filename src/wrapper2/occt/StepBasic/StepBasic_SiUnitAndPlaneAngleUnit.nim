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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit,
  ../Standard/Standard_Boolean, StepBasic_SiPrefix, StepBasic_SiUnitName

discard "forward decl of StepBasic_PlaneAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndPlaneAngleUnit"
discard "forward decl of StepBasic_SiUnitAndPlaneAngleUnit"
type
  Handle_StepBasic_SiUnitAndPlaneAngleUnit* = handle[
      StepBasic_SiUnitAndPlaneAngleUnit]
  StepBasic_SiUnitAndPlaneAngleUnit* {.importcpp: "StepBasic_SiUnitAndPlaneAngleUnit", header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx",
                                      bycopy.} = object of StepBasic_SiUnit ## ! Returns a
                                                                       ## SiUnitAndPlaneAngleUnit


proc constructStepBasic_SiUnitAndPlaneAngleUnit*(): StepBasic_SiUnitAndPlaneAngleUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndPlaneAngleUnit(@)",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndPlaneAngleUnit;
          hasAprefix: Standard_Boolean; aPrefix: StepBasic_SiPrefix;
          aName: StepBasic_SiUnitName) {.importcpp: "Init", header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc SetPlaneAngleUnit*(this: var StepBasic_SiUnitAndPlaneAngleUnit;
                       aPlaneAngleUnit: handle[StepBasic_PlaneAngleUnit]) {.
    importcpp: "SetPlaneAngleUnit",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc PlaneAngleUnit*(this: StepBasic_SiUnitAndPlaneAngleUnit): handle[
    StepBasic_PlaneAngleUnit] {.noSideEffect, importcpp: "PlaneAngleUnit",
                               header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
type
  StepBasic_SiUnitAndPlaneAngleUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndPlaneAngleUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndPlaneAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndPlaneAngleUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}