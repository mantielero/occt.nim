##  Created by: Kirill GAVRILOV
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  Media_IFrameQueue, Media_Timer, ../OSD/OSD_Thread,
  ../Standard/Standard_Condition, ../Standard/Standard_Mutex,
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Media_BufferPool"
discard "forward decl of Media_CodecContext"
discard "forward decl of Media_FormatContext"
discard "forward decl of Media_Scaler"
type
  Media_PlayerContext* {.importcpp: "Media_PlayerContext",
                        header: "Media_PlayerContext.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Dump
                                                                                            ## first
                                                                                            ## video
                                                                                            ## frame.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theSrcVideo
                                                                                            ## [in]
                                                                                            ## path
                                                                                            ## to
                                                                                            ## the
                                                                                            ## video
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theMediaInfo
                                                                                            ## [out]
                                                                                            ## video
                                                                                            ## description
                                                                                            ##
                                                                                            ## !
                                                                                            ## Main
                                                                                            ## constructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Note
                                                                                            ## that
                                                                                            ## Frame
                                                                                            ## Queue
                                                                                            ## is
                                                                                            ## stored
                                                                                            ## as
                                                                                            ## pointer,
                                                                                            ##
                                                                                            ## !
                                                                                            ## and
                                                                                            ## it
                                                                                            ## is
                                                                                            ## expected
                                                                                            ## that
                                                                                            ## this
                                                                                            ## context
                                                                                            ## is
                                                                                            ## stored
                                                                                            ## as
                                                                                            ## a
                                                                                            ## class
                                                                                            ## field
                                                                                            ## of
                                                                                            ## Frame
                                                                                            ## Queue.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Set
                                                                                            ## new
                                                                                            ## input
                                                                                            ## for
                                                                                            ## playback.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Internal
                                                                                            ## enumeration
                                                                                            ## for
                                                                                            ## events.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Thread
                                                                                            ## loop.
    ## !< frame queue
    ## !< working thread
    ## !< mutex for events
    ## !< event to wake up working thread and proceed new playback event
    ## !< event to check if working thread processed next file event (e.g. released file handles of previous input)
    ## !< playback timer
    ## !< playback duration
    ## !< per-plane pools
    ## !< temporary object holding decoded frame
    ## !< pixel format conversion tool
    ## !< flag indicating if queue requires RGB pixel format or can handle also YUV pixel format
    ## !< flag to terminate working thread
    ## !< new input to open
    ## !< new seeking position
    ## !< playback event

  Media_PlayerContextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_PlayerContext::get_type_name(@)",
                              header: "Media_PlayerContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_PlayerContext::get_type_descriptor(@)",
    header: "Media_PlayerContext.hxx".}
proc DynamicType*(this: Media_PlayerContext): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_PlayerContext.hxx".}
proc DumpFirstFrame*(theSrcVideo: TCollection_AsciiString;
                    theMediaInfo: var TCollection_AsciiString): handle[Media_Frame] {.
    importcpp: "Media_PlayerContext::DumpFirstFrame(@)",
    header: "Media_PlayerContext.hxx".}
proc DumpFirstFrame*(theSrcVideo: TCollection_AsciiString;
                    theOutImage: TCollection_AsciiString;
                    theMediaInfo: var TCollection_AsciiString; theMaxSize: cint = 0): bool {.
    importcpp: "Media_PlayerContext::DumpFirstFrame(@)",
    header: "Media_PlayerContext.hxx".}
proc constructMedia_PlayerContext*(theFrameQueue: ptr Media_IFrameQueue): Media_PlayerContext {.
    constructor, importcpp: "Media_PlayerContext(@)",
    header: "Media_PlayerContext.hxx".}
proc destroyMedia_PlayerContext*(this: var Media_PlayerContext) {.
    importcpp: "#.~Media_PlayerContext()", header: "Media_PlayerContext.hxx".}
proc SetInput*(this: var Media_PlayerContext; theInputPath: TCollection_AsciiString;
              theToWait: Standard_Boolean) {.importcpp: "SetInput",
    header: "Media_PlayerContext.hxx".}
proc PlaybackState*(this: var Media_PlayerContext;
                   theIsPaused: var Standard_Boolean;
                   theProgress: var Standard_Real; theDuration: var Standard_Real) {.
    importcpp: "PlaybackState", header: "Media_PlayerContext.hxx".}
proc PlayPause*(this: var Media_PlayerContext; theIsPaused: var Standard_Boolean;
               theProgress: var Standard_Real; theDuration: var Standard_Real) {.
    importcpp: "PlayPause", header: "Media_PlayerContext.hxx".}
proc Seek*(this: var Media_PlayerContext; thePosSec: Standard_Real) {.
    importcpp: "Seek", header: "Media_PlayerContext.hxx".}
proc Pause*(this: var Media_PlayerContext) {.importcpp: "Pause",
    header: "Media_PlayerContext.hxx".}
proc Resume*(this: var Media_PlayerContext) {.importcpp: "Resume",
    header: "Media_PlayerContext.hxx".}
proc ToForceRgb*(this: Media_PlayerContext): bool {.noSideEffect,
    importcpp: "ToForceRgb", header: "Media_PlayerContext.hxx".}
proc SetForceRgb*(this: var Media_PlayerContext; theToForce: bool) {.
    importcpp: "SetForceRgb", header: "Media_PlayerContext.hxx".}