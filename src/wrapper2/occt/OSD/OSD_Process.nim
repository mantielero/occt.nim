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
  ../Standard/Standard_Handle, OSD_Error, ../TCollection/TCollection_AsciiString

discard "forward decl of OSD_OSDError"
discard "forward decl of Quantity_Date"
discard "forward decl of OSD_Path"
when defined(SetCurrentDirectory):
  discard
## ! A set of system process tools

type
  OSD_Process* {.importcpp: "OSD_Process", header: "OSD_Process.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Return
                                                                                ## full
                                                                                ## path
                                                                                ## to
                                                                                ## the
                                                                                ## current
                                                                                ## process
                                                                                ## executable.
                                                                                ##
                                                                                ## !
                                                                                ## Initializes
                                                                                ## the
                                                                                ## object
                                                                                ## and
                                                                                ## prepare
                                                                                ## for
                                                                                ## a
                                                                                ## possible
                                                                                ## dump


proc ExecutablePath*(): TCollection_AsciiString {.
    importcpp: "OSD_Process::ExecutablePath(@)", header: "OSD_Process.hxx".}
proc ExecutableFolder*(): TCollection_AsciiString {.
    importcpp: "OSD_Process::ExecutableFolder(@)", header: "OSD_Process.hxx".}
proc constructOSD_Process*(): OSD_Process {.constructor,
    importcpp: "OSD_Process(@)", header: "OSD_Process.hxx".}
proc TerminalType*(this: var OSD_Process; Name: var TCollection_AsciiString) {.
    importcpp: "TerminalType", header: "OSD_Process.hxx".}
proc SystemDate*(this: var OSD_Process): Quantity_Date {.importcpp: "SystemDate",
    header: "OSD_Process.hxx".}
proc UserName*(this: var OSD_Process): TCollection_AsciiString {.
    importcpp: "UserName", header: "OSD_Process.hxx".}
proc IsSuperUser*(this: var OSD_Process): Standard_Boolean {.
    importcpp: "IsSuperUser", header: "OSD_Process.hxx".}
proc ProcessId*(this: var OSD_Process): Standard_Integer {.importcpp: "ProcessId",
    header: "OSD_Process.hxx".}
proc CurrentDirectory*(this: var OSD_Process): OSD_Path {.
    importcpp: "CurrentDirectory", header: "OSD_Process.hxx".}
proc SetCurrentDirectory*(this: var OSD_Process; where: OSD_Path) {.
    importcpp: "SetCurrentDirectory", header: "OSD_Process.hxx".}
proc Failed*(this: OSD_Process): Standard_Boolean {.noSideEffect,
    importcpp: "Failed", header: "OSD_Process.hxx".}
proc Reset*(this: var OSD_Process) {.importcpp: "Reset", header: "OSD_Process.hxx".}
proc Perror*(this: var OSD_Process) {.importcpp: "Perror", header: "OSD_Process.hxx".}
proc Error*(this: OSD_Process): Standard_Integer {.noSideEffect, importcpp: "Error",
    header: "OSD_Process.hxx".}