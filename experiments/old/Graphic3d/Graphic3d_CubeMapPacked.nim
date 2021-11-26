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

type
  Graphic3dCubeMapPacked* {.importcpp: "Graphic3d_CubeMapPacked",
                           header: "Graphic3d_CubeMapPacked.hxx", bycopy.} = object of Graphic3dCubeMap ##
                                                                                                 ## !
                                                                                                 ## Initialization
                                                                                                 ## to
                                                                                                 ## load
                                                                                                 ## cubemap
                                                                                                 ## from
                                                                                                 ## file.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @theFileName
                                                                                                 ## -
                                                                                                 ## path
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## cubemap
                                                                                                 ## image
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @theOrder
                                                                                                 ## -
                                                                                                 ## array
                                                                                                 ## containing
                                                                                                 ## six
                                                                                                 ## different
                                                                                                 ## indexes
                                                                                                 ## of
                                                                                                 ## cubemap
                                                                                                 ## sides
                                                                                                 ## which
                                                                                                 ## maps
                                                                                                 ## tile
                                                                                                 ## grid
                                                                                                 ## to
                                                                                                 ## cubemap
                                                                                                 ## sides
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Checks
                                                                                                 ## whether
                                                                                                 ## given
                                                                                                 ## tiles
                                                                                                 ## order
                                                                                                 ## is
                                                                                                 ## valid.
    ## !< order mapping tile grit to cubemap sides
    ## !< width of tile grid

  Graphic3dCubeMapPackedbaseType* = Graphic3dCubeMap

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CubeMapPacked::get_type_name(@)",
                            header: "Graphic3d_CubeMapPacked.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CubeMapPacked::get_type_descriptor(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc dynamicType*(this: Graphic3dCubeMapPacked): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_CubeMapPacked.hxx".}
proc constructGraphic3dCubeMapPacked*(theFileName: TCollectionAsciiString; theOrder: Graphic3dValidatedCubeMapOrder = default()): Graphic3dCubeMapPacked {.
    constructor, importcpp: "Graphic3d_CubeMapPacked(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc constructGraphic3dCubeMapPacked*(theImage: Handle[ImagePixMap]; theOrder: Graphic3dValidatedCubeMapOrder = default()): Graphic3dCubeMapPacked {.
    constructor, importcpp: "Graphic3d_CubeMapPacked(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc compressedValue*(this: var Graphic3dCubeMapPacked;
                     theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.importcpp: "CompressedValue",
                            header: "Graphic3d_CubeMapPacked.hxx".}
proc value*(this: var Graphic3dCubeMapPacked;
           theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    importcpp: "Value", header: "Graphic3d_CubeMapPacked.hxx".}
proc destroyGraphic3dCubeMapPacked*(this: var Graphic3dCubeMapPacked) {.
    importcpp: "#.~Graphic3d_CubeMapPacked()",
    header: "Graphic3d_CubeMapPacked.hxx".}
discard "forward decl of Graphic3d_CubeMapPacked"
type
  HandleC1C1* = Handle[Graphic3dCubeMapPacked]


























