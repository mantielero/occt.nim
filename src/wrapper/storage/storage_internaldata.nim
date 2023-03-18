import storage_types
import ../standard/standard_types


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



proc readArray*(this: var StorageInternalData): var Handle[StorageHPArray] {.cdecl,
    importcpp: "ReadArray", header: "Storage_InternalData.hxx".}
proc newStorageInternalData*(): StorageInternalData {.cdecl, constructor,
    importcpp: "Storage_InternalData(@)", header: "Storage_InternalData.hxx".}
proc clear*(this: var StorageInternalData) {.cdecl, importcpp: "Clear",
    header: "Storage_InternalData.hxx".}

