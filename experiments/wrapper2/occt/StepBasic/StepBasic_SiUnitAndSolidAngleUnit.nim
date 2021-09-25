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

discard "forward decl of StepBasic_SolidAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndSolidAngleUnit"
discard "forward decl of StepBasic_SiUnitAndSolidAngleUnit"
type
  HandleStepBasicSiUnitAndSolidAngleUnit* = Handle[
      StepBasicSiUnitAndSolidAngleUnit]
  StepBasicSiUnitAndSolidAngleUnit* {.importcpp: "StepBasic_SiUnitAndSolidAngleUnit", header: "StepBasic_SiUnitAndSolidAngleUnit.hxx",
                                     bycopy.} = object of StepBasicSiUnit ## ! Returns a
                                                                     ## SiUnitAndSolidAngleUnit


proc constructStepBasicSiUnitAndSolidAngleUnit*(): StepBasicSiUnitAndSolidAngleUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndSolidAngleUnit(@)",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndSolidAngleUnit; hasAprefix: bool;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc setSolidAngleUnit*(this: var StepBasicSiUnitAndSolidAngleUnit;
                       aSolidAngleUnit: Handle[StepBasicSolidAngleUnit]) {.
    importcpp: "SetSolidAngleUnit",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc solidAngleUnit*(this: StepBasicSiUnitAndSolidAngleUnit): Handle[
    StepBasicSolidAngleUnit] {.noSideEffect, importcpp: "SolidAngleUnit",
                              header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
type
  StepBasicSiUnitAndSolidAngleUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndSolidAngleUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndSolidAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndSolidAngleUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndSolidAngleUnit.hxx".}
