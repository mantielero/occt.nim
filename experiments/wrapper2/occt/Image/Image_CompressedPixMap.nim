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

import
  Image_Format, Image_CompressedFormat, ../NCollection/NCollection_Array1,
  ../NCollection/NCollection_Buffer, ../Standard/Standard_Type

## ! Compressed pixmap data definition.
## ! It is defined independently from Image_PixMap, which defines only uncompressed formats.

type
  Image_CompressedPixMap* {.importcpp: "Image_CompressedPixMap",
                           header: "Image_CompressedPixMap.hxx", bycopy.} = object of Standard_Transient ##
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

  Image_CompressedPixMapbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_CompressedPixMap::get_type_name(@)",
                              header: "Image_CompressedPixMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_CompressedPixMap::get_type_descriptor(@)",
    header: "Image_CompressedPixMap.hxx".}
proc DynamicType*(this: Image_CompressedPixMap): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Image_CompressedPixMap.hxx".}
proc BaseFormat*(this: Image_CompressedPixMap): Image_Format {.noSideEffect,
    importcpp: "BaseFormat", header: "Image_CompressedPixMap.hxx".}
proc SetBaseFormat*(this: var Image_CompressedPixMap; theFormat: Image_Format) {.
    importcpp: "SetBaseFormat", header: "Image_CompressedPixMap.hxx".}
proc CompressedFormat*(this: Image_CompressedPixMap): Image_CompressedFormat {.
    noSideEffect, importcpp: "CompressedFormat",
    header: "Image_CompressedPixMap.hxx".}
proc SetCompressedFormat*(this: var Image_CompressedPixMap;
                         theFormat: Image_CompressedFormat) {.
    importcpp: "SetCompressedFormat", header: "Image_CompressedPixMap.hxx".}
proc FaceData*(this: Image_CompressedPixMap): handle[NCollection_Buffer] {.
    noSideEffect, importcpp: "FaceData", header: "Image_CompressedPixMap.hxx".}
proc SetFaceData*(this: var Image_CompressedPixMap;
                 theBuffer: handle[NCollection_Buffer]) {.
    importcpp: "SetFaceData", header: "Image_CompressedPixMap.hxx".}
proc MipMaps*(this: Image_CompressedPixMap): NCollection_Array1[Standard_Integer] {.
    noSideEffect, importcpp: "MipMaps", header: "Image_CompressedPixMap.hxx".}
proc ChangeMipMaps*(this: var Image_CompressedPixMap): var NCollection_Array1[
    Standard_Integer] {.importcpp: "ChangeMipMaps",
                       header: "Image_CompressedPixMap.hxx".}
proc IsCompleteMipMapSet*(this: Image_CompressedPixMap): Standard_Boolean {.
    noSideEffect, importcpp: "IsCompleteMipMapSet",
    header: "Image_CompressedPixMap.hxx".}
proc SetCompleteMipMapSet*(this: var Image_CompressedPixMap;
                          theIsComplete: Standard_Boolean) {.
    importcpp: "SetCompleteMipMapSet", header: "Image_CompressedPixMap.hxx".}
proc FaceBytes*(this: Image_CompressedPixMap): Standard_Size {.noSideEffect,
    importcpp: "FaceBytes", header: "Image_CompressedPixMap.hxx".}
proc SetFaceBytes*(this: var Image_CompressedPixMap; theSize: Standard_Size) {.
    importcpp: "SetFaceBytes", header: "Image_CompressedPixMap.hxx".}
proc SizeX*(this: Image_CompressedPixMap): Standard_Integer {.noSideEffect,
    importcpp: "SizeX", header: "Image_CompressedPixMap.hxx".}
proc SizeY*(this: Image_CompressedPixMap): Standard_Integer {.noSideEffect,
    importcpp: "SizeY", header: "Image_CompressedPixMap.hxx".}
proc SetSize*(this: var Image_CompressedPixMap; theSizeX: Standard_Integer;
             theSizeY: Standard_Integer) {.importcpp: "SetSize",
    header: "Image_CompressedPixMap.hxx".}
proc IsTopDown*(this: Image_CompressedPixMap): bool {.noSideEffect,
    importcpp: "IsTopDown", header: "Image_CompressedPixMap.hxx".}
proc NbFaces*(this: Image_CompressedPixMap): Standard_Integer {.noSideEffect,
    importcpp: "NbFaces", header: "Image_CompressedPixMap.hxx".}
proc SetNbFaces*(this: var Image_CompressedPixMap; theSize: Standard_Integer) {.
    importcpp: "SetNbFaces", header: "Image_CompressedPixMap.hxx".}
proc constructImage_CompressedPixMap*(): Image_CompressedPixMap {.constructor,
    importcpp: "Image_CompressedPixMap(@)", header: "Image_CompressedPixMap.hxx".}