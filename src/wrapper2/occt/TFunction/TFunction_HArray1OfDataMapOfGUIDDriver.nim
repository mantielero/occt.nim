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

import
  TFunction_DataMapOfGUIDDriver, TFunction_Array1OfDataMapOfGUIDDriver,
  ../NCollection/NCollection_DefineHArray1

type
  TFunction_HArray1OfDataMapOfGUIDDriver* {.
      importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver",
      header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx", bycopy.} = object of TFunction_Array1OfDataMapOfGUIDDriver


proc constructTFunction_HArray1OfDataMapOfGUIDDriver*(theLower: Standard_Integer;
    theUpper: Standard_Integer): TFunction_HArray1OfDataMapOfGUIDDriver {.
    constructor, importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc constructTFunction_HArray1OfDataMapOfGUIDDriver*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): TFunction_HArray1OfDataMapOfGUIDDriver {.
    constructor, importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc constructTFunction_HArray1OfDataMapOfGUIDDriver*(
    theOther: TFunction_Array1OfDataMapOfGUIDDriver): TFunction_HArray1OfDataMapOfGUIDDriver {.
    constructor, importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc Array1*(this: TFunction_HArray1OfDataMapOfGUIDDriver): TFunction_Array1OfDataMapOfGUIDDriver {.
    noSideEffect, importcpp: "Array1",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc ChangeArray1*(this: var TFunction_HArray1OfDataMapOfGUIDDriver): var TFunction_Array1OfDataMapOfGUIDDriver {.
    importcpp: "ChangeArray1",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
type
  TFunction_HArray1OfDataMapOfGUIDDriverbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver::get_type_name(@)", header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "TFunction_HArray1OfDataMapOfGUIDDriver::get_type_descriptor(@)",
    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}
proc DynamicType*(this: TFunction_HArray1OfDataMapOfGUIDDriver): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TFunction_HArray1OfDataMapOfGUIDDriver.hxx".}