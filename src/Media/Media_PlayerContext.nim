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

discard "forward decl of Media_BufferPool"
discard "forward decl of Media_CodecContext"
discard "forward decl of Media_FormatContext"
discard "forward decl of Media_Scaler"
type
  MediaPlayerContext* {.importcpp: "Media_PlayerContext",
                       header: "Media_PlayerContext.hxx", bycopy.} = object of StandardTransient ##
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

  MediaPlayerContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_PlayerContext::get_type_name(@)",
                            header: "Media_PlayerContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_PlayerContext::get_type_descriptor(@)",
    header: "Media_PlayerContext.hxx".}
proc dynamicType*(this: MediaPlayerContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_PlayerContext.hxx".}
proc dumpFirstFrame*(theSrcVideo: TCollectionAsciiString;
                    theMediaInfo: var TCollectionAsciiString): Handle[MediaFrame] {.
    importcpp: "Media_PlayerContext::DumpFirstFrame(@)",
    header: "Media_PlayerContext.hxx".}
proc dumpFirstFrame*(theSrcVideo: TCollectionAsciiString;
                    theOutImage: TCollectionAsciiString;
                    theMediaInfo: var TCollectionAsciiString; theMaxSize: cint = 0): bool {.
    importcpp: "Media_PlayerContext::DumpFirstFrame(@)",
    header: "Media_PlayerContext.hxx".}
proc constructMediaPlayerContext*(theFrameQueue: ptr MediaIFrameQueue): MediaPlayerContext {.
    constructor, importcpp: "Media_PlayerContext(@)",
    header: "Media_PlayerContext.hxx".}
proc destroyMediaPlayerContext*(this: var MediaPlayerContext) {.
    importcpp: "#.~Media_PlayerContext()", header: "Media_PlayerContext.hxx".}
proc setInput*(this: var MediaPlayerContext; theInputPath: TCollectionAsciiString;
              theToWait: bool) {.importcpp: "SetInput",
                               header: "Media_PlayerContext.hxx".}
proc playbackState*(this: var MediaPlayerContext; theIsPaused: var bool;
                   theProgress: var cfloat; theDuration: var cfloat) {.
    importcpp: "PlaybackState", header: "Media_PlayerContext.hxx".}
proc playPause*(this: var MediaPlayerContext; theIsPaused: var bool;
               theProgress: var cfloat; theDuration: var cfloat) {.
    importcpp: "PlayPause", header: "Media_PlayerContext.hxx".}
proc seek*(this: var MediaPlayerContext; thePosSec: cfloat) {.importcpp: "Seek",
    header: "Media_PlayerContext.hxx".}
proc pause*(this: var MediaPlayerContext) {.importcpp: "Pause",
                                        header: "Media_PlayerContext.hxx".}
proc resume*(this: var MediaPlayerContext) {.importcpp: "Resume",
    header: "Media_PlayerContext.hxx".}
proc toForceRgb*(this: MediaPlayerContext): bool {.noSideEffect,
    importcpp: "ToForceRgb", header: "Media_PlayerContext.hxx".}
proc setForceRgb*(this: var MediaPlayerContext; theToForce: bool) {.
    importcpp: "SetForceRgb", header: "Media_PlayerContext.hxx".}

























