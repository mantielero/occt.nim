##  Created on: 2002-12-12
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
discard "forward decl of StepBasic_ThermodynamicTemperatureUnit"
type
  HandleC1C1* = Handle[StepBasicThermodynamicTemperatureUnit]

## ! Representation of STEP entity ThermodynamicTemperatureUnit

type
  StepBasicThermodynamicTemperatureUnit* {.
      importcpp: "StepBasic_ThermodynamicTemperatureUnit",
      header: "StepBasic_ThermodynamicTemperatureUnit.hxx", bycopy.} = object of StepBasicNamedUnit ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepBasicThermodynamicTemperatureUnit*(): StepBasicThermodynamicTemperatureUnit {.
    constructor, importcpp: "StepBasic_ThermodynamicTemperatureUnit(@)",
    header: "StepBasic_ThermodynamicTemperatureUnit.hxx".}
type
  StepBasicThermodynamicTemperatureUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ThermodynamicTemperatureUnit::get_type_name(@)", header: "StepBasic_ThermodynamicTemperatureUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ThermodynamicTemperatureUnit::get_type_descriptor(@)",
    header: "StepBasic_ThermodynamicTemperatureUnit.hxx".}
proc dynamicType*(this: StepBasicThermodynamicTemperatureUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ThermodynamicTemperatureUnit.hxx".}

























