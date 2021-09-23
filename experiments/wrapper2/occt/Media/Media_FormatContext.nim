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
  Media_Packet, ../TCollection/TCollection_AsciiString

discard "forward decl of AVCodecContext"
discard "forward decl of AVFormatContext"
discard "forward decl of AVStream"
discard "forward decl of AVRational"
type
  Media_FormatContext* {.importcpp: "Media_FormatContext",
                        header: "Media_FormatContext.hxx", bycopy.} = object of Standard_Transient ##
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

  Media_FormatContextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_FormatContext::get_type_name(@)",
                              header: "Media_FormatContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_FormatContext::get_type_descriptor(@)",
    header: "Media_FormatContext.hxx".}
proc DynamicType*(this: Media_FormatContext): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_FormatContext.hxx".}
proc FormatAVErrorDescription*(theErrCodeAV: cint): TCollection_AsciiString {.
    importcpp: "Media_FormatContext::FormatAVErrorDescription(@)",
    header: "Media_FormatContext.hxx".}
proc FormatUnitsToSeconds*(theTimeUnits: int64_t): cdouble {.
    importcpp: "Media_FormatContext::FormatUnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc UnitsToSeconds*(theTimeBase: AVRational; theTimeUnits: int64_t): cdouble {.
    importcpp: "Media_FormatContext::UnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc StreamUnitsToSeconds*(theStream: AVStream; theTimeUnits: int64_t): cdouble {.
    importcpp: "Media_FormatContext::StreamUnitsToSeconds(@)",
    header: "Media_FormatContext.hxx".}
proc SecondsToUnits*(theTimeSeconds: cdouble): int64_t {.
    importcpp: "Media_FormatContext::SecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc SecondsToUnits*(theTimeBase: AVRational; theTimeSeconds: cdouble): int64_t {.
    importcpp: "Media_FormatContext::SecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc StreamSecondsToUnits*(theStream: AVStream; theTimeSeconds: cdouble): int64_t {.
    importcpp: "Media_FormatContext::StreamSecondsToUnits(@)",
    header: "Media_FormatContext.hxx".}
proc FormatTime*(theSeconds: cdouble): TCollection_AsciiString {.
    importcpp: "Media_FormatContext::FormatTime(@)",
    header: "Media_FormatContext.hxx".}
proc FormatTimeProgress*(theProgress: cdouble; theDuration: cdouble): TCollection_AsciiString {.
    importcpp: "Media_FormatContext::FormatTimeProgress(@)",
    header: "Media_FormatContext.hxx".}
proc constructMedia_FormatContext*(): Media_FormatContext {.constructor,
    importcpp: "Media_FormatContext(@)", header: "Media_FormatContext.hxx".}
proc destroyMedia_FormatContext*(this: var Media_FormatContext) {.
    importcpp: "#.~Media_FormatContext()", header: "Media_FormatContext.hxx".}
proc Context*(this: Media_FormatContext): ptr AVFormatContext {.noSideEffect,
    importcpp: "Context", header: "Media_FormatContext.hxx".}
proc OpenInput*(this: var Media_FormatContext; theInput: TCollection_AsciiString): bool {.
    importcpp: "OpenInput", header: "Media_FormatContext.hxx".}
proc Close*(this: var Media_FormatContext) {.importcpp: "Close",
    header: "Media_FormatContext.hxx".}
proc NbSteams*(this: Media_FormatContext): cuint {.noSideEffect,
    importcpp: "NbSteams", header: "Media_FormatContext.hxx".}
proc Stream*(this: Media_FormatContext; theIndex: cuint): AVStream {.noSideEffect,
    importcpp: "Stream", header: "Media_FormatContext.hxx".}
proc StreamInfo*(this: Media_FormatContext; theIndex: cuint;
                theCodecCtx: ptr AVCodecContext = nil): TCollection_AsciiString {.
    noSideEffect, importcpp: "StreamInfo", header: "Media_FormatContext.hxx".}
proc PtsStartBase*(this: Media_FormatContext): cdouble {.noSideEffect,
    importcpp: "PtsStartBase", header: "Media_FormatContext.hxx".}
proc Duration*(this: Media_FormatContext): cdouble {.noSideEffect,
    importcpp: "Duration", header: "Media_FormatContext.hxx".}
proc ReadPacket*(this: var Media_FormatContext; thePacket: handle[Media_Packet]): bool {.
    importcpp: "ReadPacket", header: "Media_FormatContext.hxx".}
proc SeekStream*(this: var Media_FormatContext; theStreamId: cuint;
                theSeekPts: cdouble; toSeekBack: bool): bool {.
    importcpp: "SeekStream", header: "Media_FormatContext.hxx".}
proc Seek*(this: var Media_FormatContext; theSeekPts: cdouble; toSeekBack: bool): bool {.
    importcpp: "Seek", header: "Media_FormatContext.hxx".}