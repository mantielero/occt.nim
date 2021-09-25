##  Created on: 1992-02-11
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

type
  StepDataHArray1OfField* {.importcpp: "StepData_HArray1OfField",
                           header: "StepData_HArray1OfField.hxx", bycopy.} = object of StepDataArray1OfField


proc constructStepDataHArray1OfField*(theLower: int; theUpper: int): StepDataHArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc constructStepDataHArray1OfField*(theLower: int; theUpper: int;
                                     theValue: ValueType): StepDataHArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc constructStepDataHArray1OfField*(theOther: StepDataArray1OfField): StepDataHArray1OfField {.
    constructor, importcpp: "StepData_HArray1OfField(@)",
    header: "StepData_HArray1OfField.hxx".}
proc array1*(this: StepDataHArray1OfField): StepDataArray1OfField {.noSideEffect,
    importcpp: "Array1", header: "StepData_HArray1OfField.hxx".}
proc changeArray1*(this: var StepDataHArray1OfField): var StepDataArray1OfField {.
    importcpp: "ChangeArray1", header: "StepData_HArray1OfField.hxx".}
type
  StepDataHArray1OfFieldbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepData_HArray1OfField::get_type_name(@)",
                            header: "StepData_HArray1OfField.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_HArray1OfField::get_type_descriptor(@)",
    header: "StepData_HArray1OfField.hxx".}
proc dynamicType*(this: StepDataHArray1OfField): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_HArray1OfField.hxx".}
