import ../tcolstd/tcolstd_types
import storage_types



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



proc newStorageHArrayOfSchema*(theLower: cint; theUpper: cint): StorageHArrayOfSchema {.
    cdecl, constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc newStorageHArrayOfSchema*(theLower: cint; theUpper: cint; theValue: ValueType): StorageHArrayOfSchema {.
    cdecl, constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc newStorageHArrayOfSchema*(theOther: StorageArrayOfSchema): StorageHArrayOfSchema {.
    cdecl, constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc array1*(this: StorageHArrayOfSchema): StorageArrayOfSchema {.noSideEffect,
    cdecl, importcpp: "Array1", header: "Storage_HArrayOfSchema.hxx".}

