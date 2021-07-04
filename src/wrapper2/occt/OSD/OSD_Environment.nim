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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString, OSD_Error,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of OSD_OSDError"
discard "forward decl of TCollection_AsciiString"
type
  OSD_Environment* {.importcpp: "OSD_Environment", header: "OSD_Environment.hxx",
                    bycopy.} = object ## ! Creates the object Environment.


proc constructOSD_Environment*(): OSD_Environment {.constructor,
    importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc constructOSD_Environment*(Name: TCollection_AsciiString): OSD_Environment {.
    constructor, importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc constructOSD_Environment*(Name: TCollection_AsciiString;
                              Value: TCollection_AsciiString): OSD_Environment {.
    constructor, importcpp: "OSD_Environment(@)", header: "OSD_Environment.hxx".}
proc SetValue*(this: var OSD_Environment; Value: TCollection_AsciiString) {.
    importcpp: "SetValue", header: "OSD_Environment.hxx".}
proc Value*(this: var OSD_Environment): TCollection_AsciiString {.importcpp: "Value",
    header: "OSD_Environment.hxx".}
proc SetName*(this: var OSD_Environment; name: TCollection_AsciiString) {.
    importcpp: "SetName", header: "OSD_Environment.hxx".}
proc Name*(this: OSD_Environment): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "OSD_Environment.hxx".}
proc Build*(this: var OSD_Environment) {.importcpp: "Build",
                                     header: "OSD_Environment.hxx".}
proc Remove*(this: var OSD_Environment) {.importcpp: "Remove",
                                      header: "OSD_Environment.hxx".}
proc Failed*(this: OSD_Environment): Standard_Boolean {.noSideEffect,
    importcpp: "Failed", header: "OSD_Environment.hxx".}
proc Reset*(this: var OSD_Environment) {.importcpp: "Reset",
                                     header: "OSD_Environment.hxx".}
proc Perror*(this: var OSD_Environment) {.importcpp: "Perror",
                                      header: "OSD_Environment.hxx".}
proc Error*(this: OSD_Environment): Standard_Integer {.noSideEffect,
    importcpp: "Error", header: "OSD_Environment.hxx".}