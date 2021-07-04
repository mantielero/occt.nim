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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Storage/Storage_Error, ../Storage/Storage_OpenMode,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_Data"
discard "forward decl of OSD_Path"
discard "forward decl of OSD_FileIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of Resource_Manager"
type
  UTL* {.importcpp: "UTL", header: "UTL.hxx", bycopy.} = object


proc xgetenv*(aCString: Standard_CString): TCollection_ExtendedString {.
    importcpp: "UTL::xgetenv(@)", header: "UTL.hxx".}
proc OpenFile*(aFile: handle[Storage_BaseDriver];
              aName: TCollection_ExtendedString; aMode: Storage_OpenMode): Storage_Error {.
    importcpp: "UTL::OpenFile(@)", header: "UTL.hxx".}
proc AddToUserInfo*(aData: handle[Storage_Data]; anInfo: TCollection_ExtendedString) {.
    importcpp: "UTL::AddToUserInfo(@)", header: "UTL.hxx".}
proc Path*(aFileName: TCollection_ExtendedString): OSD_Path {.
    importcpp: "UTL::Path(@)", header: "UTL.hxx".}
proc Disk*(aPath: OSD_Path): TCollection_ExtendedString {.importcpp: "UTL::Disk(@)",
    header: "UTL.hxx".}
proc Trek*(aPath: OSD_Path): TCollection_ExtendedString {.importcpp: "UTL::Trek(@)",
    header: "UTL.hxx".}
proc Name*(aPath: OSD_Path): TCollection_ExtendedString {.importcpp: "UTL::Name(@)",
    header: "UTL.hxx".}
proc Extension*(aPath: OSD_Path): TCollection_ExtendedString {.
    importcpp: "UTL::Extension(@)", header: "UTL.hxx".}
proc FileIterator*(aPath: OSD_Path; aMask: TCollection_ExtendedString): OSD_FileIterator {.
    importcpp: "UTL::FileIterator(@)", header: "UTL.hxx".}
proc Extension*(aFileName: TCollection_ExtendedString): TCollection_ExtendedString {.
    importcpp: "UTL::Extension(@)", header: "UTL.hxx".}
proc LocalHost*(): TCollection_ExtendedString {.importcpp: "UTL::LocalHost(@)",
    header: "UTL.hxx".}
proc ExtendedString*(anAsciiString: TCollection_AsciiString): TCollection_ExtendedString {.
    importcpp: "UTL::ExtendedString(@)", header: "UTL.hxx".}
proc GUID*(anXString: TCollection_ExtendedString): Standard_GUID {.
    importcpp: "UTL::GUID(@)", header: "UTL.hxx".}
proc Find*(aResourceManager: handle[Resource_Manager];
          aResourceName: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "UTL::Find(@)", header: "UTL.hxx".}
proc Value*(aResourceManager: handle[Resource_Manager];
           aResourceName: TCollection_ExtendedString): TCollection_ExtendedString {.
    importcpp: "UTL::Value(@)", header: "UTL.hxx".}
proc IntegerValue*(anExtendedString: TCollection_ExtendedString): Standard_Integer {.
    importcpp: "UTL::IntegerValue(@)", header: "UTL.hxx".}
proc CString*(anExtendedString: TCollection_ExtendedString): Standard_CString {.
    importcpp: "UTL::CString(@)", header: "UTL.hxx".}
proc IsReadOnly*(aFileName: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "UTL::IsReadOnly(@)", header: "UTL.hxx".}