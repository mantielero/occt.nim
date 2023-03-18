import ../standard/standard_types
import ../tcollection/tcollection_types
import storage_types



##  Created on: 1997-02-24
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





proc newStorageRoot*(): StorageRoot {.cdecl, constructor,
                                   importcpp: "Storage_Root(@)",
                                   header: "Storage_Root.hxx".}
proc newStorageRoot*(theName: TCollectionAsciiString;
                    theObject: Handle[StandardPersistent]): StorageRoot {.cdecl,
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc newStorageRoot*(theName: TCollectionAsciiString; theRef: cint;
                    theType: TCollectionAsciiString): StorageRoot {.cdecl,
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc setName*(this: var StorageRoot; theName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetName", header: "Storage_Root.hxx".}
proc name*(this: StorageRoot): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "Storage_Root.hxx".}
proc setObject*(this: var StorageRoot; anObject: Handle[StandardPersistent]) {.cdecl,
    importcpp: "SetObject", header: "Storage_Root.hxx".}
proc `object`*(this: StorageRoot): Handle[StandardPersistent] {.noSideEffect, cdecl,
    importcpp: "Object", header: "Storage_Root.hxx".}
proc `type`*(this: StorageRoot): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Type", header: "Storage_Root.hxx".}
proc setReference*(this: var StorageRoot; aRef: cint) {.cdecl,
    importcpp: "SetReference", header: "Storage_Root.hxx".}
proc reference*(this: StorageRoot): cint {.noSideEffect, cdecl,
                                       importcpp: "Reference",
                                       header: "Storage_Root.hxx".}
proc setType*(this: var StorageRoot; aType: TCollectionAsciiString) {.cdecl,
    importcpp: "SetType", header: "Storage_Root.hxx".}

