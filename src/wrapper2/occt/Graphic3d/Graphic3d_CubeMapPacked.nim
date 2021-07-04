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

## ! Class is intended to process cubemap packed into single image plane.

type
  Graphic3d_CubeMapPacked* {.importcpp: "Graphic3d_CubeMapPacked",
                            header: "Graphic3d_CubeMapPacked.hxx", bycopy.} = object of Graphic3d_CubeMap ##
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

  Graphic3d_CubeMapPackedbase_type* = Graphic3d_CubeMap

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CubeMapPacked::get_type_name(@)",
                              header: "Graphic3d_CubeMapPacked.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CubeMapPacked::get_type_descriptor(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc DynamicType*(this: Graphic3d_CubeMapPacked): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_CubeMapPacked.hxx".}
proc constructGraphic3d_CubeMapPacked*(theFileName: TCollection_AsciiString;
    theOrder: Graphic3d_ValidatedCubeMapOrder = Default()): Graphic3d_CubeMapPacked {.
    constructor, importcpp: "Graphic3d_CubeMapPacked(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc constructGraphic3d_CubeMapPacked*(theImage: handle[Image_PixMap]; theOrder: Graphic3d_ValidatedCubeMapOrder = Default()): Graphic3d_CubeMapPacked {.
    constructor, importcpp: "Graphic3d_CubeMapPacked(@)",
    header: "Graphic3d_CubeMapPacked.hxx".}
proc CompressedValue*(this: var Graphic3d_CubeMapPacked;
                     theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.importcpp: "CompressedValue",
                             header: "Graphic3d_CubeMapPacked.hxx".}
proc Value*(this: var Graphic3d_CubeMapPacked;
           theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "Value", header: "Graphic3d_CubeMapPacked.hxx".}
proc destroyGraphic3d_CubeMapPacked*(this: var Graphic3d_CubeMapPacked) {.
    importcpp: "#.~Graphic3d_CubeMapPacked()",
    header: "Graphic3d_CubeMapPacked.hxx".}
discard "forward decl of Graphic3d_CubeMapPacked"
type
  Handle_Graphic3d_CubeMapPacked* = handle[Graphic3d_CubeMapPacked]
