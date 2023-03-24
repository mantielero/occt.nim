#import ../selectmgr/selectmgr_types
import ../tcollection/tcollection_types
import osd_types
import ../quantity/quantity_types



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

when defined(SetCurrentDirectory):
  discard
## ! A set of system process tools



proc executablePath*(): TCollectionAsciiString {.cdecl,
    importcpp: "OSD_Process::ExecutablePath(@)", header: "OSD_Process.hxx".}
proc executableFolder*(): TCollectionAsciiString {.cdecl,
    importcpp: "OSD_Process::ExecutableFolder(@)", header: "OSD_Process.hxx".}
proc newOSD_Process*(): OSD_Process {.cdecl, constructor,
                                   importcpp: "OSD_Process(@)",
                                   header: "OSD_Process.hxx".}
proc terminalType*(this: var OSD_Process; name: var TCollectionAsciiString) {.cdecl,
    importcpp: "TerminalType", header: "OSD_Process.hxx".}
proc systemDate*(this: var OSD_Process): QuantityDate {.cdecl,
    importcpp: "SystemDate", header: "OSD_Process.hxx".}
proc userName*(this: var OSD_Process): TCollectionAsciiString {.cdecl,
    importcpp: "UserName", header: "OSD_Process.hxx".}
proc isSuperUser*(this: var OSD_Process): bool {.cdecl, importcpp: "IsSuperUser",
    header: "OSD_Process.hxx".}
proc processId*(this: var OSD_Process): cint {.cdecl, importcpp: "ProcessId",
    header: "OSD_Process.hxx".}
proc currentDirectory*(this: var OSD_Process): OSD_Path {.cdecl,
    importcpp: "CurrentDirectory", header: "OSD_Process.hxx".}
proc setCurrentDirectory*(this: var OSD_Process; where: OSD_Path) {.cdecl,
    importcpp: "SetCurrentDirectory", header: "OSD_Process.hxx".}
proc failed*(this: OSD_Process): bool {.noSideEffect, cdecl, importcpp: "Failed",
                                    header: "OSD_Process.hxx".}
proc reset*(this: var OSD_Process) {.cdecl, importcpp: "Reset",
                                 header: "OSD_Process.hxx".}
proc perror*(this: var OSD_Process) {.cdecl, importcpp: "Perror",
                                  header: "OSD_Process.hxx".}
proc error*(this: OSD_Process): cint {.noSideEffect, cdecl, importcpp: "Error",
                                   header: "OSD_Process.hxx".}

