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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_OStream,
  ../BinLDrivers/BinLDrivers_DocumentStorageDriver

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of BinDrivers_DocumentStorageDriver"
discard "forward decl of BinDrivers_DocumentStorageDriver"
type
  Handle_BinDrivers_DocumentStorageDriver* = handle[
      BinDrivers_DocumentStorageDriver]

## ! persistent implemention of storage a document in a binary file

type
  BinDrivers_DocumentStorageDriver* {.importcpp: "BinDrivers_DocumentStorageDriver", header: "BinDrivers_DocumentStorageDriver.hxx",
                                     bycopy.} = object of BinLDrivers_DocumentStorageDriver ##
                                                                                       ## !
                                                                                       ## Constructor


proc constructBinDrivers_DocumentStorageDriver*(): BinDrivers_DocumentStorageDriver {.
    constructor, importcpp: "BinDrivers_DocumentStorageDriver(@)",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var BinDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinDrivers_DocumentStorageDriver.hxx".}
proc WriteShapeSection*(this: var BinDrivers_DocumentStorageDriver;
                       theDocSection: var BinLDrivers_DocumentSection;
                       theOS: var Standard_OStream; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "WriteShapeSection", header: "BinDrivers_DocumentStorageDriver.hxx".}
proc IsWithTriangles*(this: BinDrivers_DocumentStorageDriver): Standard_Boolean {.
    noSideEffect, importcpp: "IsWithTriangles",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
proc SetWithTriangles*(this: var BinDrivers_DocumentStorageDriver;
                      theMessageDriver: handle[Message_Messenger];
                      theWithTriangulation: Standard_Boolean) {.
    importcpp: "SetWithTriangles", header: "BinDrivers_DocumentStorageDriver.hxx".}
type
  BinDrivers_DocumentStorageDriverbase_type* = BinLDrivers_DocumentStorageDriver

proc get_type_name*(): cstring {.importcpp: "BinDrivers_DocumentStorageDriver::get_type_name(@)",
                              header: "BinDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: BinDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinDrivers_DocumentStorageDriver.hxx".}