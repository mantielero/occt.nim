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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../OSD/OSD_Timer,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream,
  ../Standard/Standard_CString, MoniTool_DataMapOfTimer

discard "forward decl of OSD_Timer"
discard "forward decl of MoniTool_Timer"
discard "forward decl of MoniTool_Timer"
type
  Handle_MoniTool_Timer* = handle[MoniTool_Timer]

## ! Provides convenient service on global timers
## ! accessed by string name, mostly aimed for debugging purposes
## !
## ! As an instance, envelopes the OSD_Timer to have it as Handle
## !
## ! As a tool, supports static dictionary of timers
## ! and provides static methods to easily access them

type
  MoniTool_Timer* {.importcpp: "MoniTool_Timer", header: "MoniTool_Timer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Create
                                                                                                             ## timer
                                                                                                             ## in
                                                                                                             ## empty
                                                                                                             ## state


proc constructMoniTool_Timer*(): MoniTool_Timer {.constructor,
    importcpp: "MoniTool_Timer(@)", header: "MoniTool_Timer.hxx".}
proc Timer*(this: MoniTool_Timer): OSD_Timer {.noSideEffect, importcpp: "Timer",
    header: "MoniTool_Timer.hxx".}
proc Timer*(this: var MoniTool_Timer): var OSD_Timer {.importcpp: "Timer",
    header: "MoniTool_Timer.hxx".}
proc Start*(this: var MoniTool_Timer) {.importcpp: "Start",
                                    header: "MoniTool_Timer.hxx".}
proc Stop*(this: var MoniTool_Timer) {.importcpp: "Stop", header: "MoniTool_Timer.hxx".}
proc Reset*(this: var MoniTool_Timer) {.importcpp: "Reset",
                                    header: "MoniTool_Timer.hxx".}
proc Count*(this: MoniTool_Timer): Standard_Integer {.noSideEffect,
    importcpp: "Count", header: "MoniTool_Timer.hxx".}
proc IsRunning*(this: MoniTool_Timer): Standard_Integer {.noSideEffect,
    importcpp: "IsRunning", header: "MoniTool_Timer.hxx".}
proc CPU*(this: var MoniTool_Timer): Standard_Real {.importcpp: "CPU",
    header: "MoniTool_Timer.hxx".}
proc Amend*(this: MoniTool_Timer): Standard_Real {.noSideEffect, importcpp: "Amend",
    header: "MoniTool_Timer.hxx".}
proc Dump*(this: var MoniTool_Timer; ostr: var Standard_OStream) {.importcpp: "Dump",
    header: "MoniTool_Timer.hxx".}
proc Timer*(name: Standard_CString): handle[MoniTool_Timer] {.
    importcpp: "MoniTool_Timer::Timer(@)", header: "MoniTool_Timer.hxx".}
proc Start*(name: Standard_CString) {.importcpp: "MoniTool_Timer::Start(@)",
                                   header: "MoniTool_Timer.hxx".}
proc Stop*(name: Standard_CString) {.importcpp: "MoniTool_Timer::Stop(@)",
                                  header: "MoniTool_Timer.hxx".}
proc Dictionary*(): var MoniTool_DataMapOfTimer {.
    importcpp: "MoniTool_Timer::Dictionary(@)", header: "MoniTool_Timer.hxx".}
proc ClearTimers*() {.importcpp: "MoniTool_Timer::ClearTimers(@)",
                    header: "MoniTool_Timer.hxx".}
proc DumpTimers*(ostr: var Standard_OStream) {.
    importcpp: "MoniTool_Timer::DumpTimers(@)", header: "MoniTool_Timer.hxx".}
proc ComputeAmendments*() {.importcpp: "MoniTool_Timer::ComputeAmendments(@)",
                          header: "MoniTool_Timer.hxx".}
proc GetAmendments*(Access: var Standard_Real; Internal: var Standard_Real;
                   External: var Standard_Real; Error10: var Standard_Real) {.
    importcpp: "MoniTool_Timer::GetAmendments(@)", header: "MoniTool_Timer.hxx".}
type
  MoniTool_Timerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_Timer::get_type_name(@)",
                              header: "MoniTool_Timer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_Timer::get_type_descriptor(@)",
    header: "MoniTool_Timer.hxx".}
proc DynamicType*(this: MoniTool_Timer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_Timer.hxx".}