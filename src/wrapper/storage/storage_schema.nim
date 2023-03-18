import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types
import storage_types



##  Created on: 1996-12-03
##  Created by: Christophe LEYNADIER
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





proc newStorageSchema*(): StorageSchema {.cdecl, constructor,
                                       importcpp: "Storage_Schema(@)",
                                       header: "Storage_Schema.hxx".}
proc setVersion*(this: var StorageSchema; aVersion: TCollectionAsciiString) {.cdecl,
    importcpp: "SetVersion", header: "Storage_Schema.hxx".}
proc version*(this: StorageSchema): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Version", header: "Storage_Schema.hxx".}
proc setName*(this: var StorageSchema; aSchemaName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetName", header: "Storage_Schema.hxx".}
proc name*(this: StorageSchema): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "Storage_Schema.hxx".}
proc write*(this: StorageSchema; s: Handle[StorageBaseDriver];
           aData: Handle[StorageData]) {.noSideEffect, cdecl, importcpp: "Write",
                                       header: "Storage_Schema.hxx".}
proc iCreationDate*(): TCollectionAsciiString {.cdecl,
    importcpp: "Storage_Schema::ICreationDate(@)", header: "Storage_Schema.hxx".}
proc checkTypeMigration*(theTypeName: TCollectionAsciiString;
                        theNewName: var TCollectionAsciiString): bool {.cdecl,
    importcpp: "Storage_Schema::CheckTypeMigration(@)",
    header: "Storage_Schema.hxx".}
proc addReadUnknownTypeCallBack*(this: var StorageSchema;
                                aTypeName: TCollectionAsciiString;
                                aCallBack: Handle[StorageCallBack]) {.cdecl,
    importcpp: "AddReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc removeReadUnknownTypeCallBack*(this: var StorageSchema;
                                   aTypeName: TCollectionAsciiString) {.cdecl,
    importcpp: "RemoveReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc installedCallBackList*(this: StorageSchema): Handle[
    TColStdHSequenceOfAsciiString] {.noSideEffect, cdecl,
                                    importcpp: "InstalledCallBackList",
                                    header: "Storage_Schema.hxx".}
proc clearCallBackList*(this: var StorageSchema) {.cdecl,
    importcpp: "ClearCallBackList", header: "Storage_Schema.hxx".}
proc useDefaultCallBack*(this: var StorageSchema) {.cdecl,
    importcpp: "UseDefaultCallBack", header: "Storage_Schema.hxx".}
proc dontUseDefaultCallBack*(this: var StorageSchema) {.cdecl,
    importcpp: "DontUseDefaultCallBack", header: "Storage_Schema.hxx".}
proc isUsingDefaultCallBack*(this: StorageSchema): bool {.noSideEffect, cdecl,
    importcpp: "IsUsingDefaultCallBack", header: "Storage_Schema.hxx".}
proc setDefaultCallBack*(this: var StorageSchema; f: Handle[StorageCallBack]) {.cdecl,
    importcpp: "SetDefaultCallBack", header: "Storage_Schema.hxx".}
proc resetDefaultCallBack*(this: var StorageSchema) {.cdecl,
    importcpp: "ResetDefaultCallBack", header: "Storage_Schema.hxx".}
proc defaultCallBack*(this: StorageSchema): Handle[StorageCallBack] {.noSideEffect,
    cdecl, importcpp: "DefaultCallBack", header: "Storage_Schema.hxx".}
proc writePersistentObjectHeader*(this: var StorageSchema;
                                 sp: Handle[StandardPersistent];
                                 theDriver: Handle[StorageBaseDriver]) {.cdecl,
    importcpp: "WritePersistentObjectHeader", header: "Storage_Schema.hxx".}
proc writePersistentReference*(this: var StorageSchema;
                              sp: Handle[StandardPersistent];
                              theDriver: Handle[StorageBaseDriver]) {.cdecl,
    importcpp: "WritePersistentReference", header: "Storage_Schema.hxx".}
proc addPersistent*(this: StorageSchema; sp: Handle[StandardPersistent];
                   tName: cstring): bool {.noSideEffect, cdecl,
                                        importcpp: "AddPersistent",
                                        header: "Storage_Schema.hxx".}
proc persistentToAdd*(this: StorageSchema; sp: Handle[StandardPersistent]): bool {.
    noSideEffect, cdecl, importcpp: "PersistentToAdd", header: "Storage_Schema.hxx".}

