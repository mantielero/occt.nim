##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  Graphic3d_Texture2D, Graphic3d_NameOfTexture2D

## ! This class defined a manual texture 2D
## ! facets MUST define texture coordinate
## ! if you want to see somethings on.

type
  Graphic3d_Texture2Dmanual* {.importcpp: "Graphic3d_Texture2Dmanual",
                              header: "Graphic3d_Texture2Dmanual.hxx", bycopy.} = object of Graphic3d_Texture2D ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## texture
                                                                                                         ## from
                                                                                                         ## a
                                                                                                         ## file.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## MipMaps
                                                                                                         ## levels
                                                                                                         ## will
                                                                                                         ## be
                                                                                                         ## automatically
                                                                                                         ## generated
                                                                                                         ## if
                                                                                                         ## needed.

  Graphic3d_Texture2Dmanualbase_type* = Graphic3d_Texture2D

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Texture2Dmanual::get_type_name(@)",
                              header: "Graphic3d_Texture2Dmanual.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Texture2Dmanual::get_type_descriptor(@)",
    header: "Graphic3d_Texture2Dmanual.hxx".}
proc DynamicType*(this: Graphic3d_Texture2Dmanual): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_Texture2Dmanual.hxx".}
proc constructGraphic3d_Texture2Dmanual*(theFileName: TCollection_AsciiString): Graphic3d_Texture2Dmanual {.
    constructor, importcpp: "Graphic3d_Texture2Dmanual(@)",
    header: "Graphic3d_Texture2Dmanual.hxx".}
proc constructGraphic3d_Texture2Dmanual*(theNOT: Graphic3d_NameOfTexture2D): Graphic3d_Texture2Dmanual {.
    constructor, importcpp: "Graphic3d_Texture2Dmanual(@)",
    header: "Graphic3d_Texture2Dmanual.hxx".}
proc constructGraphic3d_Texture2Dmanual*(thePixMap: handle[Image_PixMap]): Graphic3d_Texture2Dmanual {.
    constructor, importcpp: "Graphic3d_Texture2Dmanual(@)",
    header: "Graphic3d_Texture2Dmanual.hxx".}
discard "forward decl of Graphic3d_Texture2Dmanual"
type
  Handle_Graphic3d_Texture2Dmanual* = handle[Graphic3d_Texture2Dmanual]
