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

discard "forward decl of StepBasic_PlaneAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndPlaneAngleUnit"
discard "forward decl of StepBasic_SiUnitAndPlaneAngleUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnitAndPlaneAngleUnit]
  StepBasicSiUnitAndPlaneAngleUnit* {.importcpp: "StepBasic_SiUnitAndPlaneAngleUnit", header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx",
                                     bycopy.} = object of StepBasicSiUnit ## ! Returns a
                                                                     ## SiUnitAndPlaneAngleUnit


proc constructStepBasicSiUnitAndPlaneAngleUnit*(): StepBasicSiUnitAndPlaneAngleUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndPlaneAngleUnit(@)",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndPlaneAngleUnit; hasAprefix: StandardBoolean;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc setPlaneAngleUnit*(this: var StepBasicSiUnitAndPlaneAngleUnit;
                       aPlaneAngleUnit: Handle[StepBasicPlaneAngleUnit]) {.
    importcpp: "SetPlaneAngleUnit",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc planeAngleUnit*(this: StepBasicSiUnitAndPlaneAngleUnit): Handle[
    StepBasicPlaneAngleUnit] {.noSideEffect, importcpp: "PlaneAngleUnit",
                              header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
type
  StepBasicSiUnitAndPlaneAngleUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndPlaneAngleUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndPlaneAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndPlaneAngleUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndPlaneAngleUnit.hxx".}