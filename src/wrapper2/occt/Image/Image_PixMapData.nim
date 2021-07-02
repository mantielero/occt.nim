##  Created on: 2012-07-18
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## ! Structure to manage image buffer.

type
  ImagePixMapData* {.importcpp: "Image_PixMapData", header: "Image_PixMapData.hxx",
                    bycopy.} = object of NCollectionBuffer ## ! Empty constructor.
    ## !< pointer to the topmost row (depending on scanlines order in memory)
    sizeBPP* {.importc: "SizeBPP".}: StandardSize ## !< bytes per pixel
    sizeX* {.importc: "SizeX".}: StandardSize ## !< width  in pixels
    sizeY* {.importc: "SizeY".}: StandardSize ## !< height in pixels
    sizeRowBytes* {.importc: "SizeRowBytes".}: StandardSize ## !< number of bytes per line (in most cases equal to 3 * sizeX)
    topToDown* {.importc: "TopToDown".}: StandardSize ## !< image scanlines direction in memory from Top to the Down


proc constructImagePixMapData*(): ImagePixMapData {.constructor,
    importcpp: "Image_PixMapData(@)", header: "Image_PixMapData.hxx".}
proc init*(this: var ImagePixMapData; theAlloc: Handle[NCollectionBaseAllocator];
          theSizeBPP: StandardSize; theSizeX: StandardSize; theSizeY: StandardSize;
          theSizeRowBytes: StandardSize; theDataPtr: ptr StandardByte): bool {.
    importcpp: "Init", header: "Image_PixMapData.hxx".}
proc zeroData*(this: var ImagePixMapData) {.importcpp: "ZeroData",
                                        header: "Image_PixMapData.hxx".}
proc row*(this: ImagePixMapData; theRow: StandardSize): ptr StandardByte {.
    noSideEffect, importcpp: "Row", header: "Image_PixMapData.hxx".}
proc changeRow*(this: var ImagePixMapData; theRow: StandardSize): ptr StandardByte {.
    importcpp: "ChangeRow", header: "Image_PixMapData.hxx".}
proc value*(this: ImagePixMapData; theRow: StandardSize; theCol: StandardSize): ptr StandardByte {.
    noSideEffect, importcpp: "Value", header: "Image_PixMapData.hxx".}
proc changeValue*(this: var ImagePixMapData; theRow: StandardSize;
                 theCol: StandardSize): ptr StandardByte {.importcpp: "ChangeValue",
    header: "Image_PixMapData.hxx".}
proc maxRowAligmentBytes*(this: ImagePixMapData): StandardSize {.noSideEffect,
    importcpp: "MaxRowAligmentBytes", header: "Image_PixMapData.hxx".}
proc setTopDown*(this: var ImagePixMapData; theIsTopDown: bool) {.
    importcpp: "SetTopDown", header: "Image_PixMapData.hxx".}
type
  ImagePixMapDatabaseType* = NCollectionBuffer

proc getTypeName*(): cstring {.importcpp: "Image_PixMapData::get_type_name(@)",
                            header: "Image_PixMapData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_PixMapData::get_type_descriptor(@)",
    header: "Image_PixMapData.hxx".}
proc dynamicType*(this: ImagePixMapData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_PixMapData.hxx".}
discard "forward decl of Image_PixMapData"
type
  HandleImagePixMapData* = Handle[ImagePixMapData]


