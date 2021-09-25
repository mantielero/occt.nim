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

type
  Graphic3dFrameStatsData* {.importcpp: "Graphic3d_FrameStatsData",
                            header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## FPS
                                                                                 ## (frames
                                                                                 ## per
                                                                                 ## seconds,
                                                                                 ## elapsed
                                                                                 ## time).
                                                                                 ##
                                                                                 ## !
                                                                                 ## This
                                                                                 ## number
                                                                                 ## indicates
                                                                                 ## an
                                                                                 ## actual
                                                                                 ## frame
                                                                                 ## rate
                                                                                 ## averaged
                                                                                 ## for
                                                                                 ## several
                                                                                 ## frames
                                                                                 ## within
                                                                                 ## UpdateInterval()
                                                                                 ## duration,
                                                                                 ##
                                                                                 ## !
                                                                                 ## basing
                                                                                 ## on
                                                                                 ## a
                                                                                 ## real
                                                                                 ## elapsed
                                                                                 ## time
                                                                                 ## between
                                                                                 ## updates.
    ## !< counters
    ## !< timers
    ## !< minimal values of timers
    ## !< maximum values of timers
    ## !< FPS     meter (frames per seconds, elapsed time)
    ## !< CPU FPS meter (frames per seconds, CPU time)
    ## !< FPS     meter for immediate redraws
    ## !< CPU FPS meter for immediate redraws


proc frameRate*(this: Graphic3dFrameStatsData): float {.noSideEffect,
    importcpp: "FrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc frameRateCpu*(this: Graphic3dFrameStatsData): float {.noSideEffect,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc immediateFrameRate*(this: Graphic3dFrameStatsData): float {.noSideEffect,
    importcpp: "ImmediateFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc immediateFrameRateCpu*(this: Graphic3dFrameStatsData): float {.noSideEffect,
    importcpp: "ImmediateFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc counterValue*(this: Graphic3dFrameStatsData;
                  theIndex: Graphic3dFrameStatsCounter): StandardSize {.
    noSideEffect, importcpp: "CounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsCounter): StandardSize {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc timerValue*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsTimer): float {.
    noSideEffect, importcpp: "TimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3dFrameStatsData; theIndex: Graphic3dFrameStatsTimer): float {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc constructGraphic3dFrameStatsData*(): Graphic3dFrameStatsData {.constructor,
    importcpp: "Graphic3d_FrameStatsData(@)",
    header: "Graphic3d_FrameStatsData.hxx".}
proc reset*(this: var Graphic3dFrameStatsData) {.importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc fillMax*(this: var Graphic3dFrameStatsData; theOther: Graphic3dFrameStatsData) {.
    importcpp: "FillMax", header: "Graphic3d_FrameStatsData.hxx".}
## ! Temporary data frame definition.

type
  Graphic3dFrameStatsDataTmp* {.importcpp: "Graphic3d_FrameStatsDataTmp",
                               header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of Graphic3dFrameStatsData ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.
    ## !< precise timers for time measurements
    ## !< previous timers values


proc constructGraphic3dFrameStatsDataTmp*(): Graphic3dFrameStatsDataTmp {.
    constructor, importcpp: "Graphic3d_FrameStatsDataTmp(@)",
    header: "Graphic3d_FrameStatsData.hxx".}
proc flushTimers*(this: var Graphic3dFrameStatsDataTmp; theNbFrames: StandardSize;
                 theIsFinal: bool) {.importcpp: "FlushTimers",
                                   header: "Graphic3d_FrameStatsData.hxx".}
proc reset*(this: var Graphic3dFrameStatsDataTmp) {.importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc changeFrameRate*(this: var Graphic3dFrameStatsDataTmp): var float {.
    importcpp: "ChangeFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc changeFrameRateCpu*(this: var Graphic3dFrameStatsDataTmp): var float {.
    importcpp: "ChangeFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc changeImmediateFrameRate*(this: var Graphic3dFrameStatsDataTmp): var float {.
    importcpp: "ChangeImmediateFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc changeImmediateFrameRateCpu*(this: var Graphic3dFrameStatsDataTmp): var float {.
    importcpp: "ChangeImmediateFrameRateCpu",
    header: "Graphic3d_FrameStatsData.hxx".}
proc changeTimer*(this: var Graphic3dFrameStatsDataTmp;
                 theTimer: Graphic3dFrameStatsTimer): var OSD_Timer {.
    importcpp: "ChangeTimer", header: "Graphic3d_FrameStatsData.hxx".}
proc changeCounterValue*(this: var Graphic3dFrameStatsDataTmp;
                        theIndex: Graphic3dFrameStatsCounter): var StandardSize {.
    importcpp: "ChangeCounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3dFrameStatsDataTmp;
          theIndex: Graphic3dFrameStatsCounter): var StandardSize {.
    importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc changeTimerValue*(this: var Graphic3dFrameStatsDataTmp;
                      theIndex: Graphic3dFrameStatsTimer): var float {.
    importcpp: "ChangeTimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3dFrameStatsDataTmp; theIndex: Graphic3dFrameStatsTimer): var float {.
    importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
