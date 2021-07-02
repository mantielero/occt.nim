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

## ! Class to manage cubemap located in six different images.

type
  Graphic3dCubeMapSeparate* {.importcpp: "Graphic3d_CubeMapSeparate",
                             header: "Graphic3d_CubeMapSeparate.hxx", bycopy.} = object of Graphic3dCubeMap ##
                                                                                                     ## !
                                                                                                     ## Initializes
                                                                                                     ## cubemap
                                                                                                     ## to
                                                                                                     ## be
                                                                                                     ## loaded
                                                                                                     ## from
                                                                                                     ## file.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @thePaths
                                                                                                     ## -
                                                                                                     ## array
                                                                                                     ## of
                                                                                                     ## paths
                                                                                                     ## to
                                                                                                     ## separate
                                                                                                     ## image
                                                                                                     ## files
                                                                                                     ## (has
                                                                                                     ## to
                                                                                                     ## have
                                                                                                     ## size
                                                                                                     ## equal
                                                                                                     ## 6).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Nulifies
                                                                                                     ## whole
                                                                                                     ## images
                                                                                                     ## array.
    ## !< array of paths to cubemap images
    ## !< array of cubemap images
    ## !< size of each side of cubemap
    ## !< format each side of cubemap

  Graphic3dCubeMapSeparatebaseType* = Graphic3dCubeMap

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CubeMapSeparate::get_type_name(@)",
                            header: "Graphic3d_CubeMapSeparate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CubeMapSeparate::get_type_descriptor(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc dynamicType*(this: Graphic3dCubeMapSeparate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_CubeMapSeparate.hxx".}
proc constructGraphic3dCubeMapSeparate*(thePaths: NCollectionArray1[
    TCollectionAsciiString]): Graphic3dCubeMapSeparate {.constructor,
    importcpp: "Graphic3d_CubeMapSeparate(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc constructGraphic3dCubeMapSeparate*(theImages: NCollectionArray1[
    Handle[ImagePixMap]]): Graphic3dCubeMapSeparate {.constructor,
    importcpp: "Graphic3d_CubeMapSeparate(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc compressedValue*(this: var Graphic3dCubeMapSeparate;
                     theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.importcpp: "CompressedValue",
                            header: "Graphic3d_CubeMapSeparate.hxx".}
proc value*(this: var Graphic3dCubeMapSeparate;
           theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    importcpp: "Value", header: "Graphic3d_CubeMapSeparate.hxx".}
proc getImage*(this: var Graphic3dCubeMapSeparate; a2: Handle[ImageSupportedFormats]): Handle[
    ImagePixMap] {.importcpp: "GetImage", header: "Graphic3d_CubeMapSeparate.hxx".}
proc isDone*(this: Graphic3dCubeMapSeparate): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_CubeMapSeparate.hxx".}
proc destroyGraphic3dCubeMapSeparate*(this: var Graphic3dCubeMapSeparate) {.
    importcpp: "#.~Graphic3d_CubeMapSeparate()",
    header: "Graphic3d_CubeMapSeparate.hxx".}
discard "forward decl of Graphic3d_CubeMapSeparate"
type
  HandleGraphic3dCubeMapSeparate* = Handle[Graphic3dCubeMapSeparate]


