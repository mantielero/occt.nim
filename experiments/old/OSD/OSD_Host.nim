##  Created on: 2018-03-15
##  Created by: Stephan GARNAUD (ARM)
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of OSD_OSDError"
discard "forward decl of TCollection_AsciiString"
type
  OSD_Host* {.importcpp: "OSD_Host", header: "OSD_Host.hxx", bycopy.} = object ## !
                                                                       ## Initializes current host by default.


proc constructOSD_Host*(): OSD_Host {.constructor, importcpp: "OSD_Host(@)",
                                   header: "OSD_Host.hxx".}
proc systemVersion*(this: var OSD_Host): TCollectionAsciiString {.
    importcpp: "SystemVersion", header: "OSD_Host.hxx".}
proc systemId*(this: OSD_Host): OSD_SysType {.noSideEffect, importcpp: "SystemId",
    header: "OSD_Host.hxx".}
proc hostName*(this: var OSD_Host): TCollectionAsciiString {.importcpp: "HostName",
    header: "OSD_Host.hxx".}
proc availableMemory*(this: var OSD_Host): cint {.importcpp: "AvailableMemory",
    header: "OSD_Host.hxx".}
proc internetAddress*(this: var OSD_Host): TCollectionAsciiString {.
    importcpp: "InternetAddress", header: "OSD_Host.hxx".}
proc machineType*(this: var OSD_Host): OSD_OEMType {.importcpp: "MachineType",
    header: "OSD_Host.hxx".}
proc failed*(this: OSD_Host): bool {.noSideEffect, importcpp: "Failed",
                                 header: "OSD_Host.hxx".}
proc reset*(this: var OSD_Host) {.importcpp: "Reset", header: "OSD_Host.hxx".}
proc perror*(this: var OSD_Host) {.importcpp: "Perror", header: "OSD_Host.hxx".}
proc error*(this: OSD_Host): cint {.noSideEffect, importcpp: "Error",
                                header: "OSD_Host.hxx".}

























