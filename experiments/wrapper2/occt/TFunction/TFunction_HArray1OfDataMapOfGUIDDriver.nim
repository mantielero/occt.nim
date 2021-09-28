##  Created on: 1999-06-10
##  Created by: Vladislav ROMASHKO
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

type
  TFunctionHArray1OfDataMapOfGUIDDriver* {.
      importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver",
      header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx", bycopy.} = object of TFunctionArray1OfDataMapOfGUIDDriver


proc constructTFunctionHArray1OfDataMapOfGUIDDriver*(theLower: int; theUpper: int): TFunctionHArray1OfDataMapOfGUIDDriver {.
    constructor, importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc constructTFunctionHArray1OfDataMapOfGUIDDriver*(theLower: int; theUpper: int;
    theValue: ValueType): TFunctionHArray1OfDataMapOfGUIDDriver {.constructor,
    importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc constructTFunctionHArray1OfDataMapOfGUIDDriver*(
    theOther: TFunctionArray1OfDataMapOfGUIDDriver): TFunctionHArray1OfDataMapOfGUIDDriver {.
    constructor, importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc array1*(this: TFunctionHArray1OfDataMapOfGUIDDriver): TFunctionArray1OfDataMapOfGUIDDriver {.
    noSideEffect, importcpp: "Array1",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc changeArray1*(this: var TFunctionHArray1OfDataMapOfGUIDDriver): var TFunctionArray1OfDataMapOfGUIDDriver {.
    importcpp: "ChangeArray1",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
type
  TFunctionHArray1OfDataMapOfGUIDDriverbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver::get_type_name(@)", header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver::get_type_descriptor(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc dynamicType*(this: TFunctionHArray1OfDataMapOfGUIDDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}














































