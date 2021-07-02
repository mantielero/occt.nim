##  Created on: 1992-05-18
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

discard "forward decl of OSD_OSDError"
discard "forward decl of TCollection_AsciiString"
type
  OSD_Error* {.importcpp: "OSD_Error", header: "OSD_Error.hxx", bycopy.} = object ## !
                                                                          ## Initializes Error to be
                                                                          ## without any Error.
                                                                          ## ! This is only used by OSD, not by
                                                                          ## programmer.


proc constructOSD_Error*(): OSD_Error {.constructor, importcpp: "OSD_Error(@)",
                                     header: "OSD_Error.hxx".}
proc perror*(this: var OSD_Error) {.importcpp: "Perror", header: "OSD_Error.hxx".}
proc setValue*(this: var OSD_Error; errcode: StandardInteger; `from`: StandardInteger;
              message: TCollectionAsciiString) {.importcpp: "SetValue",
    header: "OSD_Error.hxx".}
proc error*(this: OSD_Error): StandardInteger {.noSideEffect, importcpp: "Error",
    header: "OSD_Error.hxx".}
proc failed*(this: OSD_Error): StandardBoolean {.noSideEffect, importcpp: "Failed",
    header: "OSD_Error.hxx".}
proc reset*(this: var OSD_Error) {.importcpp: "Reset", header: "OSD_Error.hxx".}

