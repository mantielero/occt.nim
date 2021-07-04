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

import
  ../NCollection/NCollection_Array1, Graphic3d_FrameStatsCounter,
  Graphic3d_FrameStatsTimer, ../OSD/OSD_Timer

## ! Data frame definition.

type
  Graphic3d_FrameStatsData* {.importcpp: "Graphic3d_FrameStatsData",
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


proc FrameRate*(this: Graphic3d_FrameStatsData): Standard_Real {.noSideEffect,
    importcpp: "FrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc FrameRateCpu*(this: Graphic3d_FrameStatsData): Standard_Real {.noSideEffect,
    importcpp: "FrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc ImmediateFrameRate*(this: Graphic3d_FrameStatsData): Standard_Real {.
    noSideEffect, importcpp: "ImmediateFrameRate",
    header: "Graphic3d_FrameStatsData.hxx".}
proc ImmediateFrameRateCpu*(this: Graphic3d_FrameStatsData): Standard_Real {.
    noSideEffect, importcpp: "ImmediateFrameRateCpu",
    header: "Graphic3d_FrameStatsData.hxx".}
proc CounterValue*(this: Graphic3d_FrameStatsData;
                  theIndex: Graphic3d_FrameStatsCounter): Standard_Size {.
    noSideEffect, importcpp: "CounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3d_FrameStatsData; theIndex: Graphic3d_FrameStatsCounter): Standard_Size {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc TimerValue*(this: Graphic3d_FrameStatsData;
                theIndex: Graphic3d_FrameStatsTimer): Standard_Real {.noSideEffect,
    importcpp: "TimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: Graphic3d_FrameStatsData; theIndex: Graphic3d_FrameStatsTimer): Standard_Real {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc constructGraphic3d_FrameStatsData*(): Graphic3d_FrameStatsData {.constructor,
    importcpp: "Graphic3d_FrameStatsData(@)",
    header: "Graphic3d_FrameStatsData.hxx".}
proc Reset*(this: var Graphic3d_FrameStatsData) {.importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc FillMax*(this: var Graphic3d_FrameStatsData; theOther: Graphic3d_FrameStatsData) {.
    importcpp: "FillMax", header: "Graphic3d_FrameStatsData.hxx".}
## ! Temporary data frame definition.

type
  Graphic3d_FrameStatsDataTmp* {.importcpp: "Graphic3d_FrameStatsDataTmp",
                                header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of Graphic3d_FrameStatsData ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor.
    ## !< precise timers for time measurements
    ## !< previous timers values


proc constructGraphic3d_FrameStatsDataTmp*(): Graphic3d_FrameStatsDataTmp {.
    constructor, importcpp: "Graphic3d_FrameStatsDataTmp(@)",
    header: "Graphic3d_FrameStatsData.hxx".}
proc FlushTimers*(this: var Graphic3d_FrameStatsDataTmp; theNbFrames: Standard_Size;
                 theIsFinal: bool) {.importcpp: "FlushTimers",
                                   header: "Graphic3d_FrameStatsData.hxx".}
proc Reset*(this: var Graphic3d_FrameStatsDataTmp) {.importcpp: "Reset",
    header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeFrameRate*(this: var Graphic3d_FrameStatsDataTmp): var Standard_Real {.
    importcpp: "ChangeFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeFrameRateCpu*(this: var Graphic3d_FrameStatsDataTmp): var Standard_Real {.
    importcpp: "ChangeFrameRateCpu", header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeImmediateFrameRate*(this: var Graphic3d_FrameStatsDataTmp): var Standard_Real {.
    importcpp: "ChangeImmediateFrameRate", header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeImmediateFrameRateCpu*(this: var Graphic3d_FrameStatsDataTmp): var Standard_Real {.
    importcpp: "ChangeImmediateFrameRateCpu",
    header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeTimer*(this: var Graphic3d_FrameStatsDataTmp;
                 theTimer: Graphic3d_FrameStatsTimer): var OSD_Timer {.
    importcpp: "ChangeTimer", header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeCounterValue*(this: var Graphic3d_FrameStatsDataTmp;
                        theIndex: Graphic3d_FrameStatsCounter): var Standard_Size {.
    importcpp: "ChangeCounterValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3d_FrameStatsDataTmp;
          theIndex: Graphic3d_FrameStatsCounter): var Standard_Size {.
    importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}
proc ChangeTimerValue*(this: var Graphic3d_FrameStatsDataTmp;
                      theIndex: Graphic3d_FrameStatsTimer): var Standard_Real {.
    importcpp: "ChangeTimerValue", header: "Graphic3d_FrameStatsData.hxx".}
proc `[]`*(this: var Graphic3d_FrameStatsDataTmp;
          theIndex: Graphic3d_FrameStatsTimer): var Standard_Real {.
    importcpp: "#[@]", header: "Graphic3d_FrameStatsData.hxx".}