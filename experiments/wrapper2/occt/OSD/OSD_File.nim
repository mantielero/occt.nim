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

discard "forward decl of Standard_ProgramError"
discard "forward decl of OSD_Path"
discard "forward decl of OSD_Protection"
type
  OSD_File* {.importcpp: "OSD_File", header: "OSD_File.hxx", bycopy.} = object of OSD_FileNode ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## File
                                                                                     ## object.
#     when defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard


proc constructOSD_File*(): OSD_File {.constructor, importcpp: "OSD_File(@)",
                                   header: "OSD_File.hxx".}
proc constructOSD_File*(name: OSD_Path): OSD_File {.constructor,
    importcpp: "OSD_File(@)", header: "OSD_File.hxx".}
proc destroyOSD_File*(this: var OSD_File) {.importcpp: "#.~OSD_File()",
                                        header: "OSD_File.hxx".}
proc build*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.
    importcpp: "Build", header: "OSD_File.hxx".}
proc open*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.
    importcpp: "Open", header: "OSD_File.hxx".}
proc append*(this: var OSD_File; mode: OSD_OpenMode; protect: OSD_Protection) {.
    importcpp: "Append", header: "OSD_File.hxx".}
proc read*(this: var OSD_File; buffer: var TCollectionAsciiString; nbyte: int) {.
    importcpp: "Read", header: "OSD_File.hxx".}
proc readLine*(this: var OSD_File; buffer: var TCollectionAsciiString; nByte: int;
              nbyteRead: var int) {.importcpp: "ReadLine", header: "OSD_File.hxx".}
proc readLine*(this: var OSD_File; buffer: var TCollectionAsciiString; nByte: int): int {.
    importcpp: "ReadLine", header: "OSD_File.hxx".}
proc read*(this: var OSD_File; buffer: StandardAddress; nbyte: int; readbyte: var int) {.
    importcpp: "Read", header: "OSD_File.hxx".}
proc write*(this: var OSD_File; theBuffer: TCollectionAsciiString; theNbBytes: int) {.
    importcpp: "Write", header: "OSD_File.hxx".}
proc write*(this: var OSD_File; theBuffer: StandardAddress; theNbBytes: int) {.
    importcpp: "Write", header: "OSD_File.hxx".}
proc seek*(this: var OSD_File; offset: int; whence: OSD_FromWhere) {.importcpp: "Seek",
    header: "OSD_File.hxx".}
proc close*(this: var OSD_File) {.importcpp: "Close", header: "OSD_File.hxx".}
proc isAtEnd*(this: var OSD_File): bool {.importcpp: "IsAtEnd", header: "OSD_File.hxx".}
proc kindOfFile*(this: OSD_File): OSD_KindFile {.noSideEffect,
    importcpp: "KindOfFile", header: "OSD_File.hxx".}
proc buildTemporary*(this: var OSD_File) {.importcpp: "BuildTemporary",
                                       header: "OSD_File.hxx".}
proc setLock*(this: var OSD_File; lock: OSD_LockType) {.importcpp: "SetLock",
    header: "OSD_File.hxx".}
proc unLock*(this: var OSD_File) {.importcpp: "UnLock", header: "OSD_File.hxx".}
proc getLock*(this: OSD_File): OSD_LockType {.noSideEffect, importcpp: "GetLock",
    header: "OSD_File.hxx".}
proc isLocked*(this: OSD_File): bool {.noSideEffect, importcpp: "IsLocked",
                                   header: "OSD_File.hxx".}
proc size*(this: var OSD_File): StandardSize {.importcpp: "Size",
    header: "OSD_File.hxx".}
proc isOpen*(this: OSD_File): bool {.noSideEffect, importcpp: "IsOpen",
                                 header: "OSD_File.hxx".}
proc isReadable*(this: var OSD_File): bool {.importcpp: "IsReadable",
                                        header: "OSD_File.hxx".}
proc isWriteable*(this: var OSD_File): bool {.importcpp: "IsWriteable",
    header: "OSD_File.hxx".}
proc isExecutable*(this: var OSD_File): bool {.importcpp: "IsExecutable",
    header: "OSD_File.hxx".}
proc readLastLine*(this: var OSD_File; aLine: var TCollectionAsciiString; aDelay: int;
                  aNbTries: int): bool {.importcpp: "ReadLastLine",
                                      header: "OSD_File.hxx".}
proc edit*(this: var OSD_File): bool {.importcpp: "Edit", header: "OSD_File.hxx".}
proc rewind*(this: var OSD_File) {.importcpp: "Rewind", header: "OSD_File.hxx".}
