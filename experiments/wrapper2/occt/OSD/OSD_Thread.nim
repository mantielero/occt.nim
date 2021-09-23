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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, OSD_ThreadFunction, OSD_PThread,
  ../Standard/Standard_ThreadId, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Address

## ! A simple platform-intependent interface to execute
## ! and control threads.

type
  OSD_Thread* {.importcpp: "OSD_Thread", header: "OSD_Thread.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructOSD_Thread*(): OSD_Thread {.constructor, importcpp: "OSD_Thread(@)",
                                       header: "OSD_Thread.hxx".}
proc constructOSD_Thread*(`func`: OSD_ThreadFunction): OSD_Thread {.constructor,
    importcpp: "OSD_Thread(@)", header: "OSD_Thread.hxx".}
proc constructOSD_Thread*(other: OSD_Thread): OSD_Thread {.constructor,
    importcpp: "OSD_Thread(@)", header: "OSD_Thread.hxx".}
proc Assign*(this: var OSD_Thread; other: OSD_Thread) {.importcpp: "Assign",
    header: "OSD_Thread.hxx".}
proc destroyOSD_Thread*(this: var OSD_Thread) {.importcpp: "#.~OSD_Thread()",
    header: "OSD_Thread.hxx".}
proc SetPriority*(this: var OSD_Thread; thePriority: Standard_Integer) {.
    importcpp: "SetPriority", header: "OSD_Thread.hxx".}
proc SetFunction*(this: var OSD_Thread; `func`: OSD_ThreadFunction) {.
    importcpp: "SetFunction", header: "OSD_Thread.hxx".}
proc Run*(this: var OSD_Thread; data: Standard_Address = 0;
         WNTStackSize: Standard_Integer = 0): Standard_Boolean {.importcpp: "Run",
    header: "OSD_Thread.hxx".}
proc Detach*(this: var OSD_Thread) {.importcpp: "Detach", header: "OSD_Thread.hxx".}
proc Wait*(this: var OSD_Thread): Standard_Boolean {.importcpp: "Wait",
    header: "OSD_Thread.hxx".}
proc Wait*(this: var OSD_Thread; theResult: var Standard_Address): Standard_Boolean {.
    importcpp: "Wait", header: "OSD_Thread.hxx".}
proc Wait*(this: var OSD_Thread; time: Standard_Integer;
          theResult: var Standard_Address): Standard_Boolean {.importcpp: "Wait",
    header: "OSD_Thread.hxx".}
proc GetId*(this: OSD_Thread): Standard_ThreadId {.noSideEffect, importcpp: "GetId",
    header: "OSD_Thread.hxx".}
proc Current*(): Standard_ThreadId {.importcpp: "OSD_Thread::Current(@)",
                                  header: "OSD_Thread.hxx".}