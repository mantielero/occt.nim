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
  ../BinDrivers/BinDrivers_DocumentRetrievalDriver

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinXCAFDrivers_DocumentRetrievalDriver"
discard "forward decl of BinXCAFDrivers_DocumentRetrievalDriver"
type
  Handle_BinXCAFDrivers_DocumentRetrievalDriver* = handle[
      BinXCAFDrivers_DocumentRetrievalDriver]
  BinXCAFDrivers_DocumentRetrievalDriver* {.
      importcpp: "BinXCAFDrivers_DocumentRetrievalDriver",
      header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx", bycopy.} = object of BinDrivers_DocumentRetrievalDriver ##
                                                                                                             ## !
                                                                                                             ## Constructor


proc constructBinXCAFDrivers_DocumentRetrievalDriver*(): BinXCAFDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "BinXCAFDrivers_DocumentRetrievalDriver(@)",
    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var BinXCAFDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
type
  BinXCAFDrivers_DocumentRetrievalDriverbase_type* = BinDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "BinXCAFDrivers_DocumentRetrievalDriver::get_type_name(@)", header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "BinXCAFDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: BinXCAFDrivers_DocumentRetrievalDriver): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}