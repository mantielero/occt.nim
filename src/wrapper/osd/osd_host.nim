import ../tcollection/tcollection_types
import osd_types



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



proc newOSD_Host*(): OSD_Host {.cdecl, constructor, importcpp: "OSD_Host(@)",
                             header: "OSD_Host.hxx".}
proc systemVersion*(this: var OSD_Host): TCollectionAsciiString {.cdecl,
    importcpp: "SystemVersion", header: "OSD_Host.hxx".}
proc systemId*(this: OSD_Host): OSD_SysType {.noSideEffect, cdecl,
    importcpp: "SystemId", header: "OSD_Host.hxx".}
proc hostName*(this: var OSD_Host): TCollectionAsciiString {.cdecl,
    importcpp: "HostName", header: "OSD_Host.hxx".}
proc availableMemory*(this: var OSD_Host): cint {.cdecl, importcpp: "AvailableMemory",
    header: "OSD_Host.hxx".}
proc internetAddress*(this: var OSD_Host): TCollectionAsciiString {.cdecl,
    importcpp: "InternetAddress", header: "OSD_Host.hxx".}
proc machineType*(this: var OSD_Host): OSD_OEMType {.cdecl, importcpp: "MachineType",
    header: "OSD_Host.hxx".}
proc failed*(this: OSD_Host): bool {.noSideEffect, cdecl, importcpp: "Failed",
                                 header: "OSD_Host.hxx".}
proc reset*(this: var OSD_Host) {.cdecl, importcpp: "Reset", header: "OSD_Host.hxx".}
proc perror*(this: var OSD_Host) {.cdecl, importcpp: "Perror", header: "OSD_Host.hxx".}
proc error*(this: OSD_Host): cint {.noSideEffect, cdecl, importcpp: "Error",
                                header: "OSD_Host.hxx".}

