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

type
  StepBasicHArray1OfApproval* {.importcpp: "StepBasic_HArray1OfApproval",
                               header: "StepBasic_HArray1OfApproval.hxx", bycopy.} = object of StepBasicArray1OfApproval


proc constructStepBasicHArray1OfApproval*(theLower: int; theUpper: int): StepBasicHArray1OfApproval {.
    constructor, importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc constructStepBasicHArray1OfApproval*(theLower: int; theUpper: int;
    theValue: ValueType): StepBasicHArray1OfApproval {.constructor,
    importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc constructStepBasicHArray1OfApproval*(theOther: StepBasicArray1OfApproval): StepBasicHArray1OfApproval {.
    constructor, importcpp: "StepBasic_HArray1OfApproval(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc array1*(this: StepBasicHArray1OfApproval): StepBasicArray1OfApproval {.
    noSideEffect, importcpp: "Array1", header: "StepBasic_HArray1OfApproval.hxx".}
proc changeArray1*(this: var StepBasicHArray1OfApproval): var StepBasicArray1OfApproval {.
    importcpp: "ChangeArray1", header: "StepBasic_HArray1OfApproval.hxx".}
type
  StepBasicHArray1OfApprovalbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepBasic_HArray1OfApproval::get_type_name(@)",
                            header: "StepBasic_HArray1OfApproval.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_HArray1OfApproval::get_type_descriptor(@)",
    header: "StepBasic_HArray1OfApproval.hxx".}
proc dynamicType*(this: StepBasicHArray1OfApproval): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_HArray1OfApproval.hxx".}














































