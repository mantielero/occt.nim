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

discard "forward decl of OSD_FileNode"
discard "forward decl of OSD_File"
discard "forward decl of OSD_Directory"
type
  OSD_Protection* {.importcpp: "OSD_Protection", header: "OSD_Protection.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Initializes
                                                                                         ## global
                                                                                         ## access
                                                                                         ## rights
                                                                                         ## as
                                                                                         ## follows
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## User
                                                                                         ## :
                                                                                         ## Read
                                                                                         ## Write
                                                                                         ##
                                                                                         ## !
                                                                                         ## System
                                                                                         ## :
                                                                                         ## Read
                                                                                         ## Write
                                                                                         ##
                                                                                         ## !
                                                                                         ## Group
                                                                                         ## :
                                                                                         ## Read
                                                                                         ##
                                                                                         ## !
                                                                                         ## World
                                                                                         ## :
                                                                                         ## Read
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## System
                                                                                         ## dependent
                                                                                         ## access
                                                                                         ## rights
                                                                                         ##
                                                                                         ## !
                                                                                         ## this
                                                                                         ## is
                                                                                         ## a
                                                                                         ## private
                                                                                         ## method.


proc constructOSD_Protection*(): OSD_Protection {.constructor,
    importcpp: "OSD_Protection(@)", header: "OSD_Protection.hxx".}
proc constructOSD_Protection*(system: OSD_SingleProtection;
                             user: OSD_SingleProtection;
                             group: OSD_SingleProtection;
                             world: OSD_SingleProtection): OSD_Protection {.
    constructor, importcpp: "OSD_Protection(@)", header: "OSD_Protection.hxx".}
proc values*(this: var OSD_Protection; system: var OSD_SingleProtection;
            user: var OSD_SingleProtection; group: var OSD_SingleProtection;
            world: var OSD_SingleProtection) {.importcpp: "Values",
    header: "OSD_Protection.hxx".}
proc setValues*(this: var OSD_Protection; system: OSD_SingleProtection;
               user: OSD_SingleProtection; group: OSD_SingleProtection;
               world: OSD_SingleProtection) {.importcpp: "SetValues",
    header: "OSD_Protection.hxx".}
proc setSystem*(this: var OSD_Protection; priv: OSD_SingleProtection) {.
    importcpp: "SetSystem", header: "OSD_Protection.hxx".}
proc setUser*(this: var OSD_Protection; priv: OSD_SingleProtection) {.
    importcpp: "SetUser", header: "OSD_Protection.hxx".}
proc setGroup*(this: var OSD_Protection; priv: OSD_SingleProtection) {.
    importcpp: "SetGroup", header: "OSD_Protection.hxx".}
proc setWorld*(this: var OSD_Protection; priv: OSD_SingleProtection) {.
    importcpp: "SetWorld", header: "OSD_Protection.hxx".}
proc system*(this: OSD_Protection): OSD_SingleProtection {.noSideEffect,
    importcpp: "System", header: "OSD_Protection.hxx".}
proc user*(this: OSD_Protection): OSD_SingleProtection {.noSideEffect,
    importcpp: "User", header: "OSD_Protection.hxx".}
proc group*(this: OSD_Protection): OSD_SingleProtection {.noSideEffect,
    importcpp: "Group", header: "OSD_Protection.hxx".}
proc world*(this: OSD_Protection): OSD_SingleProtection {.noSideEffect,
    importcpp: "World", header: "OSD_Protection.hxx".}
proc add*(this: var OSD_Protection; aProt: var OSD_SingleProtection;
         aRight: OSD_SingleProtection) {.importcpp: "Add",
                                       header: "OSD_Protection.hxx".}
proc sub*(this: var OSD_Protection; aProt: var OSD_SingleProtection;
         aRight: OSD_SingleProtection) {.importcpp: "Sub",
                                       header: "OSD_Protection.hxx".}

























