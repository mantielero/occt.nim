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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

## ! This class measures CPU time (both user and system) consumed
## ! by current process or thread. The chronometer can be started
## ! and stopped multiple times, and measures cumulative time.
## !
## ! If only the thread is measured, calls to Stop() and Show()
## ! must occur from the same thread where Start() was called
## ! (unless chronometer is stopped); otherwise measurement will
## ! yield false values.

type
  OSD_Chronometer* {.importcpp: "OSD_Chronometer", header: "OSD_Chronometer.hxx",
                    bycopy.} = object ## ! Initializes a stopped Chronometer.
                                   ## !
                                   ## ! If ThisThreadOnly is True, measured CPU time will account
                                   ## ! time of the current thread only; otherwise CPU of the
                                   ## ! process (all threads, and completed children) is measured.
                                   ## ! Returns CPU time (user and system) consumed by the current
                                   ## ! process since its start, in seconds. The actual precision of
                                   ## ! the measurement depends on granularity provided by the system,
                                   ## ! and is platform-specific.


proc constructOSD_Chronometer*(theThisThreadOnly: Standard_Boolean = Standard_False): OSD_Chronometer {.
    constructor, importcpp: "OSD_Chronometer(@)", header: "OSD_Chronometer.hxx".}
proc destroyOSD_Chronometer*(this: var OSD_Chronometer) {.
    importcpp: "#.~OSD_Chronometer()", header: "OSD_Chronometer.hxx".}
proc IsStarted*(this: OSD_Chronometer): Standard_Boolean {.noSideEffect,
    importcpp: "IsStarted", header: "OSD_Chronometer.hxx".}
proc Reset*(this: var OSD_Chronometer) {.importcpp: "Reset",
                                     header: "OSD_Chronometer.hxx".}
proc Restart*(this: var OSD_Chronometer) {.importcpp: "Restart",
                                       header: "OSD_Chronometer.hxx".}
proc Stop*(this: var OSD_Chronometer) {.importcpp: "Stop",
                                    header: "OSD_Chronometer.hxx".}
proc Start*(this: var OSD_Chronometer) {.importcpp: "Start",
                                     header: "OSD_Chronometer.hxx".}
proc Show*(this: OSD_Chronometer) {.noSideEffect, importcpp: "Show",
                                 header: "OSD_Chronometer.hxx".}
proc Show*(this: OSD_Chronometer; theOStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Show", header: "OSD_Chronometer.hxx".}
proc UserTimeCPU*(this: OSD_Chronometer): Standard_Real {.noSideEffect,
    importcpp: "UserTimeCPU", header: "OSD_Chronometer.hxx".}
proc SystemTimeCPU*(this: OSD_Chronometer): Standard_Real {.noSideEffect,
    importcpp: "SystemTimeCPU", header: "OSD_Chronometer.hxx".}
proc Show*(this: OSD_Chronometer; theUserSeconds: var Standard_Real) {.noSideEffect,
    importcpp: "Show", header: "OSD_Chronometer.hxx".}
proc Show*(this: OSD_Chronometer; theUserSec: var Standard_Real;
          theSystemSec: var Standard_Real) {.noSideEffect, importcpp: "Show",
    header: "OSD_Chronometer.hxx".}
proc GetProcessCPU*(UserSeconds: var Standard_Real; SystemSeconds: var Standard_Real) {.
    importcpp: "OSD_Chronometer::GetProcessCPU(@)", header: "OSD_Chronometer.hxx".}
proc GetThreadCPU*(UserSeconds: var Standard_Real; SystemSeconds: var Standard_Real) {.
    importcpp: "OSD_Chronometer::GetThreadCPU(@)", header: "OSD_Chronometer.hxx".}