import ../standard/standard_types
import osd_types



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

## ! This class measures CPU time (both user and system) consumed
## ! by current process or thread. The chronometer can be started
## ! and stopped multiple times, and measures cumulative time.
## !
## ! If only the thread is measured, calls to Stop() and Show()
## ! must occur from the same thread where Start() was called
## ! (unless chronometer is stopped); otherwise measurement will
## ! yield false values.



proc newOSD_Chronometer*(theThisThreadOnly: bool = false): OSD_Chronometer {.cdecl,
    constructor, importcpp: "OSD_Chronometer(@)", header: "OSD_Chronometer.hxx".}
proc destroyOSD_Chronometer*(this: var OSD_Chronometer) {.cdecl,
    importcpp: "#.~OSD_Chronometer()", header: "OSD_Chronometer.hxx".}
proc isStarted*(this: OSD_Chronometer): bool {.noSideEffect, cdecl,
    importcpp: "IsStarted", header: "OSD_Chronometer.hxx".}
proc reset*(this: var OSD_Chronometer) {.cdecl, importcpp: "Reset",
                                     header: "OSD_Chronometer.hxx".}
proc restart*(this: var OSD_Chronometer) {.cdecl, importcpp: "Restart",
                                       header: "OSD_Chronometer.hxx".}
proc stop*(this: var OSD_Chronometer) {.cdecl, importcpp: "Stop",
                                    header: "OSD_Chronometer.hxx".}
proc start*(this: var OSD_Chronometer) {.cdecl, importcpp: "Start",
                                     header: "OSD_Chronometer.hxx".}
proc show*(this: OSD_Chronometer) {.noSideEffect, cdecl, importcpp: "Show",
                                 header: "OSD_Chronometer.hxx".}
proc show*(this: OSD_Chronometer; theOStream: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Show", header: "OSD_Chronometer.hxx".}
proc userTimeCPU*(this: OSD_Chronometer): cfloat {.noSideEffect, cdecl,
    importcpp: "UserTimeCPU", header: "OSD_Chronometer.hxx".}
proc systemTimeCPU*(this: OSD_Chronometer): cfloat {.noSideEffect, cdecl,
    importcpp: "SystemTimeCPU", header: "OSD_Chronometer.hxx".}
proc show*(this: OSD_Chronometer; theUserSeconds: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Show", header: "OSD_Chronometer.hxx".}
proc show*(this: OSD_Chronometer; theUserSec: var cfloat; theSystemSec: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Show", header: "OSD_Chronometer.hxx".}
proc getProcessCPU*(userSeconds: var cfloat; systemSeconds: var cfloat) {.cdecl,
    importcpp: "OSD_Chronometer::GetProcessCPU(@)", header: "OSD_Chronometer.hxx".}
proc getThreadCPU*(userSeconds: var cfloat; systemSeconds: var cfloat) {.cdecl,
    importcpp: "OSD_Chronometer::GetThreadCPU(@)", header: "OSD_Chronometer.hxx".}

