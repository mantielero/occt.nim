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
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndVolumeUnit"
discard "forward decl of StepBasic_SiUnitAndVolumeUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnitAndVolumeUnit]
  StepBasicSiUnitAndVolumeUnit* {.importcpp: "StepBasic_SiUnitAndVolumeUnit",
                                 header: "StepBasic_SiUnitAndVolumeUnit.hxx",
                                 bycopy.} = object of StepBasicSiUnit ## ! Returns a
                                                                 ## SiUnitAndVolumeUnit


proc constructStepBasicSiUnitAndVolumeUnit*(): StepBasicSiUnitAndVolumeUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndVolumeUnit(@)",
    header: "StepBasic_SiUnitAndVolumeUnit.hxx".}
proc setVolumeUnit*(this: var StepBasicSiUnitAndVolumeUnit;
                   aVolumeUnit: Handle[StepBasicVolumeUnit]) {.
    importcpp: "SetVolumeUnit", header: "StepBasic_SiUnitAndVolumeUnit.hxx".}
proc volumeUnit*(this: StepBasicSiUnitAndVolumeUnit): Handle[StepBasicVolumeUnit] {.
    noSideEffect, importcpp: "VolumeUnit",
    header: "StepBasic_SiUnitAndVolumeUnit.hxx".}
type
  StepBasicSiUnitAndVolumeUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndVolumeUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndVolumeUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndVolumeUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndVolumeUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndVolumeUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndVolumeUnit.hxx".}