##  Created on: 2005-04-18
##  Created by: Eugeny NAPALKOV <eugeny.napalkov@opencascade.com>
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../BinDrivers/BinDrivers_DocumentStorageDriver

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinXCAFDrivers_DocumentStorageDriver"
discard "forward decl of BinXCAFDrivers_DocumentStorageDriver"
type
  Handle_BinXCAFDrivers_DocumentStorageDriver* = handle[
      BinXCAFDrivers_DocumentStorageDriver]
  BinXCAFDrivers_DocumentStorageDriver* {.
      importcpp: "BinXCAFDrivers_DocumentStorageDriver",
      header: "BinXCAFDrivers_DocumentStorageDriver.hxx", bycopy.} = object of BinDrivers_DocumentStorageDriver ##
                                                                                                         ## !
                                                                                                         ## Constructor


proc constructBinXCAFDrivers_DocumentStorageDriver*(): BinXCAFDrivers_DocumentStorageDriver {.
    constructor, importcpp: "BinXCAFDrivers_DocumentStorageDriver(@)",
    header: "BinXCAFDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var BinXCAFDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinXCAFDrivers_DocumentStorageDriver.hxx".}
type
  BinXCAFDrivers_DocumentStorageDriverbase_type* = BinDrivers_DocumentStorageDriver

proc get_type_name*(): cstring {.importcpp: "BinXCAFDrivers_DocumentStorageDriver::get_type_name(@)", header: "BinXCAFDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinXCAFDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinXCAFDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: BinXCAFDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinXCAFDrivers_DocumentStorageDriver.hxx".}