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
  ../TObj/TObj_Common, ../Standard/Standard_GUID

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of TDocStd_Application"
type
  BinTObjDrivers* {.importcpp: "BinTObjDrivers", header: "BinTObjDrivers.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------


proc Factory*(aGUID: Standard_GUID): handle[Standard_Transient] {.
    importcpp: "BinTObjDrivers::Factory(@)", header: "BinTObjDrivers.hxx".}
proc DefineFormat*(theApp: handle[TDocStd_Application]) {.
    importcpp: "BinTObjDrivers::DefineFormat(@)", header: "BinTObjDrivers.hxx".}
proc AddDrivers*(aDriverTable: handle[BinMDF_ADriverTable];
                aMsgDrv: handle[Message_Messenger]) {.
    importcpp: "BinTObjDrivers::AddDrivers(@)", header: "BinTObjDrivers.hxx".}
# when defined(_MSC_VER):
#   discard