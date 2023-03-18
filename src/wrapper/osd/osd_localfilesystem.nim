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

## ! A file system opening local files (or files from mount systems).



proc newOSD_LocalFileSystem*(): OSD_LocalFileSystem {.cdecl, constructor,
    importcpp: "OSD_LocalFileSystem(@)", header: "OSD_LocalFileSystem.hxx".}
proc isSupportedPath*(this: OSD_LocalFileSystem; theUrl: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedPath",
    header: "OSD_LocalFileSystem.hxx".}
proc isOpenIStream*(this: OSD_LocalFileSystem; theStream: SharedPtr[Istream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenIStream",
    header: "OSD_LocalFileSystem.hxx".}
proc isOpenOStream*(this: OSD_LocalFileSystem; theStream: SharedPtr[Ostream]): bool {.
    noSideEffect, cdecl, importcpp: "IsOpenOStream",
    header: "OSD_LocalFileSystem.hxx".}
proc openStreamBuffer*(this: var OSD_LocalFileSystem;
                      theUrl: TCollectionAsciiString; theMode: OSD_OpenMode;
                      theOffset: cint = 0; theOutBufSize: ptr cint = nil): SharedPtr[
    Streambuf] {.cdecl, importcpp: "OpenStreamBuffer",
                header: "OSD_LocalFileSystem.hxx".}

