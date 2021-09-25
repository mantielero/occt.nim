##  Created on: 2015-07-10
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
  StepDimTolHArray1OfGeometricToleranceModifier* {.
      importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier",
      header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx", bycopy.} = object of StepDimTolArray1OfGeometricToleranceModifier


proc constructStepDimTolHArray1OfGeometricToleranceModifier*(theLower: int;
    theUpper: int): StepDimTolHArray1OfGeometricToleranceModifier {.constructor,
    importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier(@)",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc constructStepDimTolHArray1OfGeometricToleranceModifier*(theLower: int;
    theUpper: int; theValue: ValueType): StepDimTolHArray1OfGeometricToleranceModifier {.
    constructor, importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier(@)",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc constructStepDimTolHArray1OfGeometricToleranceModifier*(
    theOther: StepDimTolArray1OfGeometricToleranceModifier): StepDimTolHArray1OfGeometricToleranceModifier {.
    constructor, importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier(@)",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc array1*(this: StepDimTolHArray1OfGeometricToleranceModifier): StepDimTolArray1OfGeometricToleranceModifier {.
    noSideEffect, importcpp: "Array1",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc changeArray1*(this: var StepDimTolHArray1OfGeometricToleranceModifier): var StepDimTolArray1OfGeometricToleranceModifier {.
    importcpp: "ChangeArray1",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
type
  StepDimTolHArray1OfGeometricToleranceModifierbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier::get_type_name(@)", header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_HArray1OfGeometricToleranceModifier::get_type_descriptor(@)",
    header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
proc dynamicType*(this: StepDimTolHArray1OfGeometricToleranceModifier): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_HArray1OfGeometricToleranceModifier.hxx".}
