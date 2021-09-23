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
  Graphic3d_NameOfTexture2D, Graphic3d_TextureMap

## ! This abstract class for managing 2D textures

type
  Graphic3d_Texture2D* {.importcpp: "Graphic3d_Texture2D",
                        header: "Graphic3d_Texture2D.hxx", bycopy.} = object of Graphic3d_TextureMap ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## number
                                                                                              ## of
                                                                                              ## predefined
                                                                                              ## textures.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## name
                                                                                              ## of
                                                                                              ## the
                                                                                              ## predefined
                                                                                              ## textures
                                                                                              ## or
                                                                                              ## NOT_2D_UNKNOWN
                                                                                              ##
                                                                                              ## !
                                                                                              ## when
                                                                                              ## the
                                                                                              ## name
                                                                                              ## is
                                                                                              ## given
                                                                                              ## as
                                                                                              ## a
                                                                                              ## filename.

  Graphic3d_Texture2Dbase_type* = Graphic3d_TextureMap

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Texture2D::get_type_name(@)",
                              header: "Graphic3d_Texture2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Texture2D::get_type_descriptor(@)",
    header: "Graphic3d_Texture2D.hxx".}
proc DynamicType*(this: Graphic3d_Texture2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Texture2D.hxx".}
proc NumberOfTextures*(): Standard_Integer {.
    importcpp: "Graphic3d_Texture2D::NumberOfTextures(@)",
    header: "Graphic3d_Texture2D.hxx".}
proc TextureName*(theRank: Standard_Integer): TCollection_AsciiString {.
    importcpp: "Graphic3d_Texture2D::TextureName(@)",
    header: "Graphic3d_Texture2D.hxx".}
proc Name*(this: Graphic3d_Texture2D): Graphic3d_NameOfTexture2D {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_Texture2D.hxx".}
proc SetImage*(this: var Graphic3d_Texture2D; thePixMap: handle[Image_PixMap]) {.
    importcpp: "SetImage", header: "Graphic3d_Texture2D.hxx".}
proc HasMipMaps*(this: Graphic3d_Texture2D): Standard_Boolean {.noSideEffect,
    importcpp: "HasMipMaps", header: "Graphic3d_Texture2D.hxx".}
proc SetMipMaps*(this: var Graphic3d_Texture2D; theToUse: Standard_Boolean) {.
    importcpp: "SetMipMaps", header: "Graphic3d_Texture2D.hxx".}
discard "forward decl of Graphic3d_Texture2D"
type
  Handle_Graphic3d_Texture2D* = handle[Graphic3d_Texture2D]
