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

discard "forward decl of AVCodecContext"
discard "forward decl of AVFormatContext"
discard "forward decl of AVStream"
discard "forward decl of AVRational"
type
  MediaFormatContext* {.importcpp: "Media_FormatContext",
                       header: "Media_FormatContext.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## string
                                                                                          ## description
                                                                                          ## for
                                                                                          ## AVError
                                                                                          ## code.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Constructor.
    ## !< format context
    ## !< start time
    ## !< duration

  MediaFormatContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_FormatContext::get_type_name(@)",
                            header: "Media_FormatContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_FormatContext::get_type_descriptor(@)",
    header: "Media_FormatContext.hxx".}
proc dynamicType*(this: MediaFormatContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_FormatContext.hxx".}
proc formatAVErrorDescription*(theErrCodeAV: cint): TCollectionAsciiString {.
    importcpp: "Media_FormatContext::FormatAVErrorDescription(@)",
    header: "Media_FormatContext.hxx".}
proc formatUnitsToSeconds*(theTimeUnits: int64T): cdouble {.
    importcpp: "Media_FormatContext::FormatUnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc unitsToSeconds*(theTimeBase: AVRational; theTimeUnits: int64T): cdouble {.
    importcpp: "Media_FormatContext::UnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc streamUnitsToSeconds*(theStream: AVStream; theTimeUnits: int64T): cdouble {.
    importcpp: "Media_FormatContext::StreamUnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc secondsToUnits*(theTimeSeconds: cdouble): int64T {.
    importcpp: "Media_FormatContext::SecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc secondsToUnits*(theTimeBase: AVRational; theTimeSeconds: cdouble): int64T {.
    importcpp: "Media_FormatContext::SecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc streamSecondsToUnits*(theStream: AVStream; theTimeSeconds: cdouble): int64T {.
    importcpp: "Media_FormatContext::StreamSecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc formatTime*(theSeconds: cdouble): TCollectionAsciiString {.
    importcpp: "Media_FormatContext::FormatTime(@)",
    header: "Media_FormatContext.hxx".}
proc formatTimeProgress*(theProgress: cdouble; theDuration: cdouble): TCollectionAsciiString {.
    importcpp: "Media_FormatContext::FormatTimeProgress(@)",
    header: "Media_FormatContext.hxx".}
proc constructMediaFormatContext*(): MediaFormatContext {.constructor,
    importcpp: "Media_FormatContext(@)", header: "Media_FormatContext.hxx".}
proc destroyMediaFormatContext*(this: var MediaFormatContext) {.
    importcpp: "#.~Media_FormatContext()", header: "Media_FormatContext.hxx".}
proc context*(this: MediaFormatContext): ptr AVFormatContext {.noSideEffect,
    importcpp: "Context", header: "Media_FormatContext.hxx".}
proc openInput*(this: var MediaFormatContext; theInput: TCollectionAsciiString): bool {.
    importcpp: "OpenInput", header: "Media_FormatContext.hxx".}
proc close*(this: var MediaFormatContext) {.importcpp: "Close",
                                        header: "Media_FormatContext.hxx".}
proc nbSteams*(this: MediaFormatContext): cuint {.noSideEffect,
    importcpp: "NbSteams", header: "Media_FormatContext.hxx".}
proc stream*(this: MediaFormatContext; theIndex: cuint): AVStream {.noSideEffect,
    importcpp: "Stream", header: "Media_FormatContext.hxx".}
proc streamInfo*(this: MediaFormatContext; theIndex: cuint;
                theCodecCtx: ptr AVCodecContext = nil): TCollectionAsciiString {.
    noSideEffect, importcpp: "StreamInfo", header: "Media_FormatContext.hxx".}
proc ptsStartBase*(this: MediaFormatContext): cdouble {.noSideEffect,
    importcpp: "PtsStartBase", header: "Media_FormatContext.hxx".}
proc duration*(this: MediaFormatContext): cdouble {.noSideEffect,
    importcpp: "Duration", header: "Media_FormatContext.hxx".}
proc readPacket*(this: var MediaFormatContext; thePacket: Handle[MediaPacket]): bool {.
    importcpp: "ReadPacket", header: "Media_FormatContext.hxx".}
proc seekStream*(this: var MediaFormatContext; theStreamId: cuint;
                theSeekPts: cdouble; toSeekBack: bool): bool {.
    importcpp: "SeekStream", header: "Media_FormatContext.hxx".}
proc seek*(this: var MediaFormatContext; theSeekPts: cdouble; toSeekBack: bool): bool {.
    importcpp: "Seek", header: "Media_FormatContext.hxx".}

























