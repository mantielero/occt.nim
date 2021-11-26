##  Created on: 2024-03-15
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

discard "forward decl of OSD_OSDError"
discard "forward decl of Standard_ProgramError"
discard "forward decl of OSD_Protection"
discard "forward decl of Quantity_Date"
type
  OSD_FileNode* {.importcpp: "OSD_FileNode", header: "OSD_FileNode.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Gets
                                                                                   ## file
                                                                                   ## name
                                                                                   ## and
                                                                                   ## path.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## FileNode
                                                                                   ## object
                                                                                   ##
                                                                                   ## !
                                                                                   ## This
                                                                                   ## is
                                                                                   ## to
                                                                                   ## be
                                                                                   ## used
                                                                                   ## with
                                                                                   ## SetPath
                                                                                   ## .
                                                                                   ##
                                                                                   ## !
                                                                                   ## Allocate
                                                                                   ## space
                                                                                   ## for
                                                                                   ## the
                                                                                   ## file
                                                                                   ## name
                                                                                   ## and
                                                                                   ## initializes
                                                                                   ## this
                                                                                   ##
                                                                                   ## !
                                                                                   ## name
                                                                                   ## to
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## name.


proc path*(this: OSD_FileNode; name: var OSD_Path) {.noSideEffect, importcpp: "Path",
    header: "OSD_FileNode.hxx".}
proc setPath*(this: var OSD_FileNode; name: OSD_Path) {.importcpp: "SetPath",
    header: "OSD_FileNode.hxx".}
proc exists*(this: var OSD_FileNode): bool {.importcpp: "Exists",
                                        header: "OSD_FileNode.hxx".}
proc remove*(this: var OSD_FileNode) {.importcpp: "Remove", header: "OSD_FileNode.hxx".}
proc move*(this: var OSD_FileNode; newPath: OSD_Path) {.importcpp: "Move",
    header: "OSD_FileNode.hxx".}
proc copy*(this: var OSD_FileNode; toPath: OSD_Path) {.importcpp: "Copy",
    header: "OSD_FileNode.hxx".}
proc protection*(this: var OSD_FileNode): OSD_Protection {.importcpp: "Protection",
    header: "OSD_FileNode.hxx".}
proc setProtection*(this: var OSD_FileNode; prot: OSD_Protection) {.
    importcpp: "SetProtection", header: "OSD_FileNode.hxx".}
proc accessMoment*(this: var OSD_FileNode): QuantityDate {.importcpp: "AccessMoment",
    header: "OSD_FileNode.hxx".}
proc creationMoment*(this: var OSD_FileNode): QuantityDate {.
    importcpp: "CreationMoment", header: "OSD_FileNode.hxx".}
proc failed*(this: OSD_FileNode): bool {.noSideEffect, importcpp: "Failed",
                                     header: "OSD_FileNode.hxx".}
proc reset*(this: var OSD_FileNode) {.importcpp: "Reset", header: "OSD_FileNode.hxx".}
proc perror*(this: var OSD_FileNode) {.importcpp: "Perror", header: "OSD_FileNode.hxx".}
proc error*(this: OSD_FileNode): cint {.noSideEffect, importcpp: "Error",
                                    header: "OSD_FileNode.hxx".}

























