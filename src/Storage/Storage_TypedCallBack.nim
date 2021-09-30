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

discard "forward decl of Storage_CallBack"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_TypedCallBack"
discard "forward decl of Storage_TypedCallBack"
type
  HandleC1C1* = Handle[StorageTypedCallBack]
  StorageTypedCallBack* {.importcpp: "Storage_TypedCallBack",
                         header: "Storage_TypedCallBack.hxx", bycopy.} = object of StandardTransient


proc constructStorageTypedCallBack*(): StorageTypedCallBack {.constructor,
    importcpp: "Storage_TypedCallBack(@)", header: "Storage_TypedCallBack.hxx".}
proc constructStorageTypedCallBack*(aTypeName: TCollectionAsciiString;
                                   aCallBack: Handle[StorageCallBack]): StorageTypedCallBack {.
    constructor, importcpp: "Storage_TypedCallBack(@)",
    header: "Storage_TypedCallBack.hxx".}
proc setType*(this: var StorageTypedCallBack; aType: TCollectionAsciiString) {.
    importcpp: "SetType", header: "Storage_TypedCallBack.hxx".}
proc `type`*(this: StorageTypedCallBack): TCollectionAsciiString {.noSideEffect,
    importcpp: "Type", header: "Storage_TypedCallBack.hxx".}
proc setCallBack*(this: var StorageTypedCallBack; aCallBack: Handle[StorageCallBack]) {.
    importcpp: "SetCallBack", header: "Storage_TypedCallBack.hxx".}
proc callBack*(this: StorageTypedCallBack): Handle[StorageCallBack] {.noSideEffect,
    importcpp: "CallBack", header: "Storage_TypedCallBack.hxx".}
proc setIndex*(this: var StorageTypedCallBack; anIndex: cint) {.importcpp: "SetIndex",
    header: "Storage_TypedCallBack.hxx".}
proc index*(this: StorageTypedCallBack): cint {.noSideEffect, importcpp: "Index",
    header: "Storage_TypedCallBack.hxx".}
type
  StorageTypedCallBackbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_TypedCallBack::get_type_name(@)",
                            header: "Storage_TypedCallBack.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_TypedCallBack::get_type_descriptor(@)",
    header: "Storage_TypedCallBack.hxx".}
proc dynamicType*(this: StorageTypedCallBack): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_TypedCallBack.hxx".}

























