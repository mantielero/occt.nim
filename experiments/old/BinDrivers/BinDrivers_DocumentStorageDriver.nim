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
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of BinDrivers_DocumentStorageDriver"
discard "forward decl of BinDrivers_DocumentStorageDriver"
type
  HandleC1C1* = Handle[BinDriversDocumentStorageDriver]

## ! persistent implemention of storage a document in a binary file

type
  BinDriversDocumentStorageDriver* {.importcpp: "BinDrivers_DocumentStorageDriver", header: "BinDrivers_DocumentStorageDriver.hxx",
                                    bycopy.} = object of BinLDriversDocumentStorageDriver ##
                                                                                     ## !
                                                                                     ## Constructor


proc constructBinDriversDocumentStorageDriver*(): BinDriversDocumentStorageDriver {.
    constructor, importcpp: "BinDrivers_DocumentStorageDriver(@)",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
proc attributeDrivers*(this: var BinDriversDocumentStorageDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinDrivers_DocumentStorageDriver.hxx".}
proc writeShapeSection*(this: var BinDriversDocumentStorageDriver;
                       theDocSection: var BinLDriversDocumentSection;
                       theOS: var StandardOStream;
                       theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "WriteShapeSection", header: "BinDrivers_DocumentStorageDriver.hxx".}
proc isWithTriangles*(this: BinDriversDocumentStorageDriver): bool {.noSideEffect,
    importcpp: "IsWithTriangles", header: "BinDrivers_DocumentStorageDriver.hxx".}
proc setWithTriangles*(this: var BinDriversDocumentStorageDriver;
                      theMessageDriver: Handle[MessageMessenger];
                      theWithTriangulation: bool) {.importcpp: "SetWithTriangles",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
type
  BinDriversDocumentStorageDriverbaseType* = BinLDriversDocumentStorageDriver

proc getTypeName*(): cstring {.importcpp: "BinDrivers_DocumentStorageDriver::get_type_name(@)",
                            header: "BinDrivers_DocumentStorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
proc dynamicType*(this: BinDriversDocumentStorageDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinDrivers_DocumentStorageDriver.hxx".}

























