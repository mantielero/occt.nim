import graphic3d_types

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

## ! Class is intended to process cubemap packed into single image plane.



proc newGraphic3dCubeMapPacked*(theFileName: TCollectionAsciiString; theOrder: Graphic3dValidatedCubeMapOrder = default()): Graphic3dCubeMapPacked {.
    cdecl, constructor, importcpp: "Graphic3d_CubeMapPacked(@)", header: "Graphic3d_CubeMapPacked.hxx".}
proc newGraphic3dCubeMapPacked*(theImage: Handle[ImagePixMap]; theOrder: Graphic3dValidatedCubeMapOrder = default()): Graphic3dCubeMapPacked {.
    cdecl, constructor, importcpp: "Graphic3d_CubeMapPacked(@)", header: "Graphic3d_CubeMapPacked.hxx".}
proc compressedValue*(this: var Graphic3dCubeMapPacked;
                     theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.cdecl, importcpp: "CompressedValue", header: "Graphic3d_CubeMapPacked.hxx".}
proc value*(this: var Graphic3dCubeMapPacked;
           theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    cdecl, importcpp: "Value", header: "Graphic3d_CubeMapPacked.hxx".}
proc destroyGraphic3dCubeMapPacked*(this: var Graphic3dCubeMapPacked) {.cdecl,
    importcpp: "#.~Graphic3d_CubeMapPacked()", header: "Graphic3d_CubeMapPacked.hxx".}

