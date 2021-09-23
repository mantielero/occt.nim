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
  ../Graphic3d/Graphic3d_Vec2, ../Image/Image_PixMap,
  ../Standard/Standard_Transient, ../Standard/Standard_Type

discard "forward decl of AVFrame"
type
  Media_Frame* {.importcpp: "Media_Frame", header: "Media_Frame.hxx", bycopy.} = object of Standard_Transient ##
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

  Media_Framebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_Frame::get_type_name(@)",
                              header: "Media_Frame.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_Frame::get_type_descriptor(@)", header: "Media_Frame.hxx".}
proc DynamicType*(this: Media_Frame): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Frame.hxx".}
proc FormatFFmpeg2Occt*(theFormat: cint): Image_Format {.
    importcpp: "Media_Frame::FormatFFmpeg2Occt(@)", header: "Media_Frame.hxx".}
proc FormatOcct2FFmpeg*(theFormat: Image_Format): cint {.
    importcpp: "Media_Frame::FormatOcct2FFmpeg(@)", header: "Media_Frame.hxx".}
proc Swap*(theFrame1: handle[Media_Frame]; theFrame2: handle[Media_Frame]) {.
    importcpp: "Media_Frame::Swap(@)", header: "Media_Frame.hxx".}
proc constructMedia_Frame*(): Media_Frame {.constructor,
    importcpp: "Media_Frame(@)", header: "Media_Frame.hxx".}
proc destroyMedia_Frame*(this: var Media_Frame) {.importcpp: "#.~Media_Frame()",
    header: "Media_Frame.hxx".}
proc IsEmpty*(this: Media_Frame): bool {.noSideEffect, importcpp: "IsEmpty",
                                     header: "Media_Frame.hxx".}
proc Unref*(this: var Media_Frame) {.importcpp: "Unref", header: "Media_Frame.hxx".}
proc Size*(this: Media_Frame): Graphic3d_Vec2i {.noSideEffect, importcpp: "Size",
    header: "Media_Frame.hxx".}
proc SizeX*(this: Media_Frame): cint {.noSideEffect, importcpp: "SizeX",
                                   header: "Media_Frame.hxx".}
proc SizeY*(this: Media_Frame): cint {.noSideEffect, importcpp: "SizeY",
                                   header: "Media_Frame.hxx".}
proc Format*(this: Media_Frame): cint {.noSideEffect, importcpp: "Format",
                                    header: "Media_Frame.hxx".}
proc IsFullRangeYUV*(this: Media_Frame): bool {.noSideEffect,
    importcpp: "IsFullRangeYUV", header: "Media_Frame.hxx".}
proc Plane*(this: Media_Frame; thePlaneId: cint): ptr uint8_t {.noSideEffect,
    importcpp: "Plane", header: "Media_Frame.hxx".}
proc LineSize*(this: Media_Frame; thePlaneId: cint): cint {.noSideEffect,
    importcpp: "LineSize", header: "Media_Frame.hxx".}
proc BestEffortTimestamp*(this: Media_Frame): int64_t {.noSideEffect,
    importcpp: "BestEffortTimestamp", header: "Media_Frame.hxx".}
proc Frame*(this: Media_Frame): ptr AVFrame {.noSideEffect, importcpp: "Frame",
    header: "Media_Frame.hxx".}
proc ChangeFrame*(this: var Media_Frame): ptr AVFrame {.importcpp: "ChangeFrame",
    header: "Media_Frame.hxx".}
proc Pts*(this: Media_Frame): cdouble {.noSideEffect, importcpp: "Pts",
                                    header: "Media_Frame.hxx".}
proc SetPts*(this: var Media_Frame; thePts: cdouble) {.importcpp: "SetPts",
    header: "Media_Frame.hxx".}
proc PixelAspectRatio*(this: Media_Frame): cfloat {.noSideEffect,
    importcpp: "PixelAspectRatio", header: "Media_Frame.hxx".}
proc SetPixelAspectRatio*(this: var Media_Frame; theRatio: cfloat) {.
    importcpp: "SetPixelAspectRatio", header: "Media_Frame.hxx".}
proc IsLocked*(this: Media_Frame): bool {.noSideEffect, importcpp: "IsLocked",
                                      header: "Media_Frame.hxx".}
proc SetLocked*(this: var Media_Frame; theToLock: bool) {.importcpp: "SetLocked",
    header: "Media_Frame.hxx".}
proc InitWrapper*(this: var Media_Frame; thePixMap: handle[Image_PixMap]): bool {.
    importcpp: "InitWrapper", header: "Media_Frame.hxx".}