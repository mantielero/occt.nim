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
  ../Standard/Standard_Transient, ../Standard/Standard_Type

discard "forward decl of AVPacket"
type
  Media_Packet* {.importcpp: "Media_Packet", header: "Media_Packet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor
    ## !< packet
    ## !< packet duration in seconds

  Media_Packetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_Packet::get_type_name(@)",
                              header: "Media_Packet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_Packet::get_type_descriptor(@)", header: "Media_Packet.hxx".}
proc DynamicType*(this: Media_Packet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Packet.hxx".}
proc constructMedia_Packet*(): Media_Packet {.constructor,
    importcpp: "Media_Packet(@)", header: "Media_Packet.hxx".}
proc destroyMedia_Packet*(this: var Media_Packet) {.importcpp: "#.~Media_Packet()",
    header: "Media_Packet.hxx".}
proc Unref*(this: var Media_Packet) {.importcpp: "Unref", header: "Media_Packet.hxx".}
proc Packet*(this: Media_Packet): ptr AVPacket {.noSideEffect, importcpp: "Packet",
    header: "Media_Packet.hxx".}
proc ChangePacket*(this: var Media_Packet): ptr AVPacket {.importcpp: "ChangePacket",
    header: "Media_Packet.hxx".}
proc Data*(this: Media_Packet): ptr uint8_t {.noSideEffect, importcpp: "Data",
    header: "Media_Packet.hxx".}
proc ChangeData*(this: var Media_Packet): ptr uint8_t {.importcpp: "ChangeData",
    header: "Media_Packet.hxx".}
proc Size*(this: Media_Packet): cint {.noSideEffect, importcpp: "Size",
                                   header: "Media_Packet.hxx".}
proc Pts*(this: Media_Packet): int64_t {.noSideEffect, importcpp: "Pts",
                                     header: "Media_Packet.hxx".}
proc Dts*(this: Media_Packet): int64_t {.noSideEffect, importcpp: "Dts",
                                     header: "Media_Packet.hxx".}
proc Duration*(this: Media_Packet): int64_t {.noSideEffect, importcpp: "Duration",
    header: "Media_Packet.hxx".}
proc DurationSeconds*(this: Media_Packet): cdouble {.noSideEffect,
    importcpp: "DurationSeconds", header: "Media_Packet.hxx".}
proc SetDurationSeconds*(this: var Media_Packet; theDurationSec: cdouble) {.
    importcpp: "SetDurationSeconds", header: "Media_Packet.hxx".}
proc StreamIndex*(this: Media_Packet): cint {.noSideEffect, importcpp: "StreamIndex",
    header: "Media_Packet.hxx".}
proc IsKeyFrame*(this: Media_Packet): bool {.noSideEffect, importcpp: "IsKeyFrame",
    header: "Media_Packet.hxx".}
proc SetKeyFrame*(this: var Media_Packet) {.importcpp: "SetKeyFrame",
                                        header: "Media_Packet.hxx".}