##  Created on: 1992-05-18
##  Created by: Stephan GARNAUD
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

discard "forward decl of OSD_OSDError"
discard "forward decl of OSD_Path"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of OSD_Directory"
type
  OSD_DirectoryIterator* {.importcpp: "OSD_DirectoryIterator",
                          header: "OSD_DirectoryIterator.hxx", bycopy.} = object ## !
                                                                            ## Instantiates
                                                                            ## Object as
                                                                            ## empty
                                                                            ## Iterator;
    ##  platform-specific fields
#     when defined windows:
#       discard
#     when defined windows:
#       discard
#     when defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard


proc constructOSD_DirectoryIterator*(): OSD_DirectoryIterator {.constructor,
    importcpp: "OSD_DirectoryIterator(@)", header: "OSD_DirectoryIterator.hxx".}
proc constructOSD_DirectoryIterator*(where: OSD_Path; mask: TCollectionAsciiString): OSD_DirectoryIterator {.
    constructor, importcpp: "OSD_DirectoryIterator(@)",
    header: "OSD_DirectoryIterator.hxx".}
proc destroy*(this: var OSD_DirectoryIterator) {.importcpp: "Destroy",
    header: "OSD_DirectoryIterator.hxx".}
proc destroyOSD_DirectoryIterator*(this: var OSD_DirectoryIterator) {.
    importcpp: "#.~OSD_DirectoryIterator()", header: "OSD_DirectoryIterator.hxx".}
proc initialize*(this: var OSD_DirectoryIterator; where: OSD_Path;
                mask: TCollectionAsciiString) {.importcpp: "Initialize",
    header: "OSD_DirectoryIterator.hxx".}
proc more*(this: var OSD_DirectoryIterator): StandardBoolean {.importcpp: "More",
    header: "OSD_DirectoryIterator.hxx".}
proc next*(this: var OSD_DirectoryIterator) {.importcpp: "Next",
    header: "OSD_DirectoryIterator.hxx".}
proc values*(this: var OSD_DirectoryIterator): OSD_Directory {.importcpp: "Values",
    header: "OSD_DirectoryIterator.hxx".}
proc failed*(this: OSD_DirectoryIterator): StandardBoolean {.noSideEffect,
    importcpp: "Failed", header: "OSD_DirectoryIterator.hxx".}
proc reset*(this: var OSD_DirectoryIterator) {.importcpp: "Reset",
    header: "OSD_DirectoryIterator.hxx".}
proc perror*(this: var OSD_DirectoryIterator) {.importcpp: "Perror",
    header: "OSD_DirectoryIterator.hxx".}
proc error*(this: OSD_DirectoryIterator): StandardInteger {.noSideEffect,
    importcpp: "Error", header: "OSD_DirectoryIterator.hxx".}

