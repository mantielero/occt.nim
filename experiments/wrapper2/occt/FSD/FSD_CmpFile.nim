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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of FSD_CmpFile"
type
  HandleC1C1* = Handle[FSD_CmpFile]
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
                                                                                          ## line.

  FSD_CmpFilebaseType* = FSD_File

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # proc getTypeName*(): cstring {.importcpp: "FSD_CmpFile::get_type_name(@)",
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #                             header: "FSD_CmpFile.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # proc getTypeDescriptor*(): Handle[StandardType] {.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     importcpp: "FSD_CmpFile::get_type_descriptor(@)", header: "FSD_CmpFile.hxx".}
proc dynamicType*(this: FSD_CmpFile): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_CmpFile.hxx".}
proc constructFSD_CmpFile*(): FSD_CmpFile {.constructor,
    importcpp: "FSD_CmpFile(@)", header: "FSD_CmpFile.hxx".}
proc open*(this: var FSD_CmpFile; aName: TCollectionAsciiString;
          aMode: StorageOpenMode): StorageError {.importcpp: "Open",
    header: "FSD_CmpFile.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # proc isGoodFileType*(aName: TCollectionAsciiString): StorageError {.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     importcpp: "FSD_CmpFile::IsGoodFileType(@)", header: "FSD_CmpFile.hxx".}
proc beginWriteInfoSection*(this: var FSD_CmpFile): StorageError {.
    importcpp: "BeginWriteInfoSection", header: "FSD_CmpFile.hxx".}
proc beginReadInfoSection*(this: var FSD_CmpFile): StorageError {.
    importcpp: "BeginReadInfoSection", header: "FSD_CmpFile.hxx".}
proc writePersistentObjectHeader*(this: var FSD_CmpFile; aRef: cint; aType: cint) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_CmpFile.hxx".}
proc beginWritePersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_CmpFile.hxx".}
proc beginWriteObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginWriteObjectData", header: "FSD_CmpFile.hxx".}
proc endWriteObjectData*(this: var FSD_CmpFile) {.importcpp: "EndWriteObjectData",
    header: "FSD_CmpFile.hxx".}
proc endWritePersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_CmpFile.hxx".}
proc readPersistentObjectHeader*(this: var FSD_CmpFile; aRef: var cint; aType: var cint) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_CmpFile.hxx".}
proc beginReadPersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_CmpFile.hxx".}
proc beginReadObjectData*(this: var FSD_CmpFile) {.importcpp: "BeginReadObjectData",
    header: "FSD_CmpFile.hxx".}
proc endReadObjectData*(this: var FSD_CmpFile) {.importcpp: "EndReadObjectData",
    header: "FSD_CmpFile.hxx".}
proc endReadPersistentObjectData*(this: var FSD_CmpFile) {.
    importcpp: "EndReadPersistentObjectData", header: "FSD_CmpFile.hxx".}
proc destroy*(this: var FSD_CmpFile) {.importcpp: "Destroy", header: "FSD_CmpFile.hxx".}
proc destroyFSD_CmpFile*(this: var FSD_CmpFile) {.importcpp: "#.~FSD_CmpFile()",
    header: "FSD_CmpFile.hxx".}
proc magicNumber*(): StandardCString {.importcpp: "FSD_CmpFile::MagicNumber(@)",
                                    header: "FSD_CmpFile.hxx".}
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


























































































































