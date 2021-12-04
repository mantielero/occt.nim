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


proc newGraphic3dCubeMap*(theFileName: TCollectionAsciiString;
                         theToGenerateMipmaps: bool = false): Graphic3dCubeMap {.
    cdecl, constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
#proc newGraphic3dCubeMap*(thePixmap: Handle[ImagePixMap] = handle[ImagePixMap]();
#                         theToGenerateMipmaps: bool = false): Graphic3dCubeMap {.
#    cdecl, constructor, importcpp: "Graphic3d_CubeMap(@)", header: "Graphic3d_CubeMap.hxx".}
proc more*(this: Graphic3dCubeMap): bool {.noSideEffect, cdecl, importcpp: "More",
                                       header: "Graphic3d_CubeMap.hxx".}
proc currentSide*(this: Graphic3dCubeMap): Graphic3dCubeMapSide {.noSideEffect,
    cdecl, importcpp: "CurrentSide", header: "Graphic3d_CubeMap.hxx".}
proc next*(this: var Graphic3dCubeMap) {.cdecl, importcpp: "Next", header: "Graphic3d_CubeMap.hxx".}
proc setZInversion*(this: var Graphic3dCubeMap; theZIsInverted: bool) {.cdecl,
    importcpp: "SetZInversion", header: "Graphic3d_CubeMap.hxx".}
proc zIsInverted*(this: Graphic3dCubeMap): bool {.noSideEffect, cdecl,
    importcpp: "ZIsInverted", header: "Graphic3d_CubeMap.hxx".}
proc hasMipmaps*(this: Graphic3dCubeMap): bool {.noSideEffect, cdecl,
    importcpp: "HasMipmaps", header: "Graphic3d_CubeMap.hxx".}
proc setMipmapsGeneration*(this: var Graphic3dCubeMap; theToGenerateMipmaps: bool) {.
    cdecl, importcpp: "SetMipmapsGeneration", header: "Graphic3d_CubeMap.hxx".}
proc compressedValue*(this: var Graphic3dCubeMap;
                     theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.cdecl, importcpp: "CompressedValue", header: "Graphic3d_CubeMap.hxx".}
proc value*(this: var Graphic3dCubeMap; theSupported: Handle[ImageSupportedFormats]): Handle[
    ImagePixMap] {.cdecl, importcpp: "Value", header: "Graphic3d_CubeMap.hxx".}
proc reset*(this: var Graphic3dCubeMap): var Graphic3dCubeMap {.cdecl,
    importcpp: "Reset", header: "Graphic3d_CubeMap.hxx".}
proc destroyGraphic3dCubeMap*(this: var Graphic3dCubeMap) {.cdecl,
    importcpp: "#.~Graphic3d_CubeMap()", header: "Graphic3d_CubeMap.hxx".}
type
  HandleGraphic3dCubeMap* = Handle[Graphic3dCubeMap]
