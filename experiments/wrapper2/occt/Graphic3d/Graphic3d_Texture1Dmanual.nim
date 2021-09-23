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
  ../Standard/Standard, ../Standard/Standard_Type, Graphic3d_Texture1D,
  Graphic3d_NameOfTexture1D

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_Texture1Dmanual"
discard "forward decl of Graphic3d_Texture1Dmanual"
type
  Handle_Graphic3d_Texture1Dmanual* = handle[Graphic3d_Texture1Dmanual]

## ! This class provides the implementation of a manual 1D texture.
## ! you MUST provides texture coordinates on your facets if you want to see your texture.

type
  Graphic3d_Texture1Dmanual* {.importcpp: "Graphic3d_Texture1Dmanual",
                              header: "Graphic3d_Texture1Dmanual.hxx", bycopy.} = object of Graphic3d_Texture1D ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## texture
                                                                                                         ## from
                                                                                                         ## the
                                                                                                         ## file
                                                                                                         ## FileName.


proc constructGraphic3d_Texture1Dmanual*(theFileName: TCollection_AsciiString): Graphic3d_Texture1Dmanual {.
    constructor, importcpp: "Graphic3d_Texture1Dmanual(@)",
    header: "Graphic3d_Texture1Dmanual.hxx".}
proc constructGraphic3d_Texture1Dmanual*(theNOT: Graphic3d_NameOfTexture1D): Graphic3d_Texture1Dmanual {.
    constructor, importcpp: "Graphic3d_Texture1Dmanual(@)",
    header: "Graphic3d_Texture1Dmanual.hxx".}
proc constructGraphic3d_Texture1Dmanual*(thePixMap: handle[Image_PixMap]): Graphic3d_Texture1Dmanual {.
    constructor, importcpp: "Graphic3d_Texture1Dmanual(@)",
    header: "Graphic3d_Texture1Dmanual.hxx".}
type
  Graphic3d_Texture1Dmanualbase_type* = Graphic3d_Texture1D

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Texture1Dmanual::get_type_name(@)",
                              header: "Graphic3d_Texture1Dmanual.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Texture1Dmanual::get_type_descriptor(@)",
    header: "Graphic3d_Texture1Dmanual.hxx".}
proc DynamicType*(this: Graphic3d_Texture1Dmanual): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_Texture1Dmanual.hxx".}