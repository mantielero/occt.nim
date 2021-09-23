##  Created on: 2002-10-29
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BinObjMgt/BinObjMgt_Persistent, ../BinObjMgt/BinObjMgt_SRelocationTable,
  ../TDF/TDF_LabelList, ../TColStd/TColStd_MapOfTransient,
  ../TColStd/TColStd_IndexedMapOfTransient, BinLDrivers_VectorOfDocumentSection,
  ../PCDM/PCDM_StorageDriver, ../Standard/Standard_OStream,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Document"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of BinLDrivers_DocumentStorageDriver"
discard "forward decl of BinLDrivers_DocumentStorageDriver"
type
  Handle_BinLDrivers_DocumentStorageDriver* = handle[
      BinLDrivers_DocumentStorageDriver]

## ! persistent implemention of storage a document in a binary file

type
  BinLDrivers_DocumentStorageDriver* {.importcpp: "BinLDrivers_DocumentStorageDriver", header: "BinLDrivers_DocumentStorageDriver.hxx",
                                      bycopy.} = object of PCDM_StorageDriver ## !
                                                                         ## Constructor
                                                                         ## ! Write the tree under
                                                                         ## <theLabel> to the stream <theOS>


proc constructBinLDrivers_DocumentStorageDriver*(): BinLDrivers_DocumentStorageDriver {.
    constructor, importcpp: "BinLDrivers_DocumentStorageDriver(@)",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc Write*(this: var BinLDrivers_DocumentStorageDriver;
           theDocument: handle[CDM_Document];
           theFileName: TCollection_ExtendedString;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Write", header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc Write*(this: var BinLDrivers_DocumentStorageDriver;
           theDocument: handle[CDM_Document]; theOStream: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Write", header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var BinLDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc AddSection*(this: var BinLDrivers_DocumentStorageDriver;
                theName: TCollection_AsciiString;
                isPostRead: Standard_Boolean = Standard_True) {.
    importcpp: "AddSection", header: "BinLDrivers_DocumentStorageDriver.hxx".}
type
  BinLDrivers_DocumentStorageDriverbase_type* = PCDM_StorageDriver

proc get_type_name*(): cstring {.importcpp: "BinLDrivers_DocumentStorageDriver::get_type_name(@)",
                              header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinLDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: BinLDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}