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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString, OSD_Error,
  OSD_SysType, ../Standard/Standard_Integer, OSD_OEMType,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of OSD_OSDError"
discard "forward decl of TCollection_AsciiString"
type
  OSD_Host* {.importcpp: "OSD_Host", header: "OSD_Host.hxx", bycopy.} = object ## !
                                                                       ## Initializes current host by default.


proc constructOSD_Host*(): OSD_Host {.constructor, importcpp: "OSD_Host(@)",
                                   header: "OSD_Host.hxx".}
proc SystemVersion*(this: var OSD_Host): TCollection_AsciiString {.
    importcpp: "SystemVersion", header: "OSD_Host.hxx".}
proc SystemId*(this: OSD_Host): OSD_SysType {.noSideEffect, importcpp: "SystemId",
    header: "OSD_Host.hxx".}
proc HostName*(this: var OSD_Host): TCollection_AsciiString {.importcpp: "HostName",
    header: "OSD_Host.hxx".}
proc AvailableMemory*(this: var OSD_Host): Standard_Integer {.
    importcpp: "AvailableMemory", header: "OSD_Host.hxx".}
proc InternetAddress*(this: var OSD_Host): TCollection_AsciiString {.
    importcpp: "InternetAddress", header: "OSD_Host.hxx".}
proc MachineType*(this: var OSD_Host): OSD_OEMType {.importcpp: "MachineType",
    header: "OSD_Host.hxx".}
proc Failed*(this: OSD_Host): Standard_Boolean {.noSideEffect, importcpp: "Failed",
    header: "OSD_Host.hxx".}
proc Reset*(this: var OSD_Host) {.importcpp: "Reset", header: "OSD_Host.hxx".}
proc Perror*(this: var OSD_Host) {.importcpp: "Perror", header: "OSD_Host.hxx".}
proc Error*(this: OSD_Host): Standard_Integer {.noSideEffect, importcpp: "Error",
    header: "OSD_Host.hxx".}