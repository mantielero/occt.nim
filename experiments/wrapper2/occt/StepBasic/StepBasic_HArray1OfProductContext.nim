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
  StepBasicHArray1OfProductContext* {.importcpp: "StepBasic_HArray1OfProductContext", header: "StepBasic_HArray1OfProductContext.hxx",
                                     bycopy.} = object of StepBasicArray1OfProductContext


proc constructStepBasicHArray1OfProductContext*(theLower: int; theUpper: int): StepBasicHArray1OfProductContext {.
    constructor, importcpp: "StepBasic_HArray1OfProductContext(@)",
    header: "StepBasic_HArray1OfProductContext.hxx".}
proc constructStepBasicHArray1OfProductContext*(theLower: int; theUpper: int;
    theValue: ValueType): StepBasicHArray1OfProductContext {.constructor,
    importcpp: "StepBasic_HArray1OfProductContext(@)",
    header: "StepBasic_HArray1OfProductContext.hxx".}
proc constructStepBasicHArray1OfProductContext*(
    theOther: StepBasicArray1OfProductContext): StepBasicHArray1OfProductContext {.
    constructor, importcpp: "StepBasic_HArray1OfProductContext(@)",
    header: "StepBasic_HArray1OfProductContext.hxx".}
proc array1*(this: StepBasicHArray1OfProductContext): StepBasicArray1OfProductContext {.
    noSideEffect, importcpp: "Array1",
    header: "StepBasic_HArray1OfProductContext.hxx".}
proc changeArray1*(this: var StepBasicHArray1OfProductContext): var StepBasicArray1OfProductContext {.
    importcpp: "ChangeArray1", header: "StepBasic_HArray1OfProductContext.hxx".}
type
  StepBasicHArray1OfProductContextbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepBasic_HArray1OfProductContext::get_type_name(@)",
                            header: "StepBasic_HArray1OfProductContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_HArray1OfProductContext::get_type_descriptor(@)",
    header: "StepBasic_HArray1OfProductContext.hxx".}
proc dynamicType*(this: StepBasicHArray1OfProductContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_HArray1OfProductContext.hxx".}
