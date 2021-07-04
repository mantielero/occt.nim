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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SiUnit,
  ../Standard/Standard_Boolean, StepBasic_SiPrefix, StepBasic_SiUnitName

discard "forward decl of StepBasic_ThermodynamicTemperatureUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndThermodynamicTemperatureUnit"
discard "forward decl of StepBasic_SiUnitAndThermodynamicTemperatureUnit"
type
  Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit* = handle[
      StepBasic_SiUnitAndThermodynamicTemperatureUnit]
  StepBasic_SiUnitAndThermodynamicTemperatureUnit* {.
      importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit",
      header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx", bycopy.} = object of StepBasic_SiUnit ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## SiUnitAndThermodynamicTemperatureUnit


proc constructStepBasic_SiUnitAndThermodynamicTemperatureUnit*(): StepBasic_SiUnitAndThermodynamicTemperatureUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit(@)",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc Init*(this: var StepBasic_SiUnitAndThermodynamicTemperatureUnit;
          hasAprefix: Standard_Boolean; aPrefix: StepBasic_SiPrefix;
          aName: StepBasic_SiUnitName) {.importcpp: "Init", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc SetThermodynamicTemperatureUnit*(this: var StepBasic_SiUnitAndThermodynamicTemperatureUnit;
    aThermodynamicTemperatureUnit: handle[StepBasic_ThermodynamicTemperatureUnit]) {.
    importcpp: "SetThermodynamicTemperatureUnit",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc ThermodynamicTemperatureUnit*(this: StepBasic_SiUnitAndThermodynamicTemperatureUnit): handle[
    StepBasic_ThermodynamicTemperatureUnit] {.noSideEffect,
    importcpp: "ThermodynamicTemperatureUnit",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
type
  StepBasic_SiUnitAndThermodynamicTemperatureUnitbase_type* = StepBasic_SiUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit::get_type_name(@)", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_SiUnitAndThermodynamicTemperatureUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}
proc DynamicType*(this: StepBasic_SiUnitAndThermodynamicTemperatureUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx".}