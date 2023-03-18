import osd_types



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




proc allocEvent*(this: var OSD_MAllocHookCallback; theSize: csize_t;
                theRequestNum: clong) {.cdecl, importcpp: "AllocEvent",
                                      header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookCallback; theData: pointer; theSize: csize_t;
               theRequestNum: clong) {.cdecl, importcpp: "FreeEvent",
                                     header: "OSD_MAllocHook.hxx".}


proc newOSD_MAllocHookLogFileHandler*(): OSD_MAllocHookLogFileHandler {.cdecl,
    constructor, importcpp: "OSD_MAllocHook::LogFileHandler(@)",
    header: "OSD_MAllocHook.hxx".}
proc destroyOSD_MAllocHookLogFileHandler*(this: var OSD_MAllocHookLogFileHandler) {.
    cdecl, importcpp: "#.~LogFileHandler()", header: "OSD_MAllocHook.hxx".}
proc open*(this: var OSD_MAllocHookLogFileHandler; theFileName: cstring): bool {.cdecl,
    importcpp: "Open", header: "OSD_MAllocHook.hxx".}
proc close*(this: var OSD_MAllocHookLogFileHandler) {.cdecl, importcpp: "Close",
    header: "OSD_MAllocHook.hxx".}
proc makeReport*(theLogFile: cstring; theOutFile: cstring;
                theIncludeAlive: bool = false): bool {.cdecl,
    importcpp: "LogFileHandler::MakeReport(@)", header: "OSD_MAllocHook.hxx".}
proc allocEvent*(this: var OSD_MAllocHookLogFileHandler; a2: csize_t; a3: clong) {.
    cdecl, importcpp: "AllocEvent", header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookLogFileHandler; a2: pointer; a3: csize_t;
               a4: clong) {.cdecl, importcpp: "FreeEvent",
                          header: "OSD_MAllocHook.hxx".}


proc newOSD_MAllocHookCollectBySize*(): OSD_MAllocHookCollectBySize {.cdecl,
    constructor, importcpp: "OSD_MAllocHook::CollectBySize(@)",
    header: "OSD_MAllocHook.hxx".}
proc destroyOSD_MAllocHookCollectBySize*(this: var OSD_MAllocHookCollectBySize) {.
    cdecl, importcpp: "#.~CollectBySize()", header: "OSD_MAllocHook.hxx".}
proc reset*(this: var OSD_MAllocHookCollectBySize) {.cdecl, importcpp: "Reset",
    header: "OSD_MAllocHook.hxx".}
proc makeReport*(this: var OSD_MAllocHookCollectBySize; theOutFile: cstring): bool {.
    cdecl, importcpp: "MakeReport", header: "OSD_MAllocHook.hxx".}
proc allocEvent*(this: var OSD_MAllocHookCollectBySize; a2: csize_t; a3: clong) {.cdecl,
    importcpp: "AllocEvent", header: "OSD_MAllocHook.hxx".}
proc freeEvent*(this: var OSD_MAllocHookCollectBySize; a2: pointer; a3: csize_t;
               a4: clong) {.cdecl, importcpp: "FreeEvent",
                          header: "OSD_MAllocHook.hxx".}


proc newOSD_MAllocHookCollectBySizeNumbers*(): OSD_MAllocHookCollectBySizeNumbers {.
    cdecl, constructor, importcpp: "OSD_MAllocHook::CollectBySize::Numbers(@)",
    header: "OSD_MAllocHook.hxx".}
proc setCallback*(theCB: ptr OSD_MAllocHookCallback) {.cdecl,
    importcpp: "OSD_MAllocHook::SetCallback(@)", header: "OSD_MAllocHook.hxx".}
proc getCallback*(): ptr OSD_MAllocHookCallback {.cdecl,
    importcpp: "OSD_MAllocHook::GetCallback(@)", header: "OSD_MAllocHook.hxx".}
proc getLogFileHandler*(): ptr OSD_MAllocHookLogFileHandler {.cdecl,
    importcpp: "OSD_MAllocHook::GetLogFileHandler(@)",
    header: "OSD_MAllocHook.hxx".}
proc getCollectBySize*(): ptr OSD_MAllocHookCollectBySize {.cdecl,
    importcpp: "OSD_MAllocHook::GetCollectBySize(@)", header: "OSD_MAllocHook.hxx".}

