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

discard "forward decl of AVPacket"
type
  MediaPacket* {.importcpp: "Media_Packet", header: "Media_Packet.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor
    ## !< packet
    ## !< packet duration in seconds

  MediaPacketbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_Packet::get_type_name(@)",
                            header: "Media_Packet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_Packet::get_type_descriptor(@)", header: "Media_Packet.hxx".}
proc dynamicType*(this: MediaPacket): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Packet.hxx".}
proc constructMediaPacket*(): MediaPacket {.constructor,
    importcpp: "Media_Packet(@)", header: "Media_Packet.hxx".}
proc destroyMediaPacket*(this: var MediaPacket) {.importcpp: "#.~Media_Packet()",
    header: "Media_Packet.hxx".}
proc unref*(this: var MediaPacket) {.importcpp: "Unref", header: "Media_Packet.hxx".}
proc packet*(this: MediaPacket): ptr AVPacket {.noSideEffect, importcpp: "Packet",
    header: "Media_Packet.hxx".}
proc changePacket*(this: var MediaPacket): ptr AVPacket {.importcpp: "ChangePacket",
    header: "Media_Packet.hxx".}
proc data*(this: MediaPacket): ptr uint8T {.noSideEffect, importcpp: "Data",
                                       header: "Media_Packet.hxx".}
proc changeData*(this: var MediaPacket): ptr uint8T {.importcpp: "ChangeData",
    header: "Media_Packet.hxx".}
proc size*(this: MediaPacket): cint {.noSideEffect, importcpp: "Size",
                                  header: "Media_Packet.hxx".}
proc pts*(this: MediaPacket): int64T {.noSideEffect, importcpp: "Pts",
                                   header: "Media_Packet.hxx".}
proc dts*(this: MediaPacket): int64T {.noSideEffect, importcpp: "Dts",
                                   header: "Media_Packet.hxx".}
proc duration*(this: MediaPacket): int64T {.noSideEffect, importcpp: "Duration",
                                        header: "Media_Packet.hxx".}
proc durationSeconds*(this: MediaPacket): cdouble {.noSideEffect,
    importcpp: "DurationSeconds", header: "Media_Packet.hxx".}
proc setDurationSeconds*(this: var MediaPacket; theDurationSec: cdouble) {.
    importcpp: "SetDurationSeconds", header: "Media_Packet.hxx".}
proc streamIndex*(this: MediaPacket): cint {.noSideEffect, importcpp: "StreamIndex",
    header: "Media_Packet.hxx".}
proc isKeyFrame*(this: MediaPacket): bool {.noSideEffect, importcpp: "IsKeyFrame",
                                        header: "Media_Packet.hxx".}
proc setKeyFrame*(this: var MediaPacket) {.importcpp: "SetKeyFrame",
                                       header: "Media_Packet.hxx".}

