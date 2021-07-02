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

discard "forward decl of Image_PixMap"
type
  Graphic3dMarkerImage* {.importcpp: "Graphic3d_MarkerImage",
                         header: "Graphic3d_MarkerImage.hxx", bycopy.} = object of StandardTransient ##
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


proc constructGraphic3dMarkerImage*(theImage: Handle[ImagePixMap]): Graphic3dMarkerImage {.
    constructor, importcpp: "Graphic3d_MarkerImage(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc constructGraphic3dMarkerImage*(theBitMap: Handle[TColStdHArray1OfByte];
                                   theWidth: StandardInteger;
                                   theHeight: StandardInteger): Graphic3dMarkerImage {.
    constructor, importcpp: "Graphic3d_MarkerImage(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc getBitMapArray*(this: Graphic3dMarkerImage; theAlphaValue: StandardReal = 0.5): Handle[
    TColStdHArray1OfByte] {.noSideEffect, importcpp: "GetBitMapArray",
                           header: "Graphic3d_MarkerImage.hxx".}
proc getImage*(this: var Graphic3dMarkerImage): Handle[ImagePixMap] {.
    importcpp: "GetImage", header: "Graphic3d_MarkerImage.hxx".}
proc getImageAlpha*(this: var Graphic3dMarkerImage): Handle[ImagePixMap] {.
    importcpp: "GetImageAlpha", header: "Graphic3d_MarkerImage.hxx".}
proc getImageId*(this: Graphic3dMarkerImage): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetImageId", header: "Graphic3d_MarkerImage.hxx".}
proc getImageAlphaId*(this: Graphic3dMarkerImage): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetImageAlphaId", header: "Graphic3d_MarkerImage.hxx".}
proc getTextureSize*(this: Graphic3dMarkerImage; theWidth: var StandardInteger;
                    theHeight: var StandardInteger) {.noSideEffect,
    importcpp: "GetTextureSize", header: "Graphic3d_MarkerImage.hxx".}
type
  Graphic3dMarkerImagebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_MarkerImage::get_type_name(@)",
                            header: "Graphic3d_MarkerImage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_MarkerImage::get_type_descriptor(@)",
    header: "Graphic3d_MarkerImage.hxx".}
proc dynamicType*(this: Graphic3dMarkerImage): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_MarkerImage.hxx".}
discard "forward decl of Graphic3d_MarkerImage"
type
  HandleGraphic3dMarkerImage* = Handle[Graphic3dMarkerImage]


