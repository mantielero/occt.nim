#import ../selectmgr/selectmgr_types
import ../tcollection/tcollection_types
import osd_types



##  Created on: 1992-02-17
##  Created by: Stephan GARNAUD
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



proc newOSD_File*(): OSD_File {.cdecl, constructor, importcpp: "OSD_File(@)",
                             header: "OSD_File.hxx".}
proc newOSD_File*(name: OSD_Path): OSD_File {.cdecl, constructor,
    importcpp: "OSD_File(@)", header: "OSD_File.hxx".}
proc destroyOSD_File*(this: var OSD_File) {.cdecl, importcpp: "#.~OSD_File()",
                                        header: "OSD_File.hxx".}
proc build*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.cdecl,
    importcpp: "Build", header: "OSD_File.hxx".}
proc open*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.cdecl,
    importcpp: "Open", header: "OSD_File.hxx".}
proc append*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.cdecl,
    importcpp: "Append", header: "OSD_File.hxx".}
proc read*(this: var OSD_File; buffer: var TCollectionAsciiString; nbyte: cint) {.cdecl,
    importcpp: "Read", header: "OSD_File.hxx".}
proc readLine*(this: var OSD_File; buffer: var TCollectionAsciiString; nByte: cint;
              nbyteRead: var cint) {.cdecl, importcpp: "ReadLine",
                                  header: "OSD_File.hxx".}
proc readLine*(this: var OSD_File; buffer: var TCollectionAsciiString; nByte: cint): cint {.
    cdecl, importcpp: "ReadLine", header: "OSD_File.hxx".}
proc read*(this: var OSD_File; buffer: pointer; nbyte: cint; readbyte: var cint) {.cdecl,
    importcpp: "Read", header: "OSD_File.hxx".}
proc write*(this: var OSD_File; theBuffer: TCollectionAsciiString; theNbBytes: cint) {.
    cdecl, importcpp: "Write", header: "OSD_File.hxx".}
proc write*(this: var OSD_File; theBuffer: pointer; theNbBytes: cint) {.cdecl,
    importcpp: "Write", header: "OSD_File.hxx".}
proc seek*(this: var OSD_File; offset: cint; whence: OSD_FromWhere) {.cdecl,
    importcpp: "Seek", header: "OSD_File.hxx".}
proc close*(this: var OSD_File) {.cdecl, importcpp: "Close", header: "OSD_File.hxx".}
proc isAtEnd*(this: var OSD_File): bool {.cdecl, importcpp: "IsAtEnd",
                                     header: "OSD_File.hxx".}
proc kindOfFile*(this: OSD_File): OSD_KindFile {.noSideEffect, cdecl,
    importcpp: "KindOfFile", header: "OSD_File.hxx".}
proc buildTemporary*(this: var OSD_File) {.cdecl, importcpp: "BuildTemporary",
                                       header: "OSD_File.hxx".}
proc setLock*(this: var OSD_File; lock: OSD_LockType) {.cdecl, importcpp: "SetLock",
    header: "OSD_File.hxx".}
proc unLock*(this: var OSD_File) {.cdecl, importcpp: "UnLock", header: "OSD_File.hxx".}
proc getLock*(this: OSD_File): OSD_LockType {.noSideEffect, cdecl,
    importcpp: "GetLock", header: "OSD_File.hxx".}
proc isLocked*(this: OSD_File): bool {.noSideEffect, cdecl, importcpp: "IsLocked",
                                   header: "OSD_File.hxx".}
proc size*(this: var OSD_File): csize_t {.cdecl, importcpp: "Size",
                                     header: "OSD_File.hxx".}
proc isOpen*(this: OSD_File): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                                 header: "OSD_File.hxx".}
proc isReadable*(this: var OSD_File): bool {.cdecl, importcpp: "IsReadable",
                                        header: "OSD_File.hxx".}
proc isWriteable*(this: var OSD_File): bool {.cdecl, importcpp: "IsWriteable",
    header: "OSD_File.hxx".}
proc isExecutable*(this: var OSD_File): bool {.cdecl, importcpp: "IsExecutable",
    header: "OSD_File.hxx".}
proc readLastLine*(this: var OSD_File; aLine: var TCollectionAsciiString; aDelay: cint;
                  aNbTries: cint): bool {.cdecl, importcpp: "ReadLastLine",
                                       header: "OSD_File.hxx".}
proc edit*(this: var OSD_File): bool {.cdecl, importcpp: "Edit", header: "OSD_File.hxx".}
proc rewind*(this: var OSD_File) {.cdecl, importcpp: "Rewind", header: "OSD_File.hxx".}

