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

import
  OSD_FileNode, OSD_FromWhere, OSD_KindFile, OSD_LockType, OSD_OpenMode

discard "forward decl of Standard_ProgramError"
discard "forward decl of OSD_Path"
discard "forward decl of OSD_Protection"
type
  OSD_File* {.importcpp: "OSD_File", header: "OSD_File.hxx", bycopy.} = object of OSD_FileNode ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## File
                                                                                     ## object.
    when defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard


proc constructOSD_File*(): OSD_File {.constructor, importcpp: "OSD_File(@)",
                                   header: "OSD_File.hxx".}
proc constructOSD_File*(Name: OSD_Path): OSD_File {.constructor,
    importcpp: "OSD_File(@)", header: "OSD_File.hxx".}
proc destroyOSD_File*(this: var OSD_File) {.importcpp: "#.~OSD_File()",
                                        header: "OSD_File.hxx".}
proc Build*(this: var OSD_File; Mode: OSD_OpenMode; Protect: OSD_Protection) {.
    importcpp: "Build", header: "OSD_File.hxx".}
proc Open*(this: var OSD_File; Mode: OSD_OpenMode; Protect: OSD_Protection) {.
    importcpp: "Open", header: "OSD_File.hxx".}
proc Append*(this: var OSD_File; Mode: OSD_OpenMode; Protect: OSD_Protection) {.
    importcpp: "Append", header: "OSD_File.hxx".}
proc Read*(this: var OSD_File; Buffer: var TCollection_AsciiString;
          Nbyte: Standard_Integer) {.importcpp: "Read", header: "OSD_File.hxx".}
proc ReadLine*(this: var OSD_File; Buffer: var TCollection_AsciiString;
              NByte: Standard_Integer; NbyteRead: var Standard_Integer) {.
    importcpp: "ReadLine", header: "OSD_File.hxx".}
proc ReadLine*(this: var OSD_File; Buffer: var TCollection_AsciiString;
              NByte: Standard_Integer): Standard_Integer {.importcpp: "ReadLine",
    header: "OSD_File.hxx".}
proc Read*(this: var OSD_File; Buffer: Standard_Address; Nbyte: Standard_Integer;
          Readbyte: var Standard_Integer) {.importcpp: "Read", header: "OSD_File.hxx".}
proc Write*(this: var OSD_File; theBuffer: TCollection_AsciiString;
           theNbBytes: Standard_Integer) {.importcpp: "Write",
    header: "OSD_File.hxx".}
proc Write*(this: var OSD_File; theBuffer: Standard_Address;
           theNbBytes: Standard_Integer) {.importcpp: "Write",
    header: "OSD_File.hxx".}
proc Seek*(this: var OSD_File; Offset: Standard_Integer; Whence: OSD_FromWhere) {.
    importcpp: "Seek", header: "OSD_File.hxx".}
proc Close*(this: var OSD_File) {.importcpp: "Close", header: "OSD_File.hxx".}
proc IsAtEnd*(this: var OSD_File): Standard_Boolean {.importcpp: "IsAtEnd",
    header: "OSD_File.hxx".}
proc KindOfFile*(this: OSD_File): OSD_KindFile {.noSideEffect,
    importcpp: "KindOfFile", header: "OSD_File.hxx".}
proc BuildTemporary*(this: var OSD_File) {.importcpp: "BuildTemporary",
                                       header: "OSD_File.hxx".}
proc SetLock*(this: var OSD_File; Lock: OSD_LockType) {.importcpp: "SetLock",
    header: "OSD_File.hxx".}
proc UnLock*(this: var OSD_File) {.importcpp: "UnLock", header: "OSD_File.hxx".}
proc GetLock*(this: OSD_File): OSD_LockType {.noSideEffect, importcpp: "GetLock",
    header: "OSD_File.hxx".}
proc IsLocked*(this: OSD_File): Standard_Boolean {.noSideEffect,
    importcpp: "IsLocked", header: "OSD_File.hxx".}
proc Size*(this: var OSD_File): Standard_Size {.importcpp: "Size",
    header: "OSD_File.hxx".}
proc IsOpen*(this: OSD_File): Standard_Boolean {.noSideEffect, importcpp: "IsOpen",
    header: "OSD_File.hxx".}
proc IsReadable*(this: var OSD_File): Standard_Boolean {.importcpp: "IsReadable",
    header: "OSD_File.hxx".}
proc IsWriteable*(this: var OSD_File): Standard_Boolean {.importcpp: "IsWriteable",
    header: "OSD_File.hxx".}
proc IsExecutable*(this: var OSD_File): Standard_Boolean {.importcpp: "IsExecutable",
    header: "OSD_File.hxx".}
proc ReadLastLine*(this: var OSD_File; aLine: var TCollection_AsciiString;
                  aDelay: Standard_Integer; aNbTries: Standard_Integer): Standard_Boolean {.
    importcpp: "ReadLastLine", header: "OSD_File.hxx".}
proc Edit*(this: var OSD_File): Standard_Boolean {.importcpp: "Edit",
    header: "OSD_File.hxx".}
proc Rewind*(this: var OSD_File) {.importcpp: "Rewind", header: "OSD_File.hxx".}