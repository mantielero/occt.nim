##  Created on: 2002-10-30
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
  ../Standard/Standard_GUID, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../BinObjMgt/BinObjMgt_Persistent

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
type
  BinMDataStd* {.importcpp: "BinMDataStd", header: "BinMDataStd.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <theDriverTable>.


proc AddDrivers*(theDriverTable: handle[BinMDF_ADriverTable];
                aMsgDrv: handle[Message_Messenger]) {.
    importcpp: "BinMDataStd::AddDrivers(@)", header: "BinMDataStd.hxx".}
proc SetAttributeID*[T](theSource: BinObjMgt_Persistent; anAtt: handle[T];
                       aDocFormatVersion: Standard_Integer) {.
    importcpp: "BinMDataStd::SetAttributeID(@)", header: "BinMDataStd.hxx".}