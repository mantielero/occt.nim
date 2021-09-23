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

import
  OSD_File, OSD_Error, ../TCollection/TCollection_AsciiString

discard "forward decl of OSD_OSDError"
discard "forward decl of OSD_Path"
discard "forward decl of OSD_File"
type
  OSD_FileIterator* {.importcpp: "OSD_FileIterator",
                     header: "OSD_FileIterator.hxx", bycopy.} = object ## ! Instantiates Object as empty Iterator;
    ##  platform-specific fields
    when defined(_WIN32):
      discard
    when defined(_WIN32):
      discard
    when defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard


proc constructOSD_FileIterator*(): OSD_FileIterator {.constructor,
    importcpp: "OSD_FileIterator(@)", header: "OSD_FileIterator.hxx".}
proc constructOSD_FileIterator*(where: OSD_Path; Mask: TCollection_AsciiString): OSD_FileIterator {.
    constructor, importcpp: "OSD_FileIterator(@)", header: "OSD_FileIterator.hxx".}
proc Destroy*(this: var OSD_FileIterator) {.importcpp: "Destroy",
                                        header: "OSD_FileIterator.hxx".}
proc destroyOSD_FileIterator*(this: var OSD_FileIterator) {.
    importcpp: "#.~OSD_FileIterator()", header: "OSD_FileIterator.hxx".}
proc Initialize*(this: var OSD_FileIterator; where: OSD_Path;
                Mask: TCollection_AsciiString) {.importcpp: "Initialize",
    header: "OSD_FileIterator.hxx".}
proc More*(this: var OSD_FileIterator): Standard_Boolean {.importcpp: "More",
    header: "OSD_FileIterator.hxx".}
proc Next*(this: var OSD_FileIterator) {.importcpp: "Next",
                                     header: "OSD_FileIterator.hxx".}
proc Values*(this: var OSD_FileIterator): OSD_File {.importcpp: "Values",
    header: "OSD_FileIterator.hxx".}
proc Failed*(this: OSD_FileIterator): Standard_Boolean {.noSideEffect,
    importcpp: "Failed", header: "OSD_FileIterator.hxx".}
proc Reset*(this: var OSD_FileIterator) {.importcpp: "Reset",
                                      header: "OSD_FileIterator.hxx".}
proc Perror*(this: var OSD_FileIterator) {.importcpp: "Perror",
                                       header: "OSD_FileIterator.hxx".}
proc Error*(this: OSD_FileIterator): Standard_Integer {.noSideEffect,
    importcpp: "Error", header: "OSD_FileIterator.hxx".}