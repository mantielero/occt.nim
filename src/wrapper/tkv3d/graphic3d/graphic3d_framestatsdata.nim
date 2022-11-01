import graphic3d_types
import ../selectmgr/selectmgr_types




##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Data frame definition.



proc frameRate*(this: Graphic3dFrameStatsData): cfloat {.noSideEffect, cdecl,
    importcpp: "FrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc frameRateCpu*(this: Graphic3dFrameStatsData): cfloat {.noSideEffect, cdecl,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc immediateFrameRate*(this: Graphic3dFrameStatsData): cfloat {.noSideEffect,
    cdecl, importcpp: "ImmediateFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc immediateFrameRateCpu*(this: Graphic3dFrameStatsData): cfloat {.noSideEffect,
    cdecl, importcpp: "ImmediateFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc counterValue*(this: Graphic3dFrameStatsData;
                  theIndex: Graphic3dFrameStatsCounter): csize_t {.noSideEffect,
    cdecl, importcpp: "CounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsCounter): csize_t {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc timerValue*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsTimer): cfloat {.
    noSideEffect, cdecl, importcpp: "TimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsTimer): cfloat {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc newGraphic3dFrameStatsData*(): Graphic3dFrameStatsData {.cdecl, constructor,
    importcpp: "Graphic3d_FrameStatsData(@)", header: "Graphic3d_FrameStatsData.hxx".}
proc reset*(this: var Graphic3dFrameStatsData) {.cdecl, importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc fillMax*(this: var Graphic3dFrameStatsData; theOther: Graphic3dFrameStatsData) {.
    cdecl, importcpp: "FillMax", header: "Graphic3d_FrameStatsData.hxx".}
## ! Temporary data frame definition.



proc newGraphic3dFrameStatsDataTmp*(): Graphic3dFrameStatsDataTmp {.cdecl,
    constructor, importcpp: "Graphic3d_FrameStatsDataTmp(@)", header: "Graphic3d_FrameStatsData.hxx".}
proc flushTimers*(this: var Graphic3dFrameStatsDataTmp; theNbFrames: csize_t;
                 theIsFinal: bool) {.cdecl, importcpp: "FlushTimers", header: "Graphic3d_FrameStatsData.hxx".}
proc reset*(this: var Graphic3dFrameStatsDataTmp) {.cdecl, importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc changeFrameRate*(this: var Graphic3dFrameStatsDataTmp): var cfloat {.cdecl,
    importcpp: "ChangeFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc changeFrameRateCpu*(this: var Graphic3dFrameStatsDataTmp): var cfloat {.cdecl,
    importcpp: "ChangeFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc changeImmediateFrameRate*(this: var Graphic3dFrameStatsDataTmp): var cfloat {.
    cdecl, importcpp: "ChangeImmediateFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc changeImmediateFrameRateCpu*(this: var Graphic3dFrameStatsDataTmp): var cfloat {.
    cdecl, importcpp: "ChangeImmediateFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc changeTimer*(this: var Graphic3dFrameStatsDataTmp;
                 theTimer: Graphic3dFrameStatsTimer): var OSD_Timer {.cdecl,
    importcpp: "ChangeTimer", header: "Graphic3d_FrameStatsData.hxx".}
proc changeCounterValue*(this: var Graphic3dFrameStatsDataTmp;
                        theIndex: Graphic3dFrameStatsCounter): var csize_t {.cdecl,
    importcpp: "ChangeCounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3dFrameStatsDataTmp;
          theIndex: Graphic3dFrameStatsCounter): var csize_t {.cdecl,
    importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc changeTimerValue*(this: var Graphic3dFrameStatsDataTmp;
                      theIndex: Graphic3dFrameStatsTimer): var cfloat {.cdecl,
    importcpp: "ChangeTimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3dFrameStatsDataTmp; theIndex: Graphic3dFrameStatsTimer): var cfloat {.
    cdecl, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}


