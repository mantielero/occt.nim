##  Created on: 1997-11-21
##  Created by: Mister rmi
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_Data"
discard "forward decl of OSD_Path"
discard "forward decl of OSD_FileIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of Resource_Manager"
type
  Utl* {.importcpp: "UTL", header: "UTL.hxx", bycopy.} = object


proc xgetenv*(aCString: StandardCString): TCollectionExtendedString {.
    importcpp: "UTL::xgetenv(@)", header: "UTL.hxx".}
proc openFile*(aFile: Handle[StorageBaseDriver]; aName: TCollectionExtendedString;
              aMode: StorageOpenMode): StorageError {.
    importcpp: "UTL::OpenFile(@)", header: "UTL.hxx".}
proc addToUserInfo*(aData: Handle[StorageData]; anInfo: TCollectionExtendedString) {.
    importcpp: "UTL::AddToUserInfo(@)", header: "UTL.hxx".}
proc path*(aFileName: TCollectionExtendedString): OSD_Path {.
    importcpp: "UTL::Path(@)", header: "UTL.hxx".}
proc disk*(aPath: OSD_Path): TCollectionExtendedString {.importcpp: "UTL::Disk(@)",
    header: "UTL.hxx".}
proc trek*(aPath: OSD_Path): TCollectionExtendedString {.importcpp: "UTL::Trek(@)",
    header: "UTL.hxx".}
proc name*(aPath: OSD_Path): TCollectionExtendedString {.importcpp: "UTL::Name(@)",
    header: "UTL.hxx".}
proc extension*(aPath: OSD_Path): TCollectionExtendedString {.
    importcpp: "UTL::Extension(@)", header: "UTL.hxx".}
proc fileIterator*(aPath: OSD_Path; aMask: TCollectionExtendedString): OSD_FileIterator {.
    importcpp: "UTL::FileIterator(@)", header: "UTL.hxx".}
proc extension*(aFileName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "UTL::Extension(@)", header: "UTL.hxx".}
proc localHost*(): TCollectionExtendedString {.importcpp: "UTL::LocalHost(@)",
    header: "UTL.hxx".}
proc extendedString*(anAsciiString: TCollectionAsciiString): TCollectionExtendedString {.
    importcpp: "UTL::ExtendedString(@)", header: "UTL.hxx".}
proc guid*(anXString: TCollectionExtendedString): StandardGUID {.
    importcpp: "UTL::GUID(@)", header: "UTL.hxx".}
proc find*(aResourceManager: Handle[ResourceManager];
          aResourceName: TCollectionExtendedString): bool {.
    importcpp: "UTL::Find(@)", header: "UTL.hxx".}
proc value*(aResourceManager: Handle[ResourceManager];
           aResourceName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "UTL::Value(@)", header: "UTL.hxx".}
proc integerValue*(anExtendedString: TCollectionExtendedString): int {.
    importcpp: "UTL::IntegerValue(@)", header: "UTL.hxx".}
proc cString*(anExtendedString: TCollectionExtendedString): StandardCString {.
    importcpp: "UTL::CString(@)", header: "UTL.hxx".}
proc isReadOnly*(aFileName: TCollectionExtendedString): bool {.
    importcpp: "UTL::IsReadOnly(@)", header: "UTL.hxx".}
