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

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinMXCAFDoc_CentroidDriver"
discard "forward decl of BinMXCAFDoc_ColorDriver"
discard "forward decl of BinMXCAFDoc_GraphNodeDriver"
discard "forward decl of BinMXCAFDoc_LocationDriver"
discard "forward decl of BinMXCAFDoc_DatumDriver"
discard "forward decl of BinMXCAFDoc_DimTolDriver"
discard "forward decl of BinMXCAFDoc_MaterialDriver"
type
  BinMXCAFDoc* {.importcpp: "BinMXCAFDoc", header: "BinMXCAFDoc.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <theDriverTable>.


proc addDrivers*(theDriverTable: Handle[BinMDF_ADriverTable];
                theMsgDrv: Handle[MessageMessenger]) {.
    importcpp: "BinMXCAFDoc::AddDrivers(@)", header: "BinMXCAFDoc.hxx".}
