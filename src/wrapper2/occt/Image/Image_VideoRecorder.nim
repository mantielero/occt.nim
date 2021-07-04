##  Created on: 2016-04-01
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  Image_PixMap, ../Resource/Resource_DataMapOfAsciiStringAsciiString,
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString

##  forward declarations

discard "forward decl of AVFormatContext"
discard "forward decl of AVStream"
discard "forward decl of AVCodec"
discard "forward decl of AVFrame"
discard "forward decl of SwsContext"
when defined(PixelFormat):
  discard
## ! Auxiliary structure defining video parameters.
## ! Please refer to FFmpeg documentation for defining text values.

type
  Image_VideoParams* {.importcpp: "Image_VideoParams",
                      header: "Image_VideoRecorder.hxx", bycopy.} = object
    Format* {.importc: "Format".}: TCollection_AsciiString ## !< [optional]  video format (container), if empty - will be determined from the file name
    VideoCodec* {.importc: "VideoCodec".}: TCollection_AsciiString ## !< [optional]  codec identifier, if empty - default codec from file format will be used
    PixelFormat* {.importc: "PixelFormat".}: TCollection_AsciiString ## !< [optional]  pixel format, if empty - default codec pixel format will be used
    Width* {.importc: "Width".}: Standard_Integer ## !< [mandatory] video frame width
    Height* {.importc: "Height".}: Standard_Integer ## !< [mandatory] video frame height
    FpsNum* {.importc: "FpsNum".}: Standard_Integer ## !< [mandatory] framerate numerator
    FpsDen* {.importc: "FpsDen".}: Standard_Integer ## !< [mandatory] framerate denumerator
    VideoCodecParams* {.importc: "VideoCodecParams".}: Resource_DataMapOfAsciiStringAsciiString ## !< map of advanced video codec parameters
                                                                                            ## ! Empty constructor.


proc constructImage_VideoParams*(): Image_VideoParams {.constructor,
    importcpp: "Image_VideoParams(@)", header: "Image_VideoRecorder.hxx".}
proc SetFramerate*(this: var Image_VideoParams; theNumerator: Standard_Integer;
                  theDenominator: Standard_Integer) {.importcpp: "SetFramerate",
    header: "Image_VideoRecorder.hxx".}
proc SetFramerate*(this: var Image_VideoParams; theValue: Standard_Integer) {.
    importcpp: "SetFramerate", header: "Image_VideoRecorder.hxx".}
## ! Video recording tool based on FFmpeg framework.

type
  Image_VideoRecorder* {.importcpp: "Image_VideoRecorder",
                        header: "Image_VideoRecorder.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Wrapper
                                                                                            ## for
                                                                                            ## av_strerror().
                                                                                            ##
                                                                                            ## !
                                                                                            ## AVRational
                                                                                            ## alias.
    ## !< video context
    ## !< video stream
    ## !< video codec
    ## !< frame to record
    ## !< scale context for conversion from RGBA to YUV
    ## !< input RGBA image
    ## !< video framerate
    ## !< current frame index

  Image_VideoRecorderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_VideoRecorder::get_type_name(@)",
                              header: "Image_VideoRecorder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_VideoRecorder::get_type_descriptor(@)",
    header: "Image_VideoRecorder.hxx".}
proc DynamicType*(this: Image_VideoRecorder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_VideoRecorder.hxx".}
proc constructImage_VideoRecorder*(): Image_VideoRecorder {.constructor,
    importcpp: "Image_VideoRecorder(@)", header: "Image_VideoRecorder.hxx".}
proc destroyImage_VideoRecorder*(this: var Image_VideoRecorder) {.
    importcpp: "#.~Image_VideoRecorder()", header: "Image_VideoRecorder.hxx".}
proc Close*(this: var Image_VideoRecorder) {.importcpp: "Close",
    header: "Image_VideoRecorder.hxx".}
proc Open*(this: var Image_VideoRecorder; theFileName: cstring;
          theParams: Image_VideoParams): Standard_Boolean {.importcpp: "Open",
    header: "Image_VideoRecorder.hxx".}
proc ChangeFrame*(this: var Image_VideoRecorder): var Image_PixMap {.
    importcpp: "ChangeFrame", header: "Image_VideoRecorder.hxx".}
proc FrameCount*(this: Image_VideoRecorder): int64_t {.noSideEffect,
    importcpp: "FrameCount", header: "Image_VideoRecorder.hxx".}
proc PushFrame*(this: var Image_VideoRecorder): Standard_Boolean {.
    importcpp: "PushFrame", header: "Image_VideoRecorder.hxx".}
discard "forward decl of Image_VideoRecorder"
type
  Handle_Image_VideoRecorder* = handle[Image_VideoRecorder]
