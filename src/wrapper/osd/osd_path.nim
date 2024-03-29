import osd_types
#import ../selectmgr/selectmgr_types
import ../tcollection/tcollection_types



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



proc newOSD_Path*(): OSD_Path {.cdecl, constructor, importcpp: "OSD_Path(@)",
                             header: "OSD_Path.hxx".}
proc newOSD_Path*(aDependentName: TCollectionAsciiString;
                 aSysType: OSD_SysType = oSD_Default): OSD_Path {.cdecl, constructor,
    importcpp: "OSD_Path(@)", header: "OSD_Path.hxx".}
proc newOSD_Path*(aNode: TCollectionAsciiString; aUsername: TCollectionAsciiString;
                 aPassword: TCollectionAsciiString; aDisk: TCollectionAsciiString;
                 aTrek: TCollectionAsciiString; aName: TCollectionAsciiString;
                 anExtension: TCollectionAsciiString): OSD_Path {.cdecl,
    constructor, importcpp: "OSD_Path(@)", header: "OSD_Path.hxx".}
proc values*(this: OSD_Path; aNode: var TCollectionAsciiString;
            aUsername: var TCollectionAsciiString;
            aPassword: var TCollectionAsciiString;
            aDisk: var TCollectionAsciiString; aTrek: var TCollectionAsciiString;
            aName: var TCollectionAsciiString;
            anExtension: var TCollectionAsciiString) {.noSideEffect, cdecl,
    importcpp: "Values", header: "OSD_Path.hxx".}
proc setValues*(this: var OSD_Path; aNode: TCollectionAsciiString;
               aUsername: TCollectionAsciiString;
               aPassword: TCollectionAsciiString; aDisk: TCollectionAsciiString;
               aTrek: TCollectionAsciiString; aName: TCollectionAsciiString;
               anExtension: TCollectionAsciiString) {.cdecl,
    importcpp: "SetValues", header: "OSD_Path.hxx".}
proc systemName*(this: OSD_Path; fullName: var TCollectionAsciiString;
                aType: OSD_SysType = oSD_Default) {.noSideEffect, cdecl,
    importcpp: "SystemName", header: "OSD_Path.hxx".}
proc expandedName*(this: var OSD_Path; aName: var TCollectionAsciiString) {.cdecl,
    importcpp: "ExpandedName", header: "OSD_Path.hxx".}
proc isValid*(theDependentName: TCollectionAsciiString;
             theSysType: OSD_SysType = oSD_Default): bool {.cdecl,
    importcpp: "OSD_Path::IsValid(@)", header: "OSD_Path.hxx".}
proc upTrek*(this: var OSD_Path) {.cdecl, importcpp: "UpTrek", header: "OSD_Path.hxx".}
proc downTrek*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "DownTrek", header: "OSD_Path.hxx".}
proc trekLength*(this: OSD_Path): cint {.noSideEffect, cdecl, importcpp: "TrekLength",
                                     header: "OSD_Path.hxx".}
proc removeATrek*(this: var OSD_Path; where: cint) {.cdecl, importcpp: "RemoveATrek",
    header: "OSD_Path.hxx".}
proc removeATrek*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "RemoveATrek", header: "OSD_Path.hxx".}
proc trekValue*(this: OSD_Path; where: cint): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "TrekValue", header: "OSD_Path.hxx".}
proc insertATrek*(this: var OSD_Path; aName: TCollectionAsciiString; where: cint) {.
    cdecl, importcpp: "InsertATrek", header: "OSD_Path.hxx".}
proc node*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Node", header: "OSD_Path.hxx".}
proc userName*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "UserName", header: "OSD_Path.hxx".}
proc password*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Password", header: "OSD_Path.hxx".}
proc disk*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Disk", header: "OSD_Path.hxx".}
proc trek*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Trek", header: "OSD_Path.hxx".}
proc name*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "OSD_Path.hxx".}
proc extension*(this: OSD_Path): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Extension", header: "OSD_Path.hxx".}
proc setNode*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetNode", header: "OSD_Path.hxx".}
proc setUserName*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetUserName", header: "OSD_Path.hxx".}
proc setPassword*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetPassword", header: "OSD_Path.hxx".}
proc setDisk*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisk", header: "OSD_Path.hxx".}
proc setTrek*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTrek", header: "OSD_Path.hxx".}
proc setName*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetName", header: "OSD_Path.hxx".}
proc setExtension*(this: var OSD_Path; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetExtension", header: "OSD_Path.hxx".}
proc locateExecFile*(this: var OSD_Path; aPath: var OSD_Path): bool {.cdecl,
    importcpp: "LocateExecFile", header: "OSD_Path.hxx".}
proc relativePath*(dirPath: TCollectionAsciiString;
                  absFilePath: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, importcpp: "OSD_Path::RelativePath(@)", header: "OSD_Path.hxx".}
proc absolutePath*(dirPath: TCollectionAsciiString;
                  relFilePath: TCollectionAsciiString): TCollectionAsciiString {.
    cdecl, importcpp: "OSD_Path::AbsolutePath(@)", header: "OSD_Path.hxx".}
proc folderAndFileFromPath*(theFilePath: TCollectionAsciiString;
                           theFolder: var TCollectionAsciiString;
                           theFileName: var TCollectionAsciiString) {.cdecl,
    importcpp: "OSD_Path::FolderAndFileFromPath(@)", header: "OSD_Path.hxx".}
proc fileNameAndExtension*(theFilePath: TCollectionAsciiString;
                          theName: var TCollectionAsciiString;
                          theExtension: var TCollectionAsciiString) {.cdecl,
    importcpp: "OSD_Path::FileNameAndExtension(@)", header: "OSD_Path.hxx".}
proc isDosPath*(thePath: cstring): bool {.cdecl, importcpp: "OSD_Path::IsDosPath(@)",
                                      header: "OSD_Path.hxx".}
proc isNtExtendedPath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsNtExtendedPath(@)", header: "OSD_Path.hxx".}
proc isUncPath*(thePath: cstring): bool {.cdecl, importcpp: "OSD_Path::IsUncPath(@)",
                                      header: "OSD_Path.hxx".}
proc isUncExtendedPath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsUncExtendedPath(@)", header: "OSD_Path.hxx".}
proc isUnixPath*(thePath: cstring): bool {.cdecl,
                                       importcpp: "OSD_Path::IsUnixPath(@)",
                                       header: "OSD_Path.hxx".}
proc isContentProtocolPath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsContentProtocolPath(@)", header: "OSD_Path.hxx".}
proc isRemoteProtocolPath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsRemoteProtocolPath(@)", header: "OSD_Path.hxx".}
proc isRelativePath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsRelativePath(@)", header: "OSD_Path.hxx".}
proc isAbsolutePath*(thePath: cstring): bool {.cdecl,
    importcpp: "OSD_Path::IsAbsolutePath(@)", header: "OSD_Path.hxx".}

