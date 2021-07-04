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
  Media_Packet

discard "forward decl of AVCodec"
discard "forward decl of AVCodecContext"
discard "forward decl of AVStream"
discard "forward decl of Media_Frame"
type
  Media_CodecContext* {.importcpp: "Media_CodecContext",
                       header: "Media_CodecContext.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Constructor.
    ## !< codec context
    ## !< opened codec
    ## !< starting PTS in context
    ## !< starting PTS in the stream
    ## !< stream timebase
    ## !< stream index
    ## !< pixel aspect ratio

  Media_CodecContextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_CodecContext::get_type_name(@)",
                              header: "Media_CodecContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_CodecContext::get_type_descriptor(@)",
    header: "Media_CodecContext.hxx".}
proc DynamicType*(this: Media_CodecContext): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_CodecContext.hxx".}
proc constructMedia_CodecContext*(): Media_CodecContext {.constructor,
    importcpp: "Media_CodecContext(@)", header: "Media_CodecContext.hxx".}
proc destroyMedia_CodecContext*(this: var Media_CodecContext) {.
    importcpp: "#.~Media_CodecContext()", header: "Media_CodecContext.hxx".}
proc Context*(this: Media_CodecContext): ptr AVCodecContext {.noSideEffect,
    importcpp: "Context", header: "Media_CodecContext.hxx".}
proc Init*(this: var Media_CodecContext; theStream: AVStream;
          thePtsStartBase: cdouble; theNbThreads: cint = -1): bool {.importcpp: "Init",
    header: "Media_CodecContext.hxx".}
proc Init*(this: var Media_CodecContext; theStream: AVStream;
          thePtsStartBase: cdouble; theNbThreads: cint; theCodecId: cint): bool {.
    importcpp: "Init", header: "Media_CodecContext.hxx".}
proc Close*(this: var Media_CodecContext) {.importcpp: "Close",
                                        header: "Media_CodecContext.hxx".}
proc SizeX*(this: Media_CodecContext): cint {.noSideEffect, importcpp: "SizeX",
    header: "Media_CodecContext.hxx".}
proc SizeY*(this: Media_CodecContext): cint {.noSideEffect, importcpp: "SizeY",
    header: "Media_CodecContext.hxx".}
proc StreamIndex*(this: Media_CodecContext): cint {.noSideEffect,
    importcpp: "StreamIndex", header: "Media_CodecContext.hxx".}
proc Flush*(this: var Media_CodecContext) {.importcpp: "Flush",
                                        header: "Media_CodecContext.hxx".}
proc CanProcessPacket*(this: Media_CodecContext; thePacket: handle[Media_Packet]): bool {.
    noSideEffect, importcpp: "CanProcessPacket", header: "Media_CodecContext.hxx".}
proc SendPacket*(this: var Media_CodecContext; thePacket: handle[Media_Packet]): bool {.
    importcpp: "SendPacket", header: "Media_CodecContext.hxx".}
proc ReceiveFrame*(this: var Media_CodecContext; theFrame: handle[Media_Frame]): bool {.
    importcpp: "ReceiveFrame", header: "Media_CodecContext.hxx".}