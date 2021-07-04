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
  Image_PixMapData

## ! Structure to manage image buffer with predefined pixel type.

type
  Image_PixMapTypedData*[PixelType_t] {.importcpp: "Image_PixMapTypedData<\'0>",
                                       header: "Image_PixMapTypedData.hxx", bycopy.} = object of Image_PixMapData ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor.


proc constructImage_PixMapTypedData*[PixelType_t](): Image_PixMapTypedData[
    PixelType_t] {.constructor, importcpp: "Image_PixMapTypedData<\'*0>(@)",
                  header: "Image_PixMapTypedData.hxx".}
proc Init*[PixelType_t](this: var Image_PixMapTypedData[PixelType_t];
                       theAlloc: handle[NCollection_BaseAllocator];
                       theSizeX: Standard_Size; theSizeY: Standard_Size;
                       theSizeRowBytes: Standard_Size = 0;
                       theDataPtr: ptr Standard_Byte = 0): bool {.importcpp: "Init",
    header: "Image_PixMapTypedData.hxx".}
proc Init*[PixelType_t](this: var Image_PixMapTypedData[PixelType_t];
                       theValue: PixelType_t) {.importcpp: "Init",
    header: "Image_PixMapTypedData.hxx".}
proc Row*[PixelType_t](this: Image_PixMapTypedData[PixelType_t];
                      theRow: Standard_Size): ptr PixelType_t {.noSideEffect,
    importcpp: "Row", header: "Image_PixMapTypedData.hxx".}
proc ChangeRow*[PixelType_t](this: var Image_PixMapTypedData[PixelType_t];
                            theRow: Standard_Size): ptr PixelType_t {.
    importcpp: "ChangeRow", header: "Image_PixMapTypedData.hxx".}
proc Value*[PixelType_t](this: Image_PixMapTypedData[PixelType_t];
                        theRow: Standard_Size; theCol: Standard_Size): PixelType_t {.
    noSideEffect, importcpp: "Value", header: "Image_PixMapTypedData.hxx".}
proc ChangeValue*[PixelType_t](this: var Image_PixMapTypedData[PixelType_t];
                              theRow: Standard_Size; theCol: Standard_Size): var PixelType_t {.
    importcpp: "ChangeValue", header: "Image_PixMapTypedData.hxx".}