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

import
  ../OSD/OSD_Timer, ../Standard/Standard_Transient, ../Standard/Standard_Type

## ! Auxiliary class defining the animation timer.

type
  Media_Timer* {.importcpp: "Media_Timer", header: "Media_Timer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor.

  Media_Timerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_Timer::get_type_name(@)",
                              header: "Media_Timer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_Timer::get_type_descriptor(@)", header: "Media_Timer.hxx".}
proc DynamicType*(this: Media_Timer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Timer.hxx".}
proc constructMedia_Timer*(): Media_Timer {.constructor,
    importcpp: "Media_Timer(@)", header: "Media_Timer.hxx".}
proc ElapsedTime*(this: Media_Timer): Standard_Real {.noSideEffect,
    importcpp: "ElapsedTime", header: "Media_Timer.hxx".}
proc PlaybackSpeed*(this: Media_Timer): Standard_Real {.noSideEffect,
    importcpp: "PlaybackSpeed", header: "Media_Timer.hxx".}
proc SetPlaybackSpeed*(this: var Media_Timer; theSpeed: Standard_Real) {.
    importcpp: "SetPlaybackSpeed", header: "Media_Timer.hxx".}
proc IsStarted*(this: Media_Timer): Standard_Boolean {.noSideEffect,
    importcpp: "IsStarted", header: "Media_Timer.hxx".}
proc Start*(this: var Media_Timer) {.importcpp: "Start", header: "Media_Timer.hxx".}
proc Pause*(this: var Media_Timer) {.importcpp: "Pause", header: "Media_Timer.hxx".}
proc Stop*(this: var Media_Timer) {.importcpp: "Stop", header: "Media_Timer.hxx".}
proc Seek*(this: var Media_Timer; theTime: Standard_Real) {.importcpp: "Seek",
    header: "Media_Timer.hxx".}
discard "forward decl of Media_Timer"
type
  Handle_Media_Timer* = handle[Media_Timer]
