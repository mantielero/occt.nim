##  Created on: 1996-04-30
##  Created by: cle
##  Copyright (c) 1996-1999 Matra Datavision
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
  StorageHArrayOfCallBack* {.importcpp: "Storage_HArrayOfCallBack",
                            header: "Storage_HArrayOfCallBack.hxx", bycopy.} = object of StorageArrayOfCallBack


proc constructStorageHArrayOfCallBack*(theLower: int; theUpper: int): StorageHArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc constructStorageHArrayOfCallBack*(theLower: int; theUpper: int;
                                      theValue: ValueType): StorageHArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc constructStorageHArrayOfCallBack*(theOther: StorageArrayOfCallBack): StorageHArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc array1*(this: StorageHArrayOfCallBack): StorageArrayOfCallBack {.noSideEffect,
    importcpp: "Array1", header: "Storage_HArrayOfCallBack.hxx".}
proc changeArray1*(this: var StorageHArrayOfCallBack): var StorageArrayOfCallBack {.
    importcpp: "ChangeArray1", header: "Storage_HArrayOfCallBack.hxx".}
type
  StorageHArrayOfCallBackbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Storage_HArrayOfCallBack::get_type_name(@)",
                            header: "Storage_HArrayOfCallBack.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_HArrayOfCallBack::get_type_descriptor(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc dynamicType*(this: StorageHArrayOfCallBack): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Storage_HArrayOfCallBack.hxx".}
