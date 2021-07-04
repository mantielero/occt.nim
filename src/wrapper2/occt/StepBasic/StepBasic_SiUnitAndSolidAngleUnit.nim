##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepBasic_SolidAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndSolidAngleUnit"
discard "forward decl of StepBasic_SiUnitAndSolidAngleUnit"
type
  Handle_StepBasic_SiUnitAndSolidAngleUnit* = handle[
      StepBasic_SiUnitAndSolidAngleUnit]
  StepBasic_SiUnitAndSolidAngleUnit* {.importcpp: "StepBasic_SiUnitAndSolidAngleUnit", header: "StepBasic_SiUnitAndSolidAngleUnit.hxx",
                                      bycopy.} = object of StepBasic_SiUnit ## ! Returns a
                                                                       ## SiUnitAndSolidAngleUnit


proc constructStepBasic_SiUnitAndSolidAngleUnit*(): StepBasic_SiUnitAndSolidAngleUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndSolidAngleUnit(@)",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndSolidAngleUnit;
          hasAprefix: Standard_Boolean; aPrefix: StepBasic_SiPrefix;
          aName: StepBasic_SiUnitName) {.importcpp: "Init", header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc SetSolidAngleUnit*(this: var StepBasic_SiUnitAndSolidAngleUnit;
                       aSolidAngleUnit: handle[StepBasic_SolidAngleUnit]) {.
    importcpp: "SetSolidAngleUnit",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc SolidAngleUnit*(this: StepBasic_SiUnitAndSolidAngleUnit): handle[
    StepBasic_SolidAngleUnit] {.noSideEffect, importcpp: "SolidAngleUnit",
                               header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
type
  StepBasic_SiUnitAndSolidAngleUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndSolidAngleUnit::get_type_name(@)",
                              header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SiUnitAndSolidAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndSolidAngleUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}