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
  Graphic3d_CubeMap, ../NCollection/NCollection_Array1, ../OSD/OSD_Path

## ! Class to manage cubemap located in six different images.

type
  Graphic3d_CubeMapSeparate* {.importcpp: "Graphic3d_CubeMapSeparate",
                              header: "Graphic3d_CubeMapSeparate.hxx", bycopy.} = object of Graphic3d_CubeMap ##
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

  Graphic3d_CubeMapSeparatebase_type* = Graphic3d_CubeMap

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CubeMapSeparate::get_type_name(@)",
                              header: "Graphic3d_CubeMapSeparate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CubeMapSeparate::get_type_descriptor(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc DynamicType*(this: Graphic3d_CubeMapSeparate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_CubeMapSeparate.hxx".}
proc constructGraphic3d_CubeMapSeparate*(thePaths: NCollection_Array1[
    TCollection_AsciiString]): Graphic3d_CubeMapSeparate {.constructor,
    importcpp: "Graphic3d_CubeMapSeparate(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc constructGraphic3d_CubeMapSeparate*(theImages: NCollection_Array1[
    handle[Image_PixMap]]): Graphic3d_CubeMapSeparate {.constructor,
    importcpp: "Graphic3d_CubeMapSeparate(@)",
    header: "Graphic3d_CubeMapSeparate.hxx".}
proc CompressedValue*(this: var Graphic3d_CubeMapSeparate;
                     theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.importcpp: "CompressedValue",
                             header: "Graphic3d_CubeMapSeparate.hxx".}
proc Value*(this: var Graphic3d_CubeMapSeparate;
           theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "Value", header: "Graphic3d_CubeMapSeparate.hxx".}
proc GetImage*(this: var Graphic3d_CubeMapSeparate;
              a2: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "GetImage", header: "Graphic3d_CubeMapSeparate.hxx".}
proc IsDone*(this: Graphic3d_CubeMapSeparate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_CubeMapSeparate.hxx".}
proc destroyGraphic3d_CubeMapSeparate*(this: var Graphic3d_CubeMapSeparate) {.
    importcpp: "#.~Graphic3d_CubeMapSeparate()",
    header: "Graphic3d_CubeMapSeparate.hxx".}
discard "forward decl of Graphic3d_CubeMapSeparate"
type
  Handle_Graphic3d_CubeMapSeparate* = handle[Graphic3d_CubeMapSeparate]
