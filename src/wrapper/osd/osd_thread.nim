import ../standard/standard_types
#import ../selectmgr/selectmgr_types
import osd_types



##  Created on: 2006-03-10
##  Created by: data exchange team
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## ! A simple platform-intependent interface to execute
## ! and control threads.



proc newOSD_Thread*(): OSD_Thread {.cdecl, constructor, importcpp: "OSD_Thread(@)",
                                 header: "OSD_Thread.hxx".}
proc newOSD_Thread*(`func`: OSD_ThreadFunction): OSD_Thread {.cdecl, constructor,
    importcpp: "OSD_Thread(@)", header: "OSD_Thread.hxx".}
proc newOSD_Thread*(other: OSD_Thread): OSD_Thread {.cdecl, constructor,
    importcpp: "OSD_Thread(@)", header: "OSD_Thread.hxx".}
proc assign*(this: var OSD_Thread; other: OSD_Thread) {.cdecl, importcpp: "Assign",
    header: "OSD_Thread.hxx".}
proc destroyOSD_Thread*(this: var OSD_Thread) {.cdecl, importcpp: "#.~OSD_Thread()",
    header: "OSD_Thread.hxx".}
proc setPriority*(this: var OSD_Thread; thePriority: cint) {.cdecl,
    importcpp: "SetPriority", header: "OSD_Thread.hxx".}
proc setFunction*(this: var OSD_Thread; `func`: OSD_ThreadFunction) {.cdecl,
    importcpp: "SetFunction", header: "OSD_Thread.hxx".}
proc run*(this: var OSD_Thread; data: pointer = cast[pointer](0); wNTStackSize: cint = 0): bool {.cdecl,
    importcpp: "Run", header: "OSD_Thread.hxx".}
proc detach*(this: var OSD_Thread) {.cdecl, importcpp: "Detach",
                                 header: "OSD_Thread.hxx".}
proc wait*(this: var OSD_Thread): bool {.cdecl, importcpp: "Wait",
                                    header: "OSD_Thread.hxx".}
proc wait*(this: var OSD_Thread; theResult: var pointer): bool {.cdecl,
    importcpp: "Wait", header: "OSD_Thread.hxx".}
proc wait*(this: var OSD_Thread; time: cint; theResult: var pointer): bool {.cdecl,
    importcpp: "Wait", header: "OSD_Thread.hxx".}
proc getId*(this: OSD_Thread): StandardThreadId {.noSideEffect, cdecl,
    importcpp: "GetId", header: "OSD_Thread.hxx".}
proc current*(): StandardThreadId {.cdecl, importcpp: "OSD_Thread::Current(@)",
                                 header: "OSD_Thread.hxx".}

