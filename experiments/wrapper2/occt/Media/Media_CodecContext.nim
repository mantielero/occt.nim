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

discard "forward decl of AVCodec"
discard "forward decl of AVCodecContext"
discard "forward decl of AVStream"
discard "forward decl of Media_Frame"
type
  MediaCodecContext* {.importcpp: "Media_CodecContext",
                      header: "Media_CodecContext.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Constructor.
    ## !< codec context
    ## !< opened codec
    ## !< starting PTS in context
    ## !< starting PTS in the stream
    ## !< stream timebase
    ## !< stream index
    ## !< pixel aspect ratio

  MediaCodecContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_CodecContext::get_type_name(@)",
                            header: "Media_CodecContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_CodecContext::get_type_descriptor(@)",
    header: "Media_CodecContext.hxx".}
proc dynamicType*(this: MediaCodecContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_CodecContext.hxx".}
proc constructMediaCodecContext*(): MediaCodecContext {.constructor,
    importcpp: "Media_CodecContext(@)", header: "Media_CodecContext.hxx".}
proc destroyMediaCodecContext*(this: var MediaCodecContext) {.
    importcpp: "#.~Media_CodecContext()", header: "Media_CodecContext.hxx".}
proc context*(this: MediaCodecContext): ptr AVCodecContext {.noSideEffect,
    importcpp: "Context", header: "Media_CodecContext.hxx".}
proc init*(this: var MediaCodecContext; theStream: AVStream; thePtsStartBase: cdouble;
          theNbThreads: cint = -1): bool {.importcpp: "Init",
                                      header: "Media_CodecContext.hxx".}
proc init*(this: var MediaCodecContext; theStream: AVStream; thePtsStartBase: cdouble;
          theNbThreads: cint; theCodecId: cint): bool {.importcpp: "Init",
    header: "Media_CodecContext.hxx".}
proc close*(this: var MediaCodecContext) {.importcpp: "Close",
                                       header: "Media_CodecContext.hxx".}
proc sizeX*(this: MediaCodecContext): cint {.noSideEffect, importcpp: "SizeX",
    header: "Media_CodecContext.hxx".}
proc sizeY*(this: MediaCodecContext): cint {.noSideEffect, importcpp: "SizeY",
    header: "Media_CodecContext.hxx".}
proc streamIndex*(this: MediaCodecContext): cint {.noSideEffect,
    importcpp: "StreamIndex", header: "Media_CodecContext.hxx".}
proc flush*(this: var MediaCodecContext) {.importcpp: "Flush",
                                       header: "Media_CodecContext.hxx".}
proc canProcessPacket*(this: MediaCodecContext; thePacket: Handle[MediaPacket]): bool {.
    noSideEffect, importcpp: "CanProcessPacket", header: "Media_CodecContext.hxx".}
proc sendPacket*(this: var MediaCodecContext; thePacket: Handle[MediaPacket]): bool {.
    importcpp: "SendPacket", header: "Media_CodecContext.hxx".}
proc receiveFrame*(this: var MediaCodecContext; theFrame: Handle[MediaFrame]): bool {.
    importcpp: "ReceiveFrame", header: "Media_CodecContext.hxx".}
