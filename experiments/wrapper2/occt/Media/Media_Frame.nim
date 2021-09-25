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

discard "forward decl of AVFrame"
type
  MediaFrame* {.importcpp: "Media_Frame", header: "Media_Frame.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Convert
                                                                                                  ## pixel
                                                                                                  ## format
                                                                                                  ## from
                                                                                                  ## FFmpeg
                                                                                                  ## (AVPixelFormat)
                                                                                                  ## to
                                                                                                  ## OCCT.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Wrap
                                                                                                  ## allocated
                                                                                                  ## image
                                                                                                  ## pixmap.
    ## !< frame
    ## !< presentation timestamp
    ## !< pixel aspect ratio
    ## !< locked state

  MediaFramebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_Frame::get_type_name(@)",
                            header: "Media_Frame.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_Frame::get_type_descriptor(@)", header: "Media_Frame.hxx".}
proc dynamicType*(this: MediaFrame): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Frame.hxx".}
proc formatFFmpeg2Occt*(theFormat: cint): ImageFormat {.
    importcpp: "Media_Frame::FormatFFmpeg2Occt(@)", header: "Media_Frame.hxx".}
proc formatOcct2FFmpeg*(theFormat: ImageFormat): cint {.
    importcpp: "Media_Frame::FormatOcct2FFmpeg(@)", header: "Media_Frame.hxx".}
proc swap*(theFrame1: Handle[MediaFrame]; theFrame2: Handle[MediaFrame]) {.
    importcpp: "Media_Frame::Swap(@)", header: "Media_Frame.hxx".}
proc constructMediaFrame*(): MediaFrame {.constructor, importcpp: "Media_Frame(@)",
                                       header: "Media_Frame.hxx".}
proc destroyMediaFrame*(this: var MediaFrame) {.importcpp: "#.~Media_Frame()",
    header: "Media_Frame.hxx".}
proc isEmpty*(this: MediaFrame): bool {.noSideEffect, importcpp: "IsEmpty",
                                    header: "Media_Frame.hxx".}
proc unref*(this: var MediaFrame) {.importcpp: "Unref", header: "Media_Frame.hxx".}
proc size*(this: MediaFrame): Graphic3dVec2i {.noSideEffect, importcpp: "Size",
    header: "Media_Frame.hxx".}
proc sizeX*(this: MediaFrame): cint {.noSideEffect, importcpp: "SizeX",
                                  header: "Media_Frame.hxx".}
proc sizeY*(this: MediaFrame): cint {.noSideEffect, importcpp: "SizeY",
                                  header: "Media_Frame.hxx".}
proc format*(this: MediaFrame): cint {.noSideEffect, importcpp: "Format",
                                   header: "Media_Frame.hxx".}
proc isFullRangeYUV*(this: MediaFrame): bool {.noSideEffect,
    importcpp: "IsFullRangeYUV", header: "Media_Frame.hxx".}
proc plane*(this: MediaFrame; thePlaneId: cint): ptr uint8T {.noSideEffect,
    importcpp: "Plane", header: "Media_Frame.hxx".}
proc lineSize*(this: MediaFrame; thePlaneId: cint): cint {.noSideEffect,
    importcpp: "LineSize", header: "Media_Frame.hxx".}
proc bestEffortTimestamp*(this: MediaFrame): int64T {.noSideEffect,
    importcpp: "BestEffortTimestamp", header: "Media_Frame.hxx".}
proc frame*(this: MediaFrame): ptr AVFrame {.noSideEffect, importcpp: "Frame",
                                        header: "Media_Frame.hxx".}
proc changeFrame*(this: var MediaFrame): ptr AVFrame {.importcpp: "ChangeFrame",
    header: "Media_Frame.hxx".}
proc pts*(this: MediaFrame): cdouble {.noSideEffect, importcpp: "Pts",
                                   header: "Media_Frame.hxx".}
proc setPts*(this: var MediaFrame; thePts: cdouble) {.importcpp: "SetPts",
    header: "Media_Frame.hxx".}
proc pixelAspectRatio*(this: MediaFrame): cfloat {.noSideEffect,
    importcpp: "PixelAspectRatio", header: "Media_Frame.hxx".}
proc setPixelAspectRatio*(this: var MediaFrame; theRatio: cfloat) {.
    importcpp: "SetPixelAspectRatio", header: "Media_Frame.hxx".}
proc isLocked*(this: MediaFrame): bool {.noSideEffect, importcpp: "IsLocked",
                                     header: "Media_Frame.hxx".}
proc setLocked*(this: var MediaFrame; theToLock: bool) {.importcpp: "SetLocked",
    header: "Media_Frame.hxx".}
proc initWrapper*(this: var MediaFrame; thePixMap: Handle[ImagePixMap]): bool {.
    importcpp: "InitWrapper", header: "Media_Frame.hxx".}
