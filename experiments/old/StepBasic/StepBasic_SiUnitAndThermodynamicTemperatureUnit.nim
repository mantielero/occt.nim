##  Created on: 2002-12-15
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_ThermodynamicTemperatureUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndThermodynamicTemperatureUnit"
discard "forward decl of StepBasic_SiUnitAndThermodynamicTemperatureUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnitAndThermodynamicTemperatureUnit]
  StepBasicSiUnitAndThermodynamicTemperatureUnit* {.
      importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit",
      header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx", bycopy.} = object of StepBasicSiUnit ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## SiUnitAndThermodynamicTemperatureUnit


proc constructStepBasicSiUnitAndThermodynamicTemperatureUnit*(): StepBasicSiUnitAndThermodynamicTemperatureUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit(@)",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndThermodynamicTemperatureUnit;
          hasAprefix: StandardBoolean; aPrefix: StepBasicSiPrefix;
          aName: StepBasicSiUnitName) {.importcpp: "Init", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc setThermodynamicTemperatureUnit*(this: var StepBasicSiUnitAndThermodynamicTemperatureUnit;
    aThermodynamicTemperatureUnit: Handle[StepBasicThermodynamicTemperatureUnit]) {.
    importcpp: "SetThermodynamicTemperatureUnit",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc thermodynamicTemperatureUnit*(this: StepBasicSiUnitAndThermodynamicTemperatureUnit): Handle[
    StepBasicThermodynamicTemperatureUnit] {.noSideEffect,
    importcpp: "ThermodynamicTemperatureUnit",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
type
  StepBasicSiUnitAndThermodynamicTemperatureUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit::get_type_name(@)", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndThermodynamicTemperatureUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}