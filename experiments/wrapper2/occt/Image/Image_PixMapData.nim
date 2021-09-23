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

import
  Image_Color, ../NCollection/NCollection_Buffer

## ! Structure to manage image buffer.

type
  Image_PixMapData* {.importcpp: "Image_PixMapData",
                     header: "Image_PixMapData.hxx", bycopy.} = object of NCollection_Buffer ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
    ## !< pointer to the topmost row (depending on scanlines order in memory)
    SizeBPP* {.importc: "SizeBPP".}: Standard_Size ## !< bytes per pixel
    SizeX* {.importc: "SizeX".}: Standard_Size ## !< width  in pixels
    SizeY* {.importc: "SizeY".}: Standard_Size ## !< height in pixels
    SizeRowBytes* {.importc: "SizeRowBytes".}: Standard_Size ## !< number of bytes per line (in most cases equal to 3 * sizeX)
    TopToDown* {.importc: "TopToDown".}: Standard_Size ## !< image scanlines direction in memory from Top to the Down


proc constructImage_PixMapData*(): Image_PixMapData {.constructor,
    importcpp: "Image_PixMapData(@)", header: "Image_PixMapData.hxx".}
proc Init*(this: var Image_PixMapData; theAlloc: handle[NCollection_BaseAllocator];
          theSizeBPP: Standard_Size; theSizeX: Standard_Size;
          theSizeY: Standard_Size; theSizeRowBytes: Standard_Size;
          theDataPtr: ptr Standard_Byte): bool {.importcpp: "Init",
    header: "Image_PixMapData.hxx".}
proc ZeroData*(this: var Image_PixMapData) {.importcpp: "ZeroData",
    header: "Image_PixMapData.hxx".}
proc Row*(this: Image_PixMapData; theRow: Standard_Size): ptr Standard_Byte {.
    noSideEffect, importcpp: "Row", header: "Image_PixMapData.hxx".}
proc ChangeRow*(this: var Image_PixMapData; theRow: Standard_Size): ptr Standard_Byte {.
    importcpp: "ChangeRow", header: "Image_PixMapData.hxx".}
proc Value*(this: Image_PixMapData; theRow: Standard_Size; theCol: Standard_Size): ptr Standard_Byte {.
    noSideEffect, importcpp: "Value", header: "Image_PixMapData.hxx".}
proc ChangeValue*(this: var Image_PixMapData; theRow: Standard_Size;
                 theCol: Standard_Size): ptr Standard_Byte {.
    importcpp: "ChangeValue", header: "Image_PixMapData.hxx".}
proc MaxRowAligmentBytes*(this: Image_PixMapData): Standard_Size {.noSideEffect,
    importcpp: "MaxRowAligmentBytes", header: "Image_PixMapData.hxx".}
proc SetTopDown*(this: var Image_PixMapData; theIsTopDown: bool) {.
    importcpp: "SetTopDown", header: "Image_PixMapData.hxx".}
type
  Image_PixMapDatabase_type* = NCollection_Buffer

proc get_type_name*(): cstring {.importcpp: "Image_PixMapData::get_type_name(@)",
                              header: "Image_PixMapData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_PixMapData::get_type_descriptor(@)",
    header: "Image_PixMapData.hxx".}
proc DynamicType*(this: Image_PixMapData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_PixMapData.hxx".}
discard "forward decl of Image_PixMapData"
type
  Handle_Image_PixMapData* = handle[Image_PixMapData]
