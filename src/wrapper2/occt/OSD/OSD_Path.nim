##  Created on: 1992-02-18
##  Created by: Stephan GARNAUD (ARM)
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString, OSD_SysType

type
  OSD_Path* {.importcpp: "OSD_Path", header: "OSD_Path.hxx", bycopy.} = object ## ! Creates a Path object
                                                                       ## initialized to an empty string.
                                                                       ## ! i.e. current
                                                                       ## directory.
                                                                       ## ! Returns the relative file path between the absolute directory
                                                                       ## ! path <DirPath>  and the absolute file path
                                                                       ## <AbsFilePath>.
                                                                       ## ! If <DirPath> starts with "/", paths are handled as
                                                                       ## ! on Unix, if it starts with a letter followed by ":", as on
                                                                       ## ! WNT. In
                                                                       ## particular on WNT directory names are not key
                                                                       ## sensitive.
                                                                       ## ! If handling fails, an empty string is returned.


proc constructOSD_Path*(): OSD_Path {.constructor, importcpp: "OSD_Path(@)",
                                   header: "OSD_Path.hxx".}
proc constructOSD_Path*(aDependentName: TCollection_AsciiString;
                       aSysType: OSD_SysType = OSD_Default): OSD_Path {.constructor,
    importcpp: "OSD_Path(@)", header: "OSD_Path.hxx".}
proc constructOSD_Path*(aNode: TCollection_AsciiString;
                       aUsername: TCollection_AsciiString;
                       aPassword: TCollection_AsciiString;
                       aDisk: TCollection_AsciiString;
                       aTrek: TCollection_AsciiString;
                       aName: TCollection_AsciiString;
                       anExtension: TCollection_AsciiString): OSD_Path {.
    constructor, importcpp: "OSD_Path(@)", header: "OSD_Path.hxx".}
proc Values*(this: OSD_Path; aNode: var TCollection_AsciiString;
            aUsername: var TCollection_AsciiString;
            aPassword: var TCollection_AsciiString;
            aDisk: var TCollection_AsciiString; aTrek: var TCollection_AsciiString;
            aName: var TCollection_AsciiString;
            anExtension: var TCollection_AsciiString) {.noSideEffect,
    importcpp: "Values", header: "OSD_Path.hxx".}
proc SetValues*(this: var OSD_Path; aNode: TCollection_AsciiString;
               aUsername: TCollection_AsciiString;
               aPassword: TCollection_AsciiString; aDisk: TCollection_AsciiString;
               aTrek: TCollection_AsciiString; aName: TCollection_AsciiString;
               anExtension: TCollection_AsciiString) {.importcpp: "SetValues",
    header: "OSD_Path.hxx".}
proc SystemName*(this: OSD_Path; FullName: var TCollection_AsciiString;
                aType: OSD_SysType = OSD_Default) {.noSideEffect,
    importcpp: "SystemName", header: "OSD_Path.hxx".}
proc ExpandedName*(this: var OSD_Path; aName: var TCollection_AsciiString) {.
    importcpp: "ExpandedName", header: "OSD_Path.hxx".}
proc IsValid*(theDependentName: TCollection_AsciiString;
             theSysType: OSD_SysType = OSD_Default): Standard_Boolean {.
    importcpp: "OSD_Path::IsValid(@)", header: "OSD_Path.hxx".}
proc UpTrek*(this: var OSD_Path) {.importcpp: "UpTrek", header: "OSD_Path.hxx".}
proc DownTrek*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "DownTrek", header: "OSD_Path.hxx".}
proc TrekLength*(this: OSD_Path): Standard_Integer {.noSideEffect,
    importcpp: "TrekLength", header: "OSD_Path.hxx".}
proc RemoveATrek*(this: var OSD_Path; where: Standard_Integer) {.
    importcpp: "RemoveATrek", header: "OSD_Path.hxx".}
proc RemoveATrek*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "RemoveATrek", header: "OSD_Path.hxx".}
proc TrekValue*(this: OSD_Path; where: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "TrekValue", header: "OSD_Path.hxx".}
proc InsertATrek*(this: var OSD_Path; aName: TCollection_AsciiString;
                 where: Standard_Integer) {.importcpp: "InsertATrek",
    header: "OSD_Path.hxx".}
proc Node*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Node", header: "OSD_Path.hxx".}
proc UserName*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "UserName", header: "OSD_Path.hxx".}
proc Password*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Password", header: "OSD_Path.hxx".}
proc Disk*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Disk", header: "OSD_Path.hxx".}
proc Trek*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Trek", header: "OSD_Path.hxx".}
proc Name*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "OSD_Path.hxx".}
proc Extension*(this: OSD_Path): TCollection_AsciiString {.noSideEffect,
    importcpp: "Extension", header: "OSD_Path.hxx".}
proc SetNode*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetNode", header: "OSD_Path.hxx".}
proc SetUserName*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetUserName", header: "OSD_Path.hxx".}
proc SetPassword*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetPassword", header: "OSD_Path.hxx".}
proc SetDisk*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetDisk", header: "OSD_Path.hxx".}
proc SetTrek*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetTrek", header: "OSD_Path.hxx".}
proc SetName*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "OSD_Path.hxx".}
proc SetExtension*(this: var OSD_Path; aName: TCollection_AsciiString) {.
    importcpp: "SetExtension", header: "OSD_Path.hxx".}
proc LocateExecFile*(this: var OSD_Path; aPath: var OSD_Path): Standard_Boolean {.
    importcpp: "LocateExecFile", header: "OSD_Path.hxx".}
proc RelativePath*(DirPath: TCollection_AsciiString;
                  AbsFilePath: TCollection_AsciiString): TCollection_AsciiString {.
    importcpp: "OSD_Path::RelativePath(@)", header: "OSD_Path.hxx".}
proc AbsolutePath*(DirPath: TCollection_AsciiString;
                  RelFilePath: TCollection_AsciiString): TCollection_AsciiString {.
    importcpp: "OSD_Path::AbsolutePath(@)", header: "OSD_Path.hxx".}
proc FolderAndFileFromPath*(theFilePath: TCollection_AsciiString;
                           theFolder: var TCollection_AsciiString;
                           theFileName: var TCollection_AsciiString) {.
    importcpp: "OSD_Path::FolderAndFileFromPath(@)", header: "OSD_Path.hxx".}
proc FileNameAndExtension*(theFilePath: TCollection_AsciiString;
                          theName: var TCollection_AsciiString;
                          theExtension: var TCollection_AsciiString) {.
    importcpp: "OSD_Path::FileNameAndExtension(@)", header: "OSD_Path.hxx".}
proc IsDosPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsDosPath(@)", header: "OSD_Path.hxx".}
proc IsNtExtendedPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsNtExtendedPath(@)", header: "OSD_Path.hxx".}
proc IsUncPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsUncPath(@)", header: "OSD_Path.hxx".}
proc IsUncExtendedPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsUncExtendedPath(@)", header: "OSD_Path.hxx".}
proc IsUnixPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsUnixPath(@)", header: "OSD_Path.hxx".}
proc IsContentProtocolPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsContentProtocolPath(@)", header: "OSD_Path.hxx".}
proc IsRemoteProtocolPath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsRemoteProtocolPath(@)", header: "OSD_Path.hxx".}
proc IsRelativePath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsRelativePath(@)", header: "OSD_Path.hxx".}
proc IsAbsolutePath*(thePath: cstring): Standard_Boolean {.
    importcpp: "OSD_Path::IsAbsolutePath(@)", header: "OSD_Path.hxx".}