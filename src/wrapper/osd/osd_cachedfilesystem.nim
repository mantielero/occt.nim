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

## ! File system keeping last stream created by linked file system (OSD_FileSystem::DefaultFileSystem() by default) to be reused for opening a stream with the same URL.
## ! Note that as file is kept in opened state, application will need destroying this object to ensure all files being closed.
## ! This interface could be handy in context of reading numerous objects pointing to the same file (at different offset).
## ! Make sure to create a dedicated OSD_CachedFileSystem for each working thread to avoid data races.



proc newOSD_CachedFileSystem*(theLinkedFileSystem: Handle[OSD_FileSystem] = Handle[
    OSD_FileSystem]()): OSD_CachedFileSystem {.cdecl, constructor,
    importcpp: "OSD_CachedFileSystem(@)", header: "OSD_CachedFileSystem.hxx".}
proc linkedFileSystem*(this: OSD_CachedFileSystem): Handle[OSD_FileSystem] {.
    noSideEffect, cdecl, importcpp: "LinkedFileSystem",
    header: "OSD_CachedFileSystem.hxx".}
proc setLinkedFileSystem*(this: var OSD_CachedFileSystem;
                         theLinkedFileSystem: Handle[OSD_FileSystem]) {.cdecl,
    importcpp: "SetLinkedFileSystem", header: "OSD_CachedFileSystem.hxx".}
proc isSupportedPath*(this: OSD_CachedFileSystem; theUrl: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedPath",
    header: "OSD_CachedFileSystem.hxx".}
proc isOpenIStream*(this: OSD_CachedFileSystem; theStream: SharedPtr[Istream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenIStream",
    header: "OSD_CachedFileSystem.hxx".}
proc isOpenOStream*(this: OSD_CachedFileSystem; theStream: SharedPtr[Ostream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenOStream",
    header: "OSD_CachedFileSystem.hxx".}
proc openIStream*(this: var OSD_CachedFileSystem; theUrl: TCollectionAsciiString;
                 theParams: OSD_OpenMode; theOffset: cint;
                 theOldStream: SharedPtr[Istream]): SharedPtr[Istream] {.cdecl,
    importcpp: "OpenIStream", header: "OSD_CachedFileSystem.hxx".}
proc openOStream*(this: var OSD_CachedFileSystem; theUrl: TCollectionAsciiString;
                 theMode: OSD_OpenMode): SharedPtr[Ostream] {.cdecl,
    importcpp: "OpenOStream", header: "OSD_CachedFileSystem.hxx".}
proc openStreamBuffer*(this: var OSD_CachedFileSystem;
                      theUrl: TCollectionAsciiString; theMode: OSD_OpenMode;
                      theOffset: cint = 0; theOutBufSize: ptr cint = nil): SharedPtr[
    Streambuf] {.cdecl, importcpp: "OpenStreamBuffer",
                header: "OSD_CachedFileSystem.hxx".}

