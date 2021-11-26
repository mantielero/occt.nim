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

## ! This abstract class for managing 2D textures

type
  Graphic3dTexture2D* {.importcpp: "Graphic3d_Texture2D",
                       header: "Graphic3d_Texture2D.hxx", bycopy.} = object of Graphic3dTextureMap ##
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

  Graphic3dTexture2DbaseType* = Graphic3dTextureMap

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Texture2D::get_type_name(@)",
                            header: "Graphic3d_Texture2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Texture2D::get_type_descriptor(@)",
    header: "Graphic3d_Texture2D.hxx".}
proc dynamicType*(this: Graphic3dTexture2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Texture2D.hxx".}
proc numberOfTextures*(): cint {.importcpp: "Graphic3d_Texture2D::NumberOfTextures(@)",
                              header: "Graphic3d_Texture2D.hxx".}
proc textureName*(theRank: cint): TCollectionAsciiString {.
    importcpp: "Graphic3d_Texture2D::TextureName(@)",
    header: "Graphic3d_Texture2D.hxx".}
proc name*(this: Graphic3dTexture2D): Graphic3dNameOfTexture2D {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_Texture2D.hxx".}
proc setImage*(this: var Graphic3dTexture2D; thePixMap: Handle[ImagePixMap]) {.
    importcpp: "SetImage", header: "Graphic3d_Texture2D.hxx".}
proc hasMipMaps*(this: Graphic3dTexture2D): bool {.noSideEffect,
    importcpp: "HasMipMaps", header: "Graphic3d_Texture2D.hxx".}
proc setMipMaps*(this: var Graphic3dTexture2D; theToUse: bool) {.
    importcpp: "SetMipMaps", header: "Graphic3d_Texture2D.hxx".}
discard "forward decl of Graphic3d_Texture2D"
type
  HandleC1C1* = Handle[Graphic3dTexture2D]


























