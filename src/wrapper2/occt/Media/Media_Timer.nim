##  Created by: Kirill Gavrilov
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Auxiliary class defining the animation timer.

type
  MediaTimer* {.importcpp: "Media_Timer", header: "Media_Timer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor.

  MediaTimerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_Timer::get_type_name(@)",
                            header: "Media_Timer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_Timer::get_type_descriptor(@)", header: "Media_Timer.hxx".}
proc dynamicType*(this: MediaTimer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Timer.hxx".}
proc constructMediaTimer*(): MediaTimer {.constructor, importcpp: "Media_Timer(@)",
                                       header: "Media_Timer.hxx".}
proc elapsedTime*(this: MediaTimer): StandardReal {.noSideEffect,
    importcpp: "ElapsedTime", header: "Media_Timer.hxx".}
proc playbackSpeed*(this: MediaTimer): StandardReal {.noSideEffect,
    importcpp: "PlaybackSpeed", header: "Media_Timer.hxx".}
proc setPlaybackSpeed*(this: var MediaTimer; theSpeed: StandardReal) {.
    importcpp: "SetPlaybackSpeed", header: "Media_Timer.hxx".}
proc isStarted*(this: MediaTimer): StandardBoolean {.noSideEffect,
    importcpp: "IsStarted", header: "Media_Timer.hxx".}
proc start*(this: var MediaTimer) {.importcpp: "Start", header: "Media_Timer.hxx".}
proc pause*(this: var MediaTimer) {.importcpp: "Pause", header: "Media_Timer.hxx".}
proc stop*(this: var MediaTimer) {.importcpp: "Stop", header: "Media_Timer.hxx".}
proc seek*(this: var MediaTimer; theTime: StandardReal) {.importcpp: "Seek",
    header: "Media_Timer.hxx".}
discard "forward decl of Media_Timer"
type
  HandleMediaTimer* = Handle[MediaTimer]


