##  Created on: 1997-03-03
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
  ../Standard/Standard, ../Standard/Standard_Type, Storage_CallBack

discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_DefaultCallBack"
discard "forward decl of Storage_DefaultCallBack"
type
  Handle_Storage_DefaultCallBack* = handle[Storage_DefaultCallBack]
  Storage_DefaultCallBack* {.importcpp: "Storage_DefaultCallBack",
                            header: "Storage_DefaultCallBack.hxx", bycopy.} = object of Storage_CallBack


proc constructStorage_DefaultCallBack*(): Storage_DefaultCallBack {.constructor,
    importcpp: "Storage_DefaultCallBack(@)", header: "Storage_DefaultCallBack.hxx".}
proc New*(this: Storage_DefaultCallBack): handle[Standard_Persistent] {.
    noSideEffect, importcpp: "New", header: "Storage_DefaultCallBack.hxx".}
proc Add*(this: Storage_DefaultCallBack; thePers: handle[Standard_Persistent];
         theSchema: handle[Storage_Schema]) {.noSideEffect, importcpp: "Add",
    header: "Storage_DefaultCallBack.hxx".}
proc Write*(this: Storage_DefaultCallBack; thePers: handle[Standard_Persistent];
           theDriver: handle[Storage_BaseDriver];
           theSchema: handle[Storage_Schema]) {.noSideEffect, importcpp: "Write",
    header: "Storage_DefaultCallBack.hxx".}
proc Read*(this: Storage_DefaultCallBack; thePers: handle[Standard_Persistent];
          theDriver: handle[Storage_BaseDriver]; theSchema: handle[Storage_Schema]) {.
    noSideEffect, importcpp: "Read", header: "Storage_DefaultCallBack.hxx".}
type
  Storage_DefaultCallBackbase_type* = Storage_CallBack

proc get_type_name*(): cstring {.importcpp: "Storage_DefaultCallBack::get_type_name(@)",
                              header: "Storage_DefaultCallBack.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_DefaultCallBack::get_type_descriptor(@)",
    header: "Storage_DefaultCallBack.hxx".}
proc DynamicType*(this: Storage_DefaultCallBack): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Storage_DefaultCallBack.hxx".}