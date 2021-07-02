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

## ! Base class for cubemaps.
## ! It is iterator over cubemap sides.

type
  Graphic3dCubeMap* {.importcpp: "Graphic3d_CubeMap",
                     header: "Graphic3d_CubeMap.hxx", bycopy.} = object of Graphic3dTextureMap ##
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

  Graphic3dCubeMapbaseType* = Graphic3dTextureMap

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CubeMap::get_type_name(@)",
                            header: "Graphic3d_CubeMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CubeMap::get_type_descriptor(@)",
    header: "Graphic3d_CubeMap.hxx".}
proc dynamicType*(this: Graphic3dCubeMap): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CubeMap.hxx".}
proc constructGraphic3dCubeMap*(theFileName: TCollectionAsciiString;
    theToGenerateMipmaps: StandardBoolean = standardFalse): Graphic3dCubeMap {.
    constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
proc constructGraphic3dCubeMap*(thePixmap: Handle[ImagePixMap] = handle[ImagePixMap]();
    theToGenerateMipmaps: StandardBoolean = standardFalse): Graphic3dCubeMap {.
    constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
proc more*(this: Graphic3dCubeMap): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "Graphic3d_CubeMap.hxx".}
proc currentSide*(this: Graphic3dCubeMap): Graphic3dCubeMapSide {.noSideEffect,
    importcpp: "CurrentSide", header: "Graphic3d_CubeMap.hxx".}
proc next*(this: var Graphic3dCubeMap) {.importcpp: "Next",
                                     header: "Graphic3d_CubeMap.hxx".}
proc setZInversion*(this: var Graphic3dCubeMap; theZIsInverted: StandardBoolean) {.
    importcpp: "SetZInversion", header: "Graphic3d_CubeMap.hxx".}
proc zIsInverted*(this: Graphic3dCubeMap): StandardBoolean {.noSideEffect,
    importcpp: "ZIsInverted", header: "Graphic3d_CubeMap.hxx".}
proc hasMipmaps*(this: Graphic3dCubeMap): StandardBoolean {.noSideEffect,
    importcpp: "HasMipmaps", header: "Graphic3d_CubeMap.hxx".}
proc setMipmapsGeneration*(this: var Graphic3dCubeMap;
                          theToGenerateMipmaps: StandardBoolean) {.
    importcpp: "SetMipmapsGeneration", header: "Graphic3d_CubeMap.hxx".}
proc compressedValue*(this: var Graphic3dCubeMap;
                     theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.importcpp: "CompressedValue",
                            header: "Graphic3d_CubeMap.hxx".}
proc value*(this: var Graphic3dCubeMap; theSupported: Handle[ImageSupportedFormats]): Handle[
    ImagePixMap] {.importcpp: "Value", header: "Graphic3d_CubeMap.hxx".}
proc reset*(this: var Graphic3dCubeMap): var Graphic3dCubeMap {.importcpp: "Reset",
    header: "Graphic3d_CubeMap.hxx".}
proc destroyGraphic3dCubeMap*(this: var Graphic3dCubeMap) {.
    importcpp: "#.~Graphic3d_CubeMap()", header: "Graphic3d_CubeMap.hxx".}
discard "forward decl of Graphic3d_CubeMap"
type
  HandleGraphic3dCubeMap* = Handle[Graphic3dCubeMap]


