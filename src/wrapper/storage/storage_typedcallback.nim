import ../standard/standard_types
import ../tcollection/tcollection_types
import storage_types



##  Created on: 1997-02-28
##  Created by: Christophe LEYNADIER
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



proc newStorageTypedCallBack*(): StorageTypedCallBack {.cdecl, constructor,
    importcpp: "Storage_TypedCallBack(@)", header: "Storage_TypedCallBack.hxx".}
proc newStorageTypedCallBack*(aTypeName: TCollectionAsciiString;
                             aCallBack: Handle[StorageCallBack]): StorageTypedCallBack {.
    cdecl, constructor, importcpp: "Storage_TypedCallBack(@)",
    header: "Storage_TypedCallBack.hxx".}
proc setType*(this: var StorageTypedCallBack; aType: TCollectionAsciiString) {.cdecl,
    importcpp: "SetType", header: "Storage_TypedCallBack.hxx".}
proc `type`*(this: StorageTypedCallBack): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Type", header: "Storage_TypedCallBack.hxx".}
proc setCallBack*(this: var StorageTypedCallBack; aCallBack: Handle[StorageCallBack]) {.
    cdecl, importcpp: "SetCallBack", header: "Storage_TypedCallBack.hxx".}
proc callBack*(this: StorageTypedCallBack): Handle[StorageCallBack] {.noSideEffect,
    cdecl, importcpp: "CallBack", header: "Storage_TypedCallBack.hxx".}
proc setIndex*(this: var StorageTypedCallBack; anIndex: cint) {.cdecl,
    importcpp: "SetIndex", header: "Storage_TypedCallBack.hxx".}
proc index*(this: StorageTypedCallBack): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "Storage_TypedCallBack.hxx".}

