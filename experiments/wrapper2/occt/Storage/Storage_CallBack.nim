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

discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_CallBack"
discard "forward decl of Storage_CallBack"
type
  HandleStorageCallBack* = Handle[StorageCallBack]
  StorageCallBack* {.importcpp: "Storage_CallBack", header: "Storage_CallBack.hxx",
                    bycopy.} = object of StandardTransient


proc new*(this: StorageCallBack): Handle[StandardPersistent] {.noSideEffect,
    importcpp: "New", header: "Storage_CallBack.hxx".}
proc add*(this: StorageCallBack; aPers: Handle[StandardPersistent];
         aSchema: Handle[StorageSchema]) {.noSideEffect, importcpp: "Add",
    header: "Storage_CallBack.hxx".}
proc write*(this: StorageCallBack; aPers: Handle[StandardPersistent];
           aDriver: Handle[StorageBaseDriver]; aSchema: Handle[StorageSchema]) {.
    noSideEffect, importcpp: "Write", header: "Storage_CallBack.hxx".}
proc read*(this: StorageCallBack; aPers: Handle[StandardPersistent];
          aDriver: Handle[StorageBaseDriver]; aSchema: Handle[StorageSchema]) {.
    noSideEffect, importcpp: "Read", header: "Storage_CallBack.hxx".}
type
  StorageCallBackbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_CallBack::get_type_name(@)",
                            header: "Storage_CallBack.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_CallBack::get_type_descriptor(@)",
    header: "Storage_CallBack.hxx".}
proc dynamicType*(this: StorageCallBack): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_CallBack.hxx".}
