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
  ../TObj/TObj_Common, ../BinLDrivers/BinLDrivers_DocumentStorageDriver,
  ../BinMDF/BinMDF_ADriverTable

##   Block of comments describing class BinTObjDrivers_DocumentStorageDriver
##

type
  BinTObjDrivers_DocumentStorageDriver* {.
      importcpp: "BinTObjDrivers_DocumentStorageDriver",
      header: "BinTObjDrivers_DocumentStorageDriver.hxx", bycopy.} = object of BinLDrivers_DocumentStorageDriver ##  ---------- PUBLIC METHODS ----------
                                                                                                          ##  Declaration of CASCADE RTTI


proc constructBinTObjDrivers_DocumentStorageDriver*(): BinTObjDrivers_DocumentStorageDriver {.
    constructor, importcpp: "BinTObjDrivers_DocumentStorageDriver(@)",
    header: "BinTObjDrivers_DocumentStorageDriver.hxx".}
proc AttributeDrivers*(this: var BinTObjDrivers_DocumentStorageDriver;
                      theMsgDriver: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinTObjDrivers_DocumentStorageDriver.hxx".}
type
  BinTObjDrivers_DocumentStorageDriverbase_type* = BinLDrivers_DocumentStorageDriver

proc get_type_name*(): cstring {.importcpp: "BinTObjDrivers_DocumentStorageDriver::get_type_name(@)", header: "BinTObjDrivers_DocumentStorageDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinTObjDrivers_DocumentStorageDriver::get_type_descriptor(@)",
    header: "BinTObjDrivers_DocumentStorageDriver.hxx".}
proc DynamicType*(this: BinTObjDrivers_DocumentStorageDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinTObjDrivers_DocumentStorageDriver.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of BinTObjDrivers_DocumentStorageDriver"
type
  Handle_BinTObjDrivers_DocumentStorageDriver* = handle[
      BinTObjDrivers_DocumentStorageDriver]

when defined(_MSC_VER):
  discard