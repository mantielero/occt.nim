import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types
import storage_types



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



proc newStorageTypeData*(): StorageTypeData {.cdecl, constructor,
    importcpp: "Storage_TypeData(@)", header: "Storage_TypeData.hxx".}
proc read*(this: var StorageTypeData; theDriver: Handle[StorageBaseDriver]): bool {.
    cdecl, importcpp: "Read", header: "Storage_TypeData.hxx".}
proc numberOfTypes*(this: StorageTypeData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfTypes", header: "Storage_TypeData.hxx".}
proc addType*(this: var StorageTypeData; aName: TCollectionAsciiString; aTypeNum: cint) {.
    cdecl, importcpp: "AddType", header: "Storage_TypeData.hxx".}
proc `type`*(this: StorageTypeData; aTypeNum: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc `type`*(this: StorageTypeData; aTypeName: TCollectionAsciiString): cint {.
    noSideEffect, cdecl, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc isType*(this: StorageTypeData; aName: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsType", header: "Storage_TypeData.hxx".}
proc types*(this: StorageTypeData): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, cdecl, importcpp: "Types", header: "Storage_TypeData.hxx".}
proc errorStatus*(this: StorageTypeData): StorageError {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", header: "Storage_TypeData.hxx".}
proc errorStatusExtension*(this: StorageTypeData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ErrorStatusExtension",
    header: "Storage_TypeData.hxx".}
proc clearErrorStatus*(this: var StorageTypeData) {.cdecl,
    importcpp: "ClearErrorStatus", header: "Storage_TypeData.hxx".}
proc clear*(this: var StorageTypeData) {.cdecl, importcpp: "Clear",
                                     header: "Storage_TypeData.hxx".}

