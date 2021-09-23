##  Created on: 2016-11-14
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Aspect/Aspect_HatchStyle, ../Image/Image_PixMap,
  ../NCollection/NCollection_Buffer

## ! A class that provides an API to use standard OCCT hatch styles
## ! defined in Aspect_HatchStyle enum or to create custom styles
## ! from a user-defined bitmap

type
  Graphic3d_HatchStyle* {.importcpp: "Graphic3d_HatchStyle",
                         header: "Graphic3d_HatchStyle.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## new
                                                                                              ## custom
                                                                                              ## hatch
                                                                                              ## style
                                                                                              ## with
                                                                                              ## the
                                                                                              ## given
                                                                                              ## pattern
                                                                                              ## and
                                                                                              ## unique
                                                                                              ## style
                                                                                              ## id
                                                                                              ##
                                                                                              ## !
                                                                                              ## @warning
                                                                                              ## Raises
                                                                                              ## a
                                                                                              ## program
                                                                                              ## error
                                                                                              ## if
                                                                                              ## given
                                                                                              ## pattern
                                                                                              ## image
                                                                                              ## is
                                                                                              ## not
                                                                                              ## a
                                                                                              ## valid
                                                                                              ## 32*32
                                                                                              ## bitmap
    ## !< Image bitmap with custom hatch pattern
    ## !< Index of used style

  Graphic3d_HatchStylebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_HatchStyle::get_type_name(@)",
                              header: "Graphic3d_HatchStyle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_HatchStyle::get_type_descriptor(@)",
    header: "Graphic3d_HatchStyle.hxx".}
proc DynamicType*(this: Graphic3d_HatchStyle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_HatchStyle.hxx".}
proc constructGraphic3d_HatchStyle*(thePattern: handle[Image_PixMap]): Graphic3d_HatchStyle {.
    constructor, importcpp: "Graphic3d_HatchStyle(@)",
    header: "Graphic3d_HatchStyle.hxx".}
proc constructGraphic3d_HatchStyle*(theType: Aspect_HatchStyle): Graphic3d_HatchStyle {.
    constructor, importcpp: "Graphic3d_HatchStyle(@)",
    header: "Graphic3d_HatchStyle.hxx".}
proc Pattern*(this: Graphic3d_HatchStyle): ptr Standard_Byte {.noSideEffect,
    importcpp: "Pattern", header: "Graphic3d_HatchStyle.hxx".}
proc HatchType*(this: Graphic3d_HatchStyle): Standard_Integer {.noSideEffect,
    importcpp: "HatchType", header: "Graphic3d_HatchStyle.hxx".}
proc DumpJson*(this: Graphic3d_HatchStyle; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_HatchStyle.hxx".}
discard "forward decl of Graphic3d_HatchStyle"
type
  Handle_Graphic3d_HatchStyle* = handle[Graphic3d_HatchStyle]
