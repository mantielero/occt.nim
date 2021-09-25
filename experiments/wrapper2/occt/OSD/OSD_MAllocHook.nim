##  Created on: 2011-02-03
##  Created by: Mikhail SAZONOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## *
##  This class provides the possibility to set callback for memory
##  allocation/deallocation.
##  On MS Windows, it works only in Debug builds. It relies on the
##  debug CRT function _CrtSetAllocHook (see MSDN for help).
##

type
  OSD_MAllocHook* {.importcpp: "OSD_MAllocHook", header: "OSD_MAllocHook.hxx", bycopy.} = object ## *
                                                                                         ##  Interface of a class that should handle allocation/deallocation events
                                                                                         ##

  OSD_MAllocHookCallback* {.importcpp: "OSD_MAllocHook::Callback",
                           header: "OSD_MAllocHook.hxx", bycopy.} = object ## ! Allocation event handler
                                                                      ## *
                                                                      ##  It is called when allocation is done
                                                                      ##  @param theSize
                                                                      ##    the size of the memory block in bytes
                                                                      ##  @param
                                                                      ## theRequestNum
                                                                      ##    the allocation order number of the memory block
                                                                      ##


proc allocEvent*(this: var OSD_MAllocHookCallback; theSize: csize_t;
                theRequestNum: clong) {.importcpp: "AllocEvent",
                                      header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookCallback; theData: pointer; theSize: csize_t;
               theRequestNum: clong) {.importcpp: "FreeEvent",
                                     header: "OSD_MAllocHook.hxx".}
type
  OSD_MAllocHookLogFileHandler* {.importcpp: "OSD_MAllocHook::LogFileHandler",
                                 header: "OSD_MAllocHook.hxx", bycopy.} = object of OSD_MAllocHookCallback ##
                                                                                                    ## !
                                                                                                    ## Constructor


proc constructOSD_MAllocHookLogFileHandler*(): OSD_MAllocHookLogFileHandler {.
    constructor, importcpp: "OSD_MAllocHook::LogFileHandler(@)",
    header: "OSD_MAllocHook.hxx".}
proc destroyOSD_MAllocHookLogFileHandler*(this: var OSD_MAllocHookLogFileHandler) {.
    importcpp: "#.~LogFileHandler()", header: "OSD_MAllocHook.hxx".}
proc open*(this: var OSD_MAllocHookLogFileHandler; theFileName: cstring): bool {.
    importcpp: "Open", header: "OSD_MAllocHook.hxx".}
proc close*(this: var OSD_MAllocHookLogFileHandler) {.importcpp: "Close",
    header: "OSD_MAllocHook.hxx".}
proc makeReport*(theLogFile: cstring; theOutFile: cstring;
                theIncludeAlive: bool = false): bool {.
    importcpp: "LogFileHandler::MakeReport(@)", header: "OSD_MAllocHook.hxx".}
proc allocEvent*(this: var OSD_MAllocHookLogFileHandler; a2: csize_t; a3: clong) {.
    importcpp: "AllocEvent", header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookLogFileHandler; a2: pointer; a3: csize_t;
               a4: clong) {.importcpp: "FreeEvent", header: "OSD_MAllocHook.hxx".}
type
  OSD_MAllocHookCollectBySize* {.importcpp: "OSD_MAllocHook::CollectBySize",
                                header: "OSD_MAllocHook.hxx", bycopy.} = object of OSD_MAllocHookCallback ##
                                                                                                   ## !
                                                                                                   ## Constructor
    myMutex* {.importc: "myMutex".}: StandardMutex ## !< used for thread-safe access
    myArray* {.importc: "myArray".}: ptr OSD_MAllocHookCollectBySizeNumbers ## !< indexed from 0 to myMaxAllocSize-1
    myTotalLeftSize* {.importc: "myTotalLeftSize".}: PtrdiffT ## !< currently remained allocated size
    myTotalPeakSize* {.importc: "myTotalPeakSize".}: csize_t ## !< maxium cumulative allocated size
    myBreakSize* {.importc: "myBreakSize".}: csize_t ## !< user defined allocation size to debug (see place_for_breakpoint())
    myBreakPeak* {.importc: "myBreakPeak".}: csize_t ## !< user defined peak size limit to debug


proc constructOSD_MAllocHookCollectBySize*(): OSD_MAllocHookCollectBySize {.
    constructor, importcpp: "OSD_MAllocHook::CollectBySize(@)",
    header: "OSD_MAllocHook.hxx".}
proc destroyOSD_MAllocHookCollectBySize*(this: var OSD_MAllocHookCollectBySize) {.
    importcpp: "#.~CollectBySize()", header: "OSD_MAllocHook.hxx".}
proc reset*(this: var OSD_MAllocHookCollectBySize) {.importcpp: "Reset",
    header: "OSD_MAllocHook.hxx".}
proc makeReport*(this: var OSD_MAllocHookCollectBySize; theOutFile: cstring): bool {.
    importcpp: "MakeReport", header: "OSD_MAllocHook.hxx".}
proc allocEvent*(this: var OSD_MAllocHookCollectBySize; a2: csize_t; a3: clong) {.
    importcpp: "AllocEvent", header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookCollectBySize; a2: pointer; a3: csize_t;
               a4: clong) {.importcpp: "FreeEvent", header: "OSD_MAllocHook.hxx".}
type
  OSD_MAllocHookCollectBySizeNumbers* {.importcpp: "OSD_MAllocHook::CollectBySize::Numbers",
                                       header: "OSD_MAllocHook.hxx", bycopy.} = object
    nbAlloc* {.importc: "nbAlloc".}: cint
    nbFree* {.importc: "nbFree".}: cint
    nbLeftPeak* {.importc: "nbLeftPeak".}: cint


proc constructOSD_MAllocHookCollectBySizeNumbers*(): OSD_MAllocHookCollectBySizeNumbers {.
    constructor, importcpp: "OSD_MAllocHook::CollectBySize::Numbers(@)",
    header: "OSD_MAllocHook.hxx".}
proc setCallback*(theCB: ptr OSD_MAllocHookCallback) {.
    importcpp: "OSD_MAllocHook::SetCallback(@)", header: "OSD_MAllocHook.hxx".}
proc getCallback*(): ptr OSD_MAllocHookCallback {.
    importcpp: "OSD_MAllocHook::GetCallback(@)", header: "OSD_MAllocHook.hxx".}
proc getLogFileHandler*(): ptr OSD_MAllocHookLogFileHandler {.
    importcpp: "OSD_MAllocHook::GetLogFileHandler(@)",
    header: "OSD_MAllocHook.hxx".}
proc getCollectBySize*(): ptr OSD_MAllocHookCollectBySize {.
    importcpp: "OSD_MAllocHook::GetCollectBySize(@)", header: "OSD_MAllocHook.hxx".}
