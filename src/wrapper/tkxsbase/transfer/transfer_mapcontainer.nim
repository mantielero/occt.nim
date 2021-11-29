##  Created on: 2001-09-10
##  Created by: Sergey KUUL
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of Transfer_MapContainer"
type
  HandleTransferMapContainer* = Handle[TransferMapContainer]
  TransferMapContainer* {.importcpp: "Transfer_MapContainer",
                         header: "Transfer_MapContainer.hxx", bycopy.} = object of StandardTransient


proc newTransferMapContainer*(): TransferMapContainer {.cdecl, constructor,
    importcpp: "Transfer_MapContainer(@)", header: "Transfer_MapContainer.hxx".}
proc setMapObjects*(this: var TransferMapContainer;
                   theMapObjects: var TColStdDataMapOfTransientTransient) {.cdecl,
    importcpp: "SetMapObjects", header: "Transfer_MapContainer.hxx".}
proc getMapObjects*(this: var TransferMapContainer): var TColStdDataMapOfTransientTransient {.
    cdecl, importcpp: "GetMapObjects", header: "Transfer_MapContainer.hxx".}