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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BinLDrivers/BinLDrivers_DocumentRetrievalDriver,
  ../Standard/Standard_IStream, ../Standard/Standard_Boolean,
  ../Storage/Storage_Position, ../Standard/Standard_Integer

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of BinDrivers_DocumentRetrievalDriver"
discard "forward decl of BinDrivers_DocumentRetrievalDriver"
type
  Handle_BinDrivers_DocumentRetrievalDriver* = handle[
      BinDrivers_DocumentRetrievalDriver]
  BinDrivers_DocumentRetrievalDriver* {.importcpp: "BinDrivers_DocumentRetrievalDriver", header: "BinDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of BinLDrivers_DocumentRetrievalDriver ##
                                                                                           ## !
                                                                                           ## Constructor


proc constructBinDrivers_DocumentRetrievalDriver*(): BinDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "BinDrivers_DocumentRetrievalDriver(@)",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var BinDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc ReadShapeSection*(this: var BinDrivers_DocumentRetrievalDriver;
                      theSection: var BinLDrivers_DocumentSection;
                      theIS: var Standard_IStream;
                      isMess: Standard_Boolean = Standard_False;
                      theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadShapeSection",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc CheckShapeSection*(this: var BinDrivers_DocumentRetrievalDriver;
                       thePos: Storage_Position; theIS: var Standard_IStream) {.
    importcpp: "CheckShapeSection",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc Clear*(this: var BinDrivers_DocumentRetrievalDriver) {.importcpp: "Clear",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
type
  BinDrivers_DocumentRetrievalDriverbase_type* = BinLDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "BinDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: BinDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinDrivers_DocumentRetrievalDriver.hxx".}