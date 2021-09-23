##  Created on: 1997-02-27
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_CallBack"
discard "forward decl of Storage_CallBack"
type
  Handle_Storage_CallBack* = handle[Storage_CallBack]
  Storage_CallBack* {.importcpp: "Storage_CallBack",
                     header: "Storage_CallBack.hxx", bycopy.} = object of Standard_Transient


proc New*(this: Storage_CallBack): handle[Standard_Persistent] {.noSideEffect,
    importcpp: "New", header: "Storage_CallBack.hxx".}
proc Add*(this: Storage_CallBack; aPers: handle[Standard_Persistent];
         aSchema: handle[Storage_Schema]) {.noSideEffect, importcpp: "Add",
    header: "Storage_CallBack.hxx".}
proc Write*(this: Storage_CallBack; aPers: handle[Standard_Persistent];
           aDriver: handle[Storage_BaseDriver]; aSchema: handle[Storage_Schema]) {.
    noSideEffect, importcpp: "Write", header: "Storage_CallBack.hxx".}
proc Read*(this: Storage_CallBack; aPers: handle[Standard_Persistent];
          aDriver: handle[Storage_BaseDriver]; aSchema: handle[Storage_Schema]) {.
    noSideEffect, importcpp: "Read", header: "Storage_CallBack.hxx".}
type
  Storage_CallBackbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_CallBack::get_type_name(@)",
                              header: "Storage_CallBack.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_CallBack::get_type_descriptor(@)",
    header: "Storage_CallBack.hxx".}
proc DynamicType*(this: Storage_CallBack): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_CallBack.hxx".}