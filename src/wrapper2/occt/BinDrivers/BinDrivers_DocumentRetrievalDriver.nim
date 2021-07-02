##  Created on: 2002-10-31
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
discard "forward decl of BinDrivers_DocumentRetrievalDriver"
discard "forward decl of BinDrivers_DocumentRetrievalDriver"
type
  HandleBinDriversDocumentRetrievalDriver* = Handle[
      BinDriversDocumentRetrievalDriver]
  BinDriversDocumentRetrievalDriver* {.importcpp: "BinDrivers_DocumentRetrievalDriver", header: "BinDrivers_DocumentRetrievalDriver.hxx",
                                      bycopy.} = object of BinLDriversDocumentRetrievalDriver ##
                                                                                         ## !
                                                                                         ## Constructor


proc constructBinDriversDocumentRetrievalDriver*(): BinDriversDocumentRetrievalDriver {.
    constructor, importcpp: "BinDrivers_DocumentRetrievalDriver(@)",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var BinDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc readShapeSection*(this: var BinDriversDocumentRetrievalDriver;
                      theSection: var BinLDriversDocumentSection;
                      theIS: var StandardIStream;
                      isMess: StandardBoolean = standardFalse;
                      theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadShapeSection",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc checkShapeSection*(this: var BinDriversDocumentRetrievalDriver;
                       thePos: StoragePosition; theIS: var StandardIStream) {.
    importcpp: "CheckShapeSection",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc clear*(this: var BinDriversDocumentRetrievalDriver) {.importcpp: "Clear",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
type
  BinDriversDocumentRetrievalDriverbaseType* = BinLDriversDocumentRetrievalDriver

proc getTypeName*(): cstring {.importcpp: "BinDrivers_DocumentRetrievalDriver::get_type_name(@)",
                            header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: BinDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}

