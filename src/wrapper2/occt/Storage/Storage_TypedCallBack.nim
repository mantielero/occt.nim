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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of Storage_CallBack"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_TypedCallBack"
discard "forward decl of Storage_TypedCallBack"
type
  Handle_Storage_TypedCallBack* = handle[Storage_TypedCallBack]
  Storage_TypedCallBack* {.importcpp: "Storage_TypedCallBack",
                          header: "Storage_TypedCallBack.hxx", bycopy.} = object of Standard_Transient


proc constructStorage_TypedCallBack*(): Storage_TypedCallBack {.constructor,
    importcpp: "Storage_TypedCallBack(@)", header: "Storage_TypedCallBack.hxx".}
proc constructStorage_TypedCallBack*(aTypeName: TCollection_AsciiString;
                                    aCallBack: handle[Storage_CallBack]): Storage_TypedCallBack {.
    constructor, importcpp: "Storage_TypedCallBack(@)",
    header: "Storage_TypedCallBack.hxx".}
proc SetType*(this: var Storage_TypedCallBack; aType: TCollection_AsciiString) {.
    importcpp: "SetType", header: "Storage_TypedCallBack.hxx".}
proc Type*(this: Storage_TypedCallBack): TCollection_AsciiString {.noSideEffect,
    importcpp: "Type", header: "Storage_TypedCallBack.hxx".}
proc SetCallBack*(this: var Storage_TypedCallBack;
                 aCallBack: handle[Storage_CallBack]) {.importcpp: "SetCallBack",
    header: "Storage_TypedCallBack.hxx".}
proc CallBack*(this: Storage_TypedCallBack): handle[Storage_CallBack] {.
    noSideEffect, importcpp: "CallBack", header: "Storage_TypedCallBack.hxx".}
proc SetIndex*(this: var Storage_TypedCallBack; anIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "Storage_TypedCallBack.hxx".}
proc Index*(this: Storage_TypedCallBack): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "Storage_TypedCallBack.hxx".}
type
  Storage_TypedCallBackbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_TypedCallBack::get_type_name(@)",
                              header: "Storage_TypedCallBack.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_TypedCallBack::get_type_descriptor(@)",
    header: "Storage_TypedCallBack.hxx".}
proc DynamicType*(this: Storage_TypedCallBack): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Storage_TypedCallBack.hxx".}