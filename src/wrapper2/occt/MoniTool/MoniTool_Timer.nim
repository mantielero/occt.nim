##  Created on: 2001-12-13
##  Created by: Sergey KUUl
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of OSD_Timer"
discard "forward decl of MoniTool_Timer"
discard "forward decl of MoniTool_Timer"
type
  HandleMoniToolTimer* = Handle[MoniToolTimer]

## ! Provides convenient service on global timers
## ! accessed by string name, mostly aimed for debugging purposes
## !
## ! As an instance, envelopes the OSD_Timer to have it as Handle
## !
## ! As a tool, supports static dictionary of timers
## ! and provides static methods to easily access them

type
  MoniToolTimer* {.importcpp: "MoniTool_Timer", header: "MoniTool_Timer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Create
                                                                                                           ## timer
                                                                                                           ## in
                                                                                                           ## empty
                                                                                                           ## state


proc constructMoniToolTimer*(): MoniToolTimer {.constructor,
    importcpp: "MoniTool_Timer(@)", header: "MoniTool_Timer.hxx".}
proc timer*(this: MoniToolTimer): OSD_Timer {.noSideEffect, importcpp: "Timer",
    header: "MoniTool_Timer.hxx".}
proc timer*(this: var MoniToolTimer): var OSD_Timer {.importcpp: "Timer",
    header: "MoniTool_Timer.hxx".}
proc start*(this: var MoniToolTimer) {.importcpp: "Start",
                                   header: "MoniTool_Timer.hxx".}
proc stop*(this: var MoniToolTimer) {.importcpp: "Stop", header: "MoniTool_Timer.hxx".}
proc reset*(this: var MoniToolTimer) {.importcpp: "Reset",
                                   header: "MoniTool_Timer.hxx".}
proc count*(this: MoniToolTimer): StandardInteger {.noSideEffect, importcpp: "Count",
    header: "MoniTool_Timer.hxx".}
proc isRunning*(this: MoniToolTimer): StandardInteger {.noSideEffect,
    importcpp: "IsRunning", header: "MoniTool_Timer.hxx".}
proc cpu*(this: var MoniToolTimer): StandardReal {.importcpp: "CPU",
    header: "MoniTool_Timer.hxx".}
proc amend*(this: MoniToolTimer): StandardReal {.noSideEffect, importcpp: "Amend",
    header: "MoniTool_Timer.hxx".}
proc dump*(this: var MoniToolTimer; ostr: var StandardOStream) {.importcpp: "Dump",
    header: "MoniTool_Timer.hxx".}
proc timer*(name: StandardCString): Handle[MoniToolTimer] {.
    importcpp: "MoniTool_Timer::Timer(@)", header: "MoniTool_Timer.hxx".}
proc start*(name: StandardCString) {.importcpp: "MoniTool_Timer::Start(@)",
                                  header: "MoniTool_Timer.hxx".}
proc stop*(name: StandardCString) {.importcpp: "MoniTool_Timer::Stop(@)",
                                 header: "MoniTool_Timer.hxx".}
proc dictionary*(): var MoniToolDataMapOfTimer {.
    importcpp: "MoniTool_Timer::Dictionary(@)", header: "MoniTool_Timer.hxx".}
proc clearTimers*() {.importcpp: "MoniTool_Timer::ClearTimers(@)",
                    header: "MoniTool_Timer.hxx".}
proc dumpTimers*(ostr: var StandardOStream) {.
    importcpp: "MoniTool_Timer::DumpTimers(@)", header: "MoniTool_Timer.hxx".}
proc computeAmendments*() {.importcpp: "MoniTool_Timer::ComputeAmendments(@)",
                          header: "MoniTool_Timer.hxx".}
proc getAmendments*(access: var StandardReal; internal: var StandardReal;
                   external: var StandardReal; error10: var StandardReal) {.
    importcpp: "MoniTool_Timer::GetAmendments(@)", header: "MoniTool_Timer.hxx".}
type
  MoniToolTimerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_Timer::get_type_name(@)",
                            header: "MoniTool_Timer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_Timer::get_type_descriptor(@)",
    header: "MoniTool_Timer.hxx".}
proc dynamicType*(this: MoniToolTimer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_Timer.hxx".}

