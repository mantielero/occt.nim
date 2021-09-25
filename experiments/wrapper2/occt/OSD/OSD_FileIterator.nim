##  Created on: 1992-03-18
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
discard "forward decl of OSD_File"
type
  OSD_FileIterator* {.importcpp: "OSD_FileIterator",
                     header: "OSD_FileIterator.hxx", bycopy.} = object ## ! Instantiates Object as empty Iterator;
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


proc constructOSD_FileIterator*(): OSD_FileIterator {.constructor,
    importcpp: "OSD_FileIterator(@)", header: "OSD_FileIterator.hxx".}
proc constructOSD_FileIterator*(where: OSD_Path; mask: TCollectionAsciiString): OSD_FileIterator {.
    constructor, importcpp: "OSD_FileIterator(@)", header: "OSD_FileIterator.hxx".}
proc destroy*(this: var OSD_FileIterator) {.importcpp: "Destroy",
                                        header: "OSD_FileIterator.hxx".}
proc destroyOSD_FileIterator*(this: var OSD_FileIterator) {.
    importcpp: "#.~OSD_FileIterator()", header: "OSD_FileIterator.hxx".}
proc initialize*(this: var OSD_FileIterator; where: OSD_Path;
                mask: TCollectionAsciiString) {.importcpp: "Initialize",
    header: "OSD_FileIterator.hxx".}
proc more*(this: var OSD_FileIterator): bool {.importcpp: "More",
    header: "OSD_FileIterator.hxx".}
proc next*(this: var OSD_FileIterator) {.importcpp: "Next",
                                     header: "OSD_FileIterator.hxx".}
proc values*(this: var OSD_FileIterator): OSD_File {.importcpp: "Values",
    header: "OSD_FileIterator.hxx".}
proc failed*(this: OSD_FileIterator): bool {.noSideEffect, importcpp: "Failed",
    header: "OSD_FileIterator.hxx".}
proc reset*(this: var OSD_FileIterator) {.importcpp: "Reset",
                                      header: "OSD_FileIterator.hxx".}
proc perror*(this: var OSD_FileIterator) {.importcpp: "Perror",
                                       header: "OSD_FileIterator.hxx".}
proc error*(this: OSD_FileIterator): int {.noSideEffect, importcpp: "Error",
                                       header: "OSD_FileIterator.hxx".}
