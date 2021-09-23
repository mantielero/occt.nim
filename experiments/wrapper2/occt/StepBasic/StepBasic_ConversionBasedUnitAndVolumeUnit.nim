##  Created on: 1999-10-12
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ConversionBasedUnit

discard "forward decl of StepBasic_VolumeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndVolumeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndVolumeUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndVolumeUnit* = handle[
      StepBasic_ConversionBasedUnitAndVolumeUnit]
  StepBasic_ConversionBasedUnitAndVolumeUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit",
      header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ConversionBasedUnitAndVolumeUnit


proc constructStepBasic_ConversionBasedUnitAndVolumeUnit*(): StepBasic_ConversionBasedUnitAndVolumeUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc SetVolumeUnit*(this: var StepBasic_ConversionBasedUnitAndVolumeUnit;
                   aVolumeUnit: handle[StepBasic_VolumeUnit]) {.
    importcpp: "SetVolumeUnit",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc VolumeUnit*(this: StepBasic_ConversionBasedUnitAndVolumeUnit): handle[
    StepBasic_VolumeUnit] {.noSideEffect, importcpp: "VolumeUnit", header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndVolumeUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndVolumeUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}