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

discard "forward decl of StepBasic_VolumeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndVolumeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndVolumeUnit"
type
  HandleStepBasicConversionBasedUnitAndVolumeUnit* = Handle[
      StepBasicConversionBasedUnitAndVolumeUnit]
  StepBasicConversionBasedUnitAndVolumeUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit",
      header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## ConversionBasedUnitAndVolumeUnit


proc constructStepBasicConversionBasedUnitAndVolumeUnit*(): StepBasicConversionBasedUnitAndVolumeUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc setVolumeUnit*(this: var StepBasicConversionBasedUnitAndVolumeUnit;
                   aVolumeUnit: Handle[StepBasicVolumeUnit]) {.
    importcpp: "SetVolumeUnit",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc volumeUnit*(this: StepBasicConversionBasedUnitAndVolumeUnit): Handle[
    StepBasicVolumeUnit] {.noSideEffect, importcpp: "VolumeUnit", header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
type
  StepBasicConversionBasedUnitAndVolumeUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndVolumeUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndVolumeUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndVolumeUnit.hxx".}
