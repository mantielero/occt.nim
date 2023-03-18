import ../standard/standard_types
import storage_types



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



proc newStorageDefaultCallBack*(): StorageDefaultCallBack {.cdecl, constructor,
    importcpp: "Storage_DefaultCallBack(@)", header: "Storage_DefaultCallBack.hxx".}
proc new*(this: StorageDefaultCallBack): Handle[StandardPersistent] {.noSideEffect,
    cdecl, importcpp: "New", header: "Storage_DefaultCallBack.hxx".}
proc add*(this: StorageDefaultCallBack; thePers: Handle[StandardPersistent];
         theSchema: Handle[StorageSchema]) {.noSideEffect, cdecl, importcpp: "Add",
    header: "Storage_DefaultCallBack.hxx".}
proc write*(this: StorageDefaultCallBack; thePers: Handle[StandardPersistent];
           theDriver: Handle[StorageBaseDriver]; theSchema: Handle[StorageSchema]) {.
    noSideEffect, cdecl, importcpp: "Write", header: "Storage_DefaultCallBack.hxx".}
proc read*(this: StorageDefaultCallBack; thePers: Handle[StandardPersistent];
          theDriver: Handle[StorageBaseDriver]; theSchema: Handle[StorageSchema]) {.
    noSideEffect, cdecl, importcpp: "Read", header: "Storage_DefaultCallBack.hxx".}

