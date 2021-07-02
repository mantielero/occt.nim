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

##  forward declarations

discard "forward decl of AVFormatContext"
discard "forward decl of AVStream"
discard "forward decl of AVCodec"
discard "forward decl of AVFrame"
discard "forward decl of SwsContext"
# when defined(PixelFormat):
#   discard
## ! Auxiliary structure defining video parameters.
## ! Please refer to FFmpeg documentation for defining text values.

type
  ImageVideoParams* {.importcpp: "Image_VideoParams",
                     header: "Image_VideoRecorder.hxx", bycopy.} = object
    format* {.importc: "Format".}: TCollectionAsciiString ## !< [optional]  video format (container), if empty - will be determined from the file name
    videoCodec* {.importc: "VideoCodec".}: TCollectionAsciiString ## !< [optional]  codec identifier, if empty - default codec from file format will be used
    pixelFormat* {.importc: "PixelFormat".}: TCollectionAsciiString ## !< [optional]  pixel format, if empty - default codec pixel format will be used
    width* {.importc: "Width".}: StandardInteger ## !< [mandatory] video frame width
    height* {.importc: "Height".}: StandardInteger ## !< [mandatory] video frame height
    fpsNum* {.importc: "FpsNum".}: StandardInteger ## !< [mandatory] framerate numerator
    fpsDen* {.importc: "FpsDen".}: StandardInteger ## !< [mandatory] framerate denumerator
    videoCodecParams* {.importc: "VideoCodecParams".}: ResourceDataMapOfAsciiStringAsciiString ## !< map of advanced video codec parameters
                                                                                           ## ! Empty constructor.


proc constructImageVideoParams*(): ImageVideoParams {.constructor,
    importcpp: "Image_VideoParams(@)", header: "Image_VideoRecorder.hxx".}
proc setFramerate*(this: var ImageVideoParams; theNumerator: StandardInteger;
                  theDenominator: StandardInteger) {.importcpp: "SetFramerate",
    header: "Image_VideoRecorder.hxx".}
proc setFramerate*(this: var ImageVideoParams; theValue: StandardInteger) {.
    importcpp: "SetFramerate", header: "Image_VideoRecorder.hxx".}
## ! Video recording tool based on FFmpeg framework.

type
  ImageVideoRecorder* {.importcpp: "Image_VideoRecorder",
                       header: "Image_VideoRecorder.hxx", bycopy.} = object of StandardTransient ##
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

  ImageVideoRecorderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Image_VideoRecorder::get_type_name(@)",
                            header: "Image_VideoRecorder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_VideoRecorder::get_type_descriptor(@)",
    header: "Image_VideoRecorder.hxx".}
proc dynamicType*(this: ImageVideoRecorder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_VideoRecorder.hxx".}
proc constructImageVideoRecorder*(): ImageVideoRecorder {.constructor,
    importcpp: "Image_VideoRecorder(@)", header: "Image_VideoRecorder.hxx".}
proc destroyImageVideoRecorder*(this: var ImageVideoRecorder) {.
    importcpp: "#.~Image_VideoRecorder()", header: "Image_VideoRecorder.hxx".}
proc close*(this: var ImageVideoRecorder) {.importcpp: "Close",
                                        header: "Image_VideoRecorder.hxx".}
proc open*(this: var ImageVideoRecorder; theFileName: cstring;
          theParams: ImageVideoParams): StandardBoolean {.importcpp: "Open",
    header: "Image_VideoRecorder.hxx".}
proc changeFrame*(this: var ImageVideoRecorder): var ImagePixMap {.
    importcpp: "ChangeFrame", header: "Image_VideoRecorder.hxx".}
proc frameCount*(this: ImageVideoRecorder): int64T {.noSideEffect,
    importcpp: "FrameCount", header: "Image_VideoRecorder.hxx".}
proc pushFrame*(this: var ImageVideoRecorder): StandardBoolean {.
    importcpp: "PushFrame", header: "Image_VideoRecorder.hxx".}
discard "forward decl of Image_VideoRecorder"
type
  HandleImageVideoRecorder* = Handle[ImageVideoRecorder]


