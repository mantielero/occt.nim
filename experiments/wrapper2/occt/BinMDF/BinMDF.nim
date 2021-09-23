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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinMDF_ADriver"
discard "forward decl of BinMDF_ReferenceDriver"
discard "forward decl of BinMDF_TagSourceDriver"
discard "forward decl of BinMDF_ADriverTable"
type
  BinMDF* {.importcpp: "BinMDF", header: "BinMDF.hxx", bycopy.} = object ## ! Adds the attribute storage drivers to <aDriverTable>.


proc AddDrivers*(aDriverTable: handle[BinMDF_ADriverTable];
                aMsgDrv: handle[Message_Messenger]) {.
    importcpp: "BinMDF::AddDrivers(@)", header: "BinMDF.hxx".}