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

## ! Base interface for a file stream provider.
## ! It is intended to be implemented for specific file protocol.



proc defaultFileSystem*(): Handle[OSD_FileSystem] {.cdecl,
    importcpp: "OSD_FileSystem::DefaultFileSystem(@)",
    header: "OSD_FileSystem.hxx".}
proc addDefaultProtocol*(theFileSystem: Handle[OSD_FileSystem];
                        theIsPreferred: bool = false) {.cdecl,
    importcpp: "OSD_FileSystem::AddDefaultProtocol(@)",
    header: "OSD_FileSystem.hxx".}
proc removeDefaultProtocol*(theFileSystem: Handle[OSD_FileSystem]) {.cdecl,
    importcpp: "OSD_FileSystem::RemoveDefaultProtocol(@)",
    header: "OSD_FileSystem.hxx".}
proc isSupportedPath*(this: OSD_FileSystem; theUrl: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedPath", header: "OSD_FileSystem.hxx".}
proc isOpenIStream*(this: OSD_FileSystem; theStream: SharedPtr[Istream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenIStream", header: "OSD_FileSystem.hxx".}
proc isOpenOStream*(this: OSD_FileSystem; theStream: SharedPtr[Ostream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenOStream", header: "OSD_FileSystem.hxx".}
proc openIStream*(this: var OSD_FileSystem; theUrl: TCollectionAsciiString;
                 theMode: OSD_OpenMode; theOffset: cint = 0;
                 theOldStream: SharedPtr[Istream] = SharedPtr[Istream]()): SharedPtr[
    Istream] {.cdecl, importcpp: "OpenIStream", header: "OSD_FileSystem.hxx".}
proc openOStream*(this: var OSD_FileSystem; theUrl: TCollectionAsciiString;
                 theMode: OSD_OpenMode): SharedPtr[Ostream] {.cdecl,
    importcpp: "OpenOStream", header: "OSD_FileSystem.hxx".}
proc openStreamBuffer*(this: var OSD_FileSystem; theUrl: TCollectionAsciiString;
                      theMode: OSD_OpenMode; theOffset: cint = 0;
                      theOutBufSize: ptr cint = nil): SharedPtr[Streambuf] {.cdecl,
    importcpp: "OpenStreamBuffer", header: "OSD_FileSystem.hxx".}
proc newOSD_FileSystem*(): OSD_FileSystem {.cdecl, constructor,
    importcpp: "OSD_FileSystem(@)", header: "OSD_FileSystem.hxx".}
proc destroyOSD_FileSystem*(this: var OSD_FileSystem) {.cdecl,
    importcpp: "#.~OSD_FileSystem()", header: "OSD_FileSystem.hxx".}

