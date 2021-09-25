##  Created on: 2015-07-13
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StepDimTolHArray1OfToleranceZoneTarget* {.
      importcpp: "StepDimTol_HArray1OfToleranceZoneTarget",
      header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx", bycopy.} = object of StepDimTolArray1OfToleranceZoneTarget


proc constructStepDimTolHArray1OfToleranceZoneTarget*(theLower: int; theUpper: int): StepDimTolHArray1OfToleranceZoneTarget {.
    constructor, importcpp: "StepDimTol_HArray1OfToleranceZoneTarget(@)",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc constructStepDimTolHArray1OfToleranceZoneTarget*(theLower: int; theUpper: int;
    theValue: ValueType): StepDimTolHArray1OfToleranceZoneTarget {.constructor,
    importcpp: "StepDimTol_HArray1OfToleranceZoneTarget(@)",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc constructStepDimTolHArray1OfToleranceZoneTarget*(
    theOther: StepDimTolArray1OfToleranceZoneTarget): StepDimTolHArray1OfToleranceZoneTarget {.
    constructor, importcpp: "StepDimTol_HArray1OfToleranceZoneTarget(@)",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc array1*(this: StepDimTolHArray1OfToleranceZoneTarget): StepDimTolArray1OfToleranceZoneTarget {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfToleranceZoneTarget): var StepDimTolArray1OfToleranceZoneTarget {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
type
  StepDimTolHArray1OfToleranceZoneTargetbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfToleranceZoneTarget::get_type_name(@)", header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfToleranceZoneTarget::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfToleranceZoneTarget): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfToleranceZoneTarget.hxx".}
