import ../selectmgr/selectmgr_types
import osd_types



##  Created on: 1992-05-27
##  Created by: Stephan GARNAUD (ARM)
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Disk management (a set of disk oriented tools)



proc newOSD_Disk*(): OSD_Disk {.cdecl, constructor, importcpp: "OSD_Disk(@)",
                             header: "OSD_Disk.hxx".}
proc newOSD_Disk*(name: OSD_Path): OSD_Disk {.cdecl, constructor,
    importcpp: "OSD_Disk(@)", header: "OSD_Disk.hxx".}
proc newOSD_Disk*(pathName: cstring): OSD_Disk {.cdecl, constructor,
    importcpp: "OSD_Disk(@)", header: "OSD_Disk.hxx".}
proc name*(this: OSD_Disk): OSD_Path {.noSideEffect, cdecl, importcpp: "Name",
                                   header: "OSD_Disk.hxx".}
proc setName*(this: var OSD_Disk; name: OSD_Path) {.cdecl, importcpp: "SetName",
    header: "OSD_Disk.hxx".}
proc diskSize*(this: var OSD_Disk): cint {.cdecl, importcpp: "DiskSize",
                                      header: "OSD_Disk.hxx".}
proc diskFree*(this: var OSD_Disk): cint {.cdecl, importcpp: "DiskFree",
                                      header: "OSD_Disk.hxx".}
proc failed*(this: OSD_Disk): bool {.noSideEffect, cdecl, importcpp: "Failed",
                                 header: "OSD_Disk.hxx".}
proc reset*(this: var OSD_Disk) {.cdecl, importcpp: "Reset", header: "OSD_Disk.hxx".}
proc perror*(this: var OSD_Disk) {.cdecl, importcpp: "Perror", header: "OSD_Disk.hxx".}
proc error*(this: OSD_Disk): cint {.noSideEffect, cdecl, importcpp: "Error",
                                header: "OSD_Disk.hxx".}

