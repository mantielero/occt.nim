import ../standard/standard_types
import ../tcollection/tcollection_types
import osd_types



##  Copyright (c) 2021 OPEN CASCADE SAS
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

## ! File system implementation which tried to open stream using registered list of file systems.



proc newOSD_FileSystemSelector*(): OSD_FileSystemSelector {.cdecl, constructor,
    importcpp: "OSD_FileSystemSelector(@)", header: "OSD_FileSystemSelector.hxx".}
proc addProtocol*(this: var OSD_FileSystemSelector;
                 theFileSystem: Handle[OSD_FileSystem];
                 theIsPreferred: bool = false) {.cdecl, importcpp: "AddProtocol",
    header: "OSD_FileSystemSelector.hxx".}
proc removeProtocol*(this: var OSD_FileSystemSelector;
                    theFileSystem: Handle[OSD_FileSystem]) {.cdecl,
    importcpp: "RemoveProtocol", header: "OSD_FileSystemSelector.hxx".}
proc isSupportedPath*(this: OSD_FileSystemSelector; theUrl: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedPath",
    header: "OSD_FileSystemSelector.hxx".}
proc isOpenIStream*(this: OSD_FileSystemSelector; theStream: SharedPtr[Istream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenIStream",
    header: "OSD_FileSystemSelector.hxx".}
proc isOpenOStream*(this: OSD_FileSystemSelector; theStream: SharedPtr[Ostream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenOStream",
    header: "OSD_FileSystemSelector.hxx".}
proc openIStream*(this: var OSD_FileSystemSelector; theUrl: TCollectionAsciiString;
                 theMode: OSD_OpenMode; theOffset: cint = 0;
                 theOldStream: SharedPtr[Istream] = SharedPtr[Istream]()): SharedPtr[
    Istream] {.cdecl, importcpp: "OpenIStream", header: "OSD_FileSystemSelector.hxx".}
proc openOStream*(this: var OSD_FileSystemSelector; theUrl: TCollectionAsciiString;
                 theMode: OSD_OpenMode): SharedPtr[Ostream] {.cdecl,
    importcpp: "OpenOStream", header: "OSD_FileSystemSelector.hxx".}
proc openStreamBuffer*(this: var OSD_FileSystemSelector;
                      theUrl: TCollectionAsciiString; theMode: OSD_OpenMode;
                      theOffset: cint = 0; theOutBufSize: ptr cint = nil): SharedPtr[
    Streambuf] {.cdecl, importcpp: "OpenStreamBuffer",
                header: "OSD_FileSystemSelector.hxx".}

