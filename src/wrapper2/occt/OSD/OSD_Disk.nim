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

import
  ../TCollection/TCollection_AsciiString, OSD_Error, OSD_Path

## ! Disk management (a set of disk oriented tools)

type
  OSD_Disk* {.importcpp: "OSD_Disk", header: "OSD_Disk.hxx", bycopy.} = object ## ! Creates a disk object.
                                                                       ## ! This is used only when a class contains a Disk field.
                                                                       ## ! By default, its name is
                                                                       ## initialized to current working disk.


proc constructOSD_Disk*(): OSD_Disk {.constructor, importcpp: "OSD_Disk(@)",
                                   header: "OSD_Disk.hxx".}
proc constructOSD_Disk*(Name: OSD_Path): OSD_Disk {.constructor,
    importcpp: "OSD_Disk(@)", header: "OSD_Disk.hxx".}
proc constructOSD_Disk*(PathName: Standard_CString): OSD_Disk {.constructor,
    importcpp: "OSD_Disk(@)", header: "OSD_Disk.hxx".}
proc Name*(this: OSD_Disk): OSD_Path {.noSideEffect, importcpp: "Name",
                                   header: "OSD_Disk.hxx".}
proc SetName*(this: var OSD_Disk; Name: OSD_Path) {.importcpp: "SetName",
    header: "OSD_Disk.hxx".}
proc DiskSize*(this: var OSD_Disk): Standard_Integer {.importcpp: "DiskSize",
    header: "OSD_Disk.hxx".}
proc DiskFree*(this: var OSD_Disk): Standard_Integer {.importcpp: "DiskFree",
    header: "OSD_Disk.hxx".}
proc Failed*(this: OSD_Disk): Standard_Boolean {.noSideEffect, importcpp: "Failed",
    header: "OSD_Disk.hxx".}
proc Reset*(this: var OSD_Disk) {.importcpp: "Reset", header: "OSD_Disk.hxx".}
proc Perror*(this: var OSD_Disk) {.importcpp: "Perror", header: "OSD_Disk.hxx".}
proc Error*(this: OSD_Disk): Standard_Integer {.noSideEffect, importcpp: "Error",
    header: "OSD_Disk.hxx".}