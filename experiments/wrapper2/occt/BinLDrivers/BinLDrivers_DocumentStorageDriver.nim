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
  HandleC1C1* = Handle[BinLDriversDocumentStorageDriver]

## ! persistent implemention of storage a document in a binary file

type
  BinLDriversDocumentStorageDriver* {.importcpp: "BinLDrivers_DocumentStorageDriver", header: "BinLDrivers_DocumentStorageDriver.hxx",
                                     bycopy.} = object of PCDM_StorageDriver ## !
                                                                        ## Constructor
                                                                        ## ! Write the tree under
                                                                        ## <theLabel> to the stream <theOS>


proc constructBinLDriversDocumentStorageDriver*(): BinLDriversDocumentStorageDriver {.
    constructor, importcpp: "BinLDrivers_DocumentStorageDriver(@)",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc write*(this: var BinLDriversDocumentStorageDriver;
           theDocument: Handle[CDM_Document];
           theFileName: TCollectionExtendedString;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc write*(this: var BinLDriversDocumentStorageDriver;
           theDocument: Handle[CDM_Document]; theOStream: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var BinLDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc addSection*(this: var BinLDriversDocumentStorageDriver;
                theName: TCollectionAsciiString; isPostRead: bool = true) {.
    importcpp: "AddSection", header: "BinLDrivers_DocumentStorageDriver.hxx".}
type
  BinLDriversDocumentStorageDriverbaseType* = PCDM_StorageDriver

proc getTypeName*(): cstring {.importcpp: "BinLDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinLDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: BinLDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinLDrivers_DocumentStorageDriver.hxx".}

























