##  Author: Ilya Khramov
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
  Graphic3d_CubeMapOrder, Graphic3d_TextureMap

## ! Base class for cubemaps.
## ! It is iterator over cubemap sides.

type
  Graphic3d_CubeMap* {.importcpp: "Graphic3d_CubeMap",
                      header: "Graphic3d_CubeMap.hxx", bycopy.} = object of Graphic3d_TextureMap ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ## defining
                                                                                          ## loading
                                                                                          ## cubemap
                                                                                          ## from
                                                                                          ## file.
    ## !< Iterator state
    ## !< Indicates whether end of iteration has been reached or hasn't
    ## !< Indicates whether Z axis is inverted that allows to synchronize vertical flip of cubemap
    ## !< Indicates whether mipmaps of cubemap will be generated or not

  Graphic3d_CubeMapbase_type* = Graphic3d_TextureMap

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CubeMap::get_type_name(@)",
                              header: "Graphic3d_CubeMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CubeMap::get_type_descriptor(@)",
    header: "Graphic3d_CubeMap.hxx".}
proc DynamicType*(this: Graphic3d_CubeMap): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CubeMap.hxx".}
proc constructGraphic3d_CubeMap*(theFileName: TCollection_AsciiString;
    theToGenerateMipmaps: Standard_Boolean = Standard_False): Graphic3d_CubeMap {.
    constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
proc constructGraphic3d_CubeMap*(thePixmap: handle[Image_PixMap] = handle[
    Image_PixMap](); theToGenerateMipmaps: Standard_Boolean = Standard_False): Graphic3d_CubeMap {.
    constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
proc More*(this: Graphic3d_CubeMap): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Graphic3d_CubeMap.hxx".}
proc CurrentSide*(this: Graphic3d_CubeMap): Graphic3d_CubeMapSide {.noSideEffect,
    importcpp: "CurrentSide", header: "Graphic3d_CubeMap.hxx".}
proc Next*(this: var Graphic3d_CubeMap) {.importcpp: "Next",
                                      header: "Graphic3d_CubeMap.hxx".}
proc SetZInversion*(this: var Graphic3d_CubeMap; theZIsInverted: Standard_Boolean) {.
    importcpp: "SetZInversion", header: "Graphic3d_CubeMap.hxx".}
proc ZIsInverted*(this: Graphic3d_CubeMap): Standard_Boolean {.noSideEffect,
    importcpp: "ZIsInverted", header: "Graphic3d_CubeMap.hxx".}
proc HasMipmaps*(this: Graphic3d_CubeMap): Standard_Boolean {.noSideEffect,
    importcpp: "HasMipmaps", header: "Graphic3d_CubeMap.hxx".}
proc SetMipmapsGeneration*(this: var Graphic3d_CubeMap;
                          theToGenerateMipmaps: Standard_Boolean) {.
    importcpp: "SetMipmapsGeneration", header: "Graphic3d_CubeMap.hxx".}
proc CompressedValue*(this: var Graphic3d_CubeMap;
                     theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.importcpp: "CompressedValue",
                             header: "Graphic3d_CubeMap.hxx".}
proc Value*(this: var Graphic3d_CubeMap;
           theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "Value", header: "Graphic3d_CubeMap.hxx".}
proc Reset*(this: var Graphic3d_CubeMap): var Graphic3d_CubeMap {.importcpp: "Reset",
    header: "Graphic3d_CubeMap.hxx".}
proc destroyGraphic3d_CubeMap*(this: var Graphic3d_CubeMap) {.
    importcpp: "#.~Graphic3d_CubeMap()", header: "Graphic3d_CubeMap.hxx".}
discard "forward decl of Graphic3d_CubeMap"
type
  Handle_Graphic3d_CubeMap* = handle[Graphic3d_CubeMap]
