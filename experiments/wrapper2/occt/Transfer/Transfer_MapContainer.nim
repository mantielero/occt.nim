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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_DataMapOfTransientTransient, ../Standard/Standard_Transient

discard "forward decl of Transfer_MapContainer"
discard "forward decl of Transfer_MapContainer"
type
  Handle_Transfer_MapContainer* = handle[Transfer_MapContainer]
  Transfer_MapContainer* {.importcpp: "Transfer_MapContainer",
                          header: "Transfer_MapContainer.hxx", bycopy.} = object of Standard_Transient


proc constructTransfer_MapContainer*(): Transfer_MapContainer {.constructor,
    importcpp: "Transfer_MapContainer(@)", header: "Transfer_MapContainer.hxx".}
proc SetMapObjects*(this: var Transfer_MapContainer;
                   theMapObjects: var TColStd_DataMapOfTransientTransient) {.
    importcpp: "SetMapObjects", header: "Transfer_MapContainer.hxx".}
proc GetMapObjects*(this: var Transfer_MapContainer): var TColStd_DataMapOfTransientTransient {.
    importcpp: "GetMapObjects", header: "Transfer_MapContainer.hxx".}
type
  Transfer_MapContainerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_MapContainer::get_type_name(@)",
                              header: "Transfer_MapContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_MapContainer::get_type_descriptor(@)",
    header: "Transfer_MapContainer.hxx".}
proc DynamicType*(this: Transfer_MapContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_MapContainer.hxx".}