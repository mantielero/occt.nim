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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of OSD_OSDError"
discard "forward decl of TCollection_AsciiString"
type
  OSD_Environment* {.importcpp: "OSD_Environment", header: "OSD_Environment.hxx",
                    bycopy.} = object ## ! Creates the object Environment.


proc constructOSD_Environment*(): OSD_Environment {.constructor,
    importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc constructOSD_Environment*(name: TCollectionAsciiString): OSD_Environment {.
    constructor, importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc constructOSD_Environment*(name: TCollectionAsciiString;
                              value: TCollectionAsciiString): OSD_Environment {.
    constructor, importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc setValue*(this: var OSD_Environment; value: TCollectionAsciiString) {.
    importcpp: "SetValue", header: "OSD_Environment.hxx".}
proc value*(this: var OSD_Environment): TCollectionAsciiString {.importcpp: "Value",
    header: "OSD_Environment.hxx".}
proc setName*(this: var OSD_Environment; name: TCollectionAsciiString) {.
    importcpp: "SetName", header: "OSD_Environment.hxx".}
proc name*(this: OSD_Environment): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "OSD_Environment.hxx".}
proc build*(this: var OSD_Environment) {.importcpp: "Build",
                                     header: "OSD_Environment.hxx".}
proc remove*(this: var OSD_Environment) {.importcpp: "Remove",
                                      header: "OSD_Environment.hxx".}
proc failed*(this: OSD_Environment): bool {.noSideEffect, importcpp: "Failed",
                                        header: "OSD_Environment.hxx".}
proc reset*(this: var OSD_Environment) {.importcpp: "Reset",
                                     header: "OSD_Environment.hxx".}
proc perror*(this: var OSD_Environment) {.importcpp: "Perror",
                                      header: "OSD_Environment.hxx".}
proc error*(this: OSD_Environment): cint {.noSideEffect, importcpp: "Error",
                                       header: "OSD_Environment.hxx".}

























