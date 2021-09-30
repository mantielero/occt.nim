##  Created on: 1997-02-06
##  Created by: Kernel
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_InternalData"
discard "forward decl of Storage_InternalData"
type
  HandleC1C1* = Handle[StorageInternalData]
  StorageInternalData* {.importcpp: "Storage_InternalData",
                        header: "Storage_InternalData.hxx", bycopy.} = object of StandardTransient


proc readArray*(this: var StorageInternalData): Handle[StorageHPArray] {.
    importcpp: "ReadArray", header: "Storage_InternalData.hxx".}
proc constructStorageInternalData*(): StorageInternalData {.constructor,
    importcpp: "Storage_InternalData(@)", header: "Storage_InternalData.hxx".}
proc clear*(this: var StorageInternalData) {.importcpp: "Clear",
    header: "Storage_InternalData.hxx".}
type
  StorageInternalDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_InternalData::get_type_name(@)",
                            header: "Storage_InternalData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_InternalData::get_type_descriptor(@)",
    header: "Storage_InternalData.hxx".}
proc dynamicType*(this: StorageInternalData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_InternalData.hxx".}

























