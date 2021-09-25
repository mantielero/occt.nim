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

discard "forward decl of OSD_OSDError"
discard "forward decl of Quantity_Date"
discard "forward decl of OSD_Path"
# when defined(SetCurrentDirectory):
#   discard
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


proc executablePath*(): TCollectionAsciiString {.
    importcpp: "OSD_Process::ExecutablePath(@)", header: "OSD_Process.hxx".}
proc executableFolder*(): TCollectionAsciiString {.
    importcpp: "OSD_Process::ExecutableFolder(@)", header: "OSD_Process.hxx".}
proc constructOSD_Process*(): OSD_Process {.constructor,
    importcpp: "OSD_Process(@)", header: "OSD_Process.hxx".}
proc terminalType*(this: var OSD_Process; name: var TCollectionAsciiString) {.
    importcpp: "TerminalType", header: "OSD_Process.hxx".}
proc systemDate*(this: var OSD_Process): QuantityDate {.importcpp: "SystemDate",
    header: "OSD_Process.hxx".}
proc userName*(this: var OSD_Process): TCollectionAsciiString {.
    importcpp: "UserName", header: "OSD_Process.hxx".}
proc isSuperUser*(this: var OSD_Process): bool {.importcpp: "IsSuperUser",
    header: "OSD_Process.hxx".}
proc processId*(this: var OSD_Process): int {.importcpp: "ProcessId",
    header: "OSD_Process.hxx".}
proc currentDirectory*(this: var OSD_Process): OSD_Path {.
    importcpp: "CurrentDirectory", header: "OSD_Process.hxx".}
proc setCurrentDirectory*(this: var OSD_Process; where: OSD_Path) {.
    importcpp: "SetCurrentDirectory", header: "OSD_Process.hxx".}
proc failed*(this: OSD_Process): bool {.noSideEffect, importcpp: "Failed",
                                    header: "OSD_Process.hxx".}
proc reset*(this: var OSD_Process) {.importcpp: "Reset", header: "OSD_Process.hxx".}
proc perror*(this: var OSD_Process) {.importcpp: "Perror", header: "OSD_Process.hxx".}
proc error*(this: OSD_Process): int {.noSideEffect, importcpp: "Error",
                                  header: "OSD_Process.hxx".}
