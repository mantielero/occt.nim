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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, OSD_Directory, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Address, OSD_Error,
  ../Standard/Standard_Boolean

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


proc constructOSD_DirectoryIterator*(): OSD_DirectoryIterator {.constructor,
    importcpp: "OSD_DirectoryIterator(@)", header: "OSD_DirectoryIterator.hxx".}
proc constructOSD_DirectoryIterator*(where: OSD_Path; Mask: TCollection_AsciiString): OSD_DirectoryIterator {.
    constructor, importcpp: "OSD_DirectoryIterator(@)",
    header: "OSD_DirectoryIterator.hxx".}
proc Destroy*(this: var OSD_DirectoryIterator) {.importcpp: "Destroy",
    header: "OSD_DirectoryIterator.hxx".}
proc destroyOSD_DirectoryIterator*(this: var OSD_DirectoryIterator) {.
    importcpp: "#.~OSD_DirectoryIterator()", header: "OSD_DirectoryIterator.hxx".}
proc Initialize*(this: var OSD_DirectoryIterator; where: OSD_Path;
                Mask: TCollection_AsciiString) {.importcpp: "Initialize",
    header: "OSD_DirectoryIterator.hxx".}
proc More*(this: var OSD_DirectoryIterator): Standard_Boolean {.importcpp: "More",
    header: "OSD_DirectoryIterator.hxx".}
proc Next*(this: var OSD_DirectoryIterator) {.importcpp: "Next",
    header: "OSD_DirectoryIterator.hxx".}
proc Values*(this: var OSD_DirectoryIterator): OSD_Directory {.importcpp: "Values",
    header: "OSD_DirectoryIterator.hxx".}
proc Failed*(this: OSD_DirectoryIterator): Standard_Boolean {.noSideEffect,
    importcpp: "Failed", header: "OSD_DirectoryIterator.hxx".}
proc Reset*(this: var OSD_DirectoryIterator) {.importcpp: "Reset",
    header: "OSD_DirectoryIterator.hxx".}
proc Perror*(this: var OSD_DirectoryIterator) {.importcpp: "Perror",
    header: "OSD_DirectoryIterator.hxx".}
proc Error*(this: OSD_DirectoryIterator): Standard_Integer {.noSideEffect,
    importcpp: "Error", header: "OSD_DirectoryIterator.hxx".}