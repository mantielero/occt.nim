##  Created on: 2013-06-25
##  Created by: Dmitry BOBYLEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_HArray1OfByte, ../TCollection/TCollection_AsciiString

discard "forward decl of Image_PixMap"
type
  Graphic3d_MarkerImage* {.importcpp: "Graphic3d_MarkerImage",
                          header: "Graphic3d_MarkerImage.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theImage
                                                                                                ## -
                                                                                                ## source
                                                                                                ## image
    ## !< resource identifier
    ## !< resource identifier
    ## !< bytes array with bitmap definition (for compatibility with old code)
    ## !< full-color  marker definition
    ## !< alpha-color marker definition (for dynamic hi-lighting)
    ## !< extra margin from boundaries for bitmap -> point sprite conversion, 1 px by default
    ## !< marker width
    ## !< marker height


proc constructGraphic3d_MarkerImage*(theImage: handle[Image_PixMap]): Graphic3d_MarkerImage {.
    constructor, importcpp: "Graphic3d_MarkerImage(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc constructGraphic3d_MarkerImage*(theBitMap: handle[TColStd_HArray1OfByte];
                                    theWidth: Standard_Integer;
                                    theHeight: Standard_Integer): Graphic3d_MarkerImage {.
    constructor, importcpp: "Graphic3d_MarkerImage(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc GetBitMapArray*(this: Graphic3d_MarkerImage;
                    theAlphaValue: Standard_Real = 0.5): handle[
    TColStd_HArray1OfByte] {.noSideEffect, importcpp: "GetBitMapArray",
                            header: "Graphic3d_MarkerImage.hxx".}
proc GetImage*(this: var Graphic3d_MarkerImage): handle[Image_PixMap] {.
    importcpp: "GetImage", header: "Graphic3d_MarkerImage.hxx".}
proc GetImageAlpha*(this: var Graphic3d_MarkerImage): handle[Image_PixMap] {.
    importcpp: "GetImageAlpha", header: "Graphic3d_MarkerImage.hxx".}
proc GetImageId*(this: Graphic3d_MarkerImage): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetImageId", header: "Graphic3d_MarkerImage.hxx".}
proc GetImageAlphaId*(this: Graphic3d_MarkerImage): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetImageAlphaId", header: "Graphic3d_MarkerImage.hxx".}
proc GetTextureSize*(this: Graphic3d_MarkerImage; theWidth: var Standard_Integer;
                    theHeight: var Standard_Integer) {.noSideEffect,
    importcpp: "GetTextureSize", header: "Graphic3d_MarkerImage.hxx".}
type
  Graphic3d_MarkerImagebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_MarkerImage::get_type_name(@)",
                              header: "Graphic3d_MarkerImage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_MarkerImage::get_type_descriptor(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc DynamicType*(this: Graphic3d_MarkerImage): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_MarkerImage.hxx".}
discard "forward decl of Graphic3d_MarkerImage"
type
  Handle_Graphic3d_MarkerImage* = handle[Graphic3d_MarkerImage]
