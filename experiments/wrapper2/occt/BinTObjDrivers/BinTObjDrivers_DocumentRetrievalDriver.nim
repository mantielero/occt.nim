##  Created on: 2004-11-24
##  Created by: Michael SAZONOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  ../TObj/TObj_Common, ../BinLDrivers/BinLDrivers_DocumentRetrievalDriver,
  ../BinMDF/BinMDF_ADriverTable

##  Retrieval driver of a TObj Bin document
##

type
  BinTObjDrivers_DocumentRetrievalDriver* {.
      importcpp: "BinTObjDrivers_DocumentRetrievalDriver",
      header: "BinTObjDrivers_DocumentRetrievalDriver.hxx", bycopy.} = object of BinLDrivers_DocumentRetrievalDriver ##  ---------- PUBLIC METHODS ----------
                                                                                                              ##  Declaration of CASCADE RTTI


proc constructBinTObjDrivers_DocumentRetrievalDriver*(): BinTObjDrivers_DocumentRetrievalDriver {.
    constructor, importcpp: "BinTObjDrivers_DocumentRetrievalDriver(@)",
    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc AttributeDrivers*(this: var BinTObjDrivers_DocumentRetrievalDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
type
  BinTObjDrivers_DocumentRetrievalDriverbase_type* = BinLDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "BinTObjDrivers_DocumentRetrievalDriver::get_type_name(@)", header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "BinTObjDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: BinTObjDrivers_DocumentRetrievalDriver): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "BinTObjDrivers_DocumentRetrievalDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of BinTObjDrivers_DocumentRetrievalDriver"
type
  Handle_BinTObjDrivers_DocumentRetrievalDriver* = handle[
      BinTObjDrivers_DocumentRetrievalDriver]

when defined(_MSC_VER):
  discard