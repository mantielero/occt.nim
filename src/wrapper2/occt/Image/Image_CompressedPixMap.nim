##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Compressed pixmap data definition.
## ! It is defined independently from Image_PixMap, which defines only uncompressed formats.

type
  ImageCompressedPixMap* {.importcpp: "Image_CompressedPixMap",
                          header: "Image_CompressedPixMap.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Return
                                                                                                ## base
                                                                                                ## (uncompressed)
                                                                                                ## pixel
                                                                                                ## format.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    ## !< Array of mipmap sizes, including base level
    ## !< raw compressed data
    ## !< surface length in bytes
    ## !< number of faces in the file
    ## !< surface width
    ## !< surface height
    ## !< base (uncompressed) pixel format
    ## !< compressed format
    ## !< flag indicating complete mip map level set (up to 1x1 resolution)

  ImageCompressedPixMapbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Image_CompressedPixMap::get_type_name(@)",
                            header: "Image_CompressedPixMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_CompressedPixMap::get_type_descriptor(@)",
    header: "Image_CompressedPixMap.hxx".}
proc dynamicType*(this: ImageCompressedPixMap): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_CompressedPixMap.hxx".}
proc baseFormat*(this: ImageCompressedPixMap): ImageFormat {.noSideEffect,
    importcpp: "BaseFormat", header: "Image_CompressedPixMap.hxx".}
proc setBaseFormat*(this: var ImageCompressedPixMap; theFormat: ImageFormat) {.
    importcpp: "SetBaseFormat", header: "Image_CompressedPixMap.hxx".}
proc compressedFormat*(this: ImageCompressedPixMap): ImageCompressedFormat {.
    noSideEffect, importcpp: "CompressedFormat",
    header: "Image_CompressedPixMap.hxx".}
proc setCompressedFormat*(this: var ImageCompressedPixMap;
                         theFormat: ImageCompressedFormat) {.
    importcpp: "SetCompressedFormat", header: "Image_CompressedPixMap.hxx".}
proc faceData*(this: ImageCompressedPixMap): Handle[NCollectionBuffer] {.
    noSideEffect, importcpp: "FaceData", header: "Image_CompressedPixMap.hxx".}
proc setFaceData*(this: var ImageCompressedPixMap;
                 theBuffer: Handle[NCollectionBuffer]) {.importcpp: "SetFaceData",
    header: "Image_CompressedPixMap.hxx".}
proc mipMaps*(this: ImageCompressedPixMap): NCollectionArray1[StandardInteger] {.
    noSideEffect, importcpp: "MipMaps", header: "Image_CompressedPixMap.hxx".}
proc changeMipMaps*(this: var ImageCompressedPixMap): var NCollectionArray1[
    StandardInteger] {.importcpp: "ChangeMipMaps",
                      header: "Image_CompressedPixMap.hxx".}
proc isCompleteMipMapSet*(this: ImageCompressedPixMap): StandardBoolean {.
    noSideEffect, importcpp: "IsCompleteMipMapSet",
    header: "Image_CompressedPixMap.hxx".}
proc setCompleteMipMapSet*(this: var ImageCompressedPixMap;
                          theIsComplete: StandardBoolean) {.
    importcpp: "SetCompleteMipMapSet", header: "Image_CompressedPixMap.hxx".}
proc faceBytes*(this: ImageCompressedPixMap): StandardSize {.noSideEffect,
    importcpp: "FaceBytes", header: "Image_CompressedPixMap.hxx".}
proc setFaceBytes*(this: var ImageCompressedPixMap; theSize: StandardSize) {.
    importcpp: "SetFaceBytes", header: "Image_CompressedPixMap.hxx".}
proc sizeX*(this: ImageCompressedPixMap): StandardInteger {.noSideEffect,
    importcpp: "SizeX", header: "Image_CompressedPixMap.hxx".}
proc sizeY*(this: ImageCompressedPixMap): StandardInteger {.noSideEffect,
    importcpp: "SizeY", header: "Image_CompressedPixMap.hxx".}
proc setSize*(this: var ImageCompressedPixMap; theSizeX: StandardInteger;
             theSizeY: StandardInteger) {.importcpp: "SetSize",
                                        header: "Image_CompressedPixMap.hxx".}
proc isTopDown*(this: ImageCompressedPixMap): bool {.noSideEffect,
    importcpp: "IsTopDown", header: "Image_CompressedPixMap.hxx".}
proc nbFaces*(this: ImageCompressedPixMap): StandardInteger {.noSideEffect,
    importcpp: "NbFaces", header: "Image_CompressedPixMap.hxx".}
proc setNbFaces*(this: var ImageCompressedPixMap; theSize: StandardInteger) {.
    importcpp: "SetNbFaces", header: "Image_CompressedPixMap.hxx".}
proc constructImageCompressedPixMap*(): ImageCompressedPixMap {.constructor,
    importcpp: "Image_CompressedPixMap(@)", header: "Image_CompressedPixMap.hxx".}

