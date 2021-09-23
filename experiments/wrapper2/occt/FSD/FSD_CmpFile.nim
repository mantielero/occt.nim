##  Created on: 1996-11-29
##  Created by: Christophe LEYNADIER
##  Copyright (c) 1996-1999 Matra Datavision
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
  FSD_File, ../Storage/Storage_BaseDriver, ../Storage/Storage_Error,
  ../Storage/Storage_OpenMode

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of FSD_CmpFile"
type
  Handle_FSD_CmpFile* = handle[FSD_CmpFile]
  FSD_CmpFile* {.importcpp: "FSD_CmpFile", header: "FSD_CmpFile.hxx", bycopy.} = object of FSD_File ##
                                                                                          ## !
                                                                                          ## read
                                                                                          ## from
                                                                                          ## the
                                                                                          ## current
                                                                                          ## position
                                                                                          ## to
                                                                                          ## the
                                                                                          ## end
                                                                                          ## of
#                                                                                           ## line.
# 
#   FSD_CmpFilebase_type* = FSD_File
# 
proc get_type_name*(): cstring {.importcpp: "FSD_CmpFile::get_type_name(@)",
                              header: "FSD_CmpFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FSD_CmpFile::get_type_descriptor(@)", header: "FSD_CmpFile.hxx".}
proc DynamicType*(this: FSD_CmpFile): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_CmpFile.hxx".}
proc constructFSD_CmpFile*(): FSD_CmpFile {.constructor,
#     importcpp: "FSD_CmpFile(@)", header: "FSD_CmpFile.hxx".}
# proc Open*(this: var FSD_CmpFile; aName: TCollection_AsciiString;
          aMode: Storage_OpenMode): Storage_Error {.importcpp: "Open",
    header: "FSD_CmpFile.hxx".}
proc IsGoodFileType*(aName: TCollection_AsciiString): Storage_Error {.
    importcpp: "FSD_CmpFile::IsGoodFileType(@)", header: "FSD_CmpFile.hxx".}
proc BeginWriteInfoSection*(this: var FSD_CmpFile): Storage_Error {.
    importcpp: "BeginWriteInfoSection", header: "FSD_CmpFile.hxx".}
proc BeginReadInfoSection*(this: var FSD_CmpFile): Storage_Error {.
    importcpp: "BeginReadInfoSection", header: "FSD_CmpFile.hxx".}
proc WritePersistentObjectHeader*(this: var FSD_CmpFile; aRef: Standard_Integer;
                                 aType: Standard_Integer) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_CmpFile.hxx".}
proc BeginWritePersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_CmpFile.hxx".}
proc BeginWriteObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginWriteObjectData", header: "FSD_CmpFile.hxx".}
proc EndWriteObjectData*(this: var FSD_CmpFile) {.importcpp: "EndWriteObjectData",
    header: "FSD_CmpFile.hxx".}
proc EndWritePersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_CmpFile.hxx".}
proc ReadPersistentObjectHeader*(this: var FSD_CmpFile; aRef: var Standard_Integer;
                                aType: var Standard_Integer) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_CmpFile.hxx".}
proc BeginReadPersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_CmpFile.hxx".}
proc BeginReadObjectData*(this: var FSD_CmpFile) {.importcpp: "BeginReadObjectData",
    header: "FSD_CmpFile.hxx".}
proc EndReadObjectData*(this: var FSD_CmpFile) {.importcpp: "EndReadObjectData",
    header: "FSD_CmpFile.hxx".}
proc EndReadPersistentObjectData*(this: var FSD_CmpFile) {.
#     importcpp: "EndReadPersistentObjectData", header: "FSD_CmpFile.hxx".}
# proc Destroy*(this: var FSD_CmpFile) {.importcpp: "Destroy", header: "FSD_CmpFile.hxx".}
proc destroyFSD_CmpFile*(this: var FSD_CmpFile) {.importcpp: "#.~FSD_CmpFile()",
    header: "FSD_CmpFile.hxx".}
proc MagicNumber*(): Standard_CString {.importcpp: "FSD_CmpFile::MagicNumber(@)",
                                     header: "FSD_CmpFile.hxx".}


