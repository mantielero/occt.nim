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

## ! Structure to manage image buffer with predefined pixel type.

type
  ImagePixMapTypedData*[PixelTypeT] {.importcpp: "Image_PixMapTypedData<\'0>",
                                     header: "Image_PixMapTypedData.hxx", bycopy.} = object of ImagePixMapData ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor.


proc constructImagePixMapTypedData*[PixelTypeT](): ImagePixMapTypedData[PixelTypeT] {.
    constructor, importcpp: "Image_PixMapTypedData<\'*0>(@)",
    header: "Image_PixMapTypedData.hxx".}
proc init*[PixelTypeT](this: var ImagePixMapTypedData[PixelTypeT];
                      theAlloc: Handle[NCollectionBaseAllocator];
                      theSizeX: StandardSize; theSizeY: StandardSize;
                      theSizeRowBytes: StandardSize = 0;
                      theDataPtr: ptr StandardByte = 0): bool {.importcpp: "Init",
    header: "Image_PixMapTypedData.hxx".}
proc init*[PixelTypeT](this: var ImagePixMapTypedData[PixelTypeT];
                      theValue: PixelTypeT) {.importcpp: "Init",
    header: "Image_PixMapTypedData.hxx".}
proc row*[PixelTypeT](this: ImagePixMapTypedData[PixelTypeT]; theRow: StandardSize): ptr PixelTypeT {.
    noSideEffect, importcpp: "Row", header: "Image_PixMapTypedData.hxx".}
proc changeRow*[PixelTypeT](this: var ImagePixMapTypedData[PixelTypeT];
                           theRow: StandardSize): ptr PixelTypeT {.
    importcpp: "ChangeRow", header: "Image_PixMapTypedData.hxx".}
proc value*[PixelTypeT](this: ImagePixMapTypedData[PixelTypeT];
                       theRow: StandardSize; theCol: StandardSize): PixelTypeT {.
    noSideEffect, importcpp: "Value", header: "Image_PixMapTypedData.hxx".}
proc changeValue*[PixelTypeT](this: var ImagePixMapTypedData[PixelTypeT];
                             theRow: StandardSize; theCol: StandardSize): var PixelTypeT {.
    importcpp: "ChangeValue", header: "Image_PixMapTypedData.hxx".}

