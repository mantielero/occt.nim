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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_TextureEnv"
discard "forward decl of Graphic3d_TextureEnv"
type
  HandleGraphic3dTextureEnv* = Handle[Graphic3dTextureEnv]

## ! This class provides environment texture.

type
  Graphic3dTextureEnv* {.importcpp: "Graphic3d_TextureEnv",
                        header: "Graphic3d_TextureEnv.hxx", bycopy.} = object of Graphic3dTextureRoot ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## environment
                                                                                               ## texture
                                                                                               ## from
                                                                                               ## a
                                                                                               ## file.


proc constructGraphic3dTextureEnv*(theFileName: TCollectionAsciiString): Graphic3dTextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc constructGraphic3dTextureEnv*(theName: Graphic3dNameOfTextureEnv): Graphic3dTextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc constructGraphic3dTextureEnv*(thePixMap: Handle[ImagePixMap]): Graphic3dTextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc name*(this: Graphic3dTextureEnv): Graphic3dNameOfTextureEnv {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_TextureEnv.hxx".}
proc numberOfTextures*(): int {.importcpp: "Graphic3d_TextureEnv::NumberOfTextures(@)",
                             header: "Graphic3d_TextureEnv.hxx".}
proc textureName*(theRank: int): TCollectionAsciiString {.
    importcpp: "Graphic3d_TextureEnv::TextureName(@)",
    header: "Graphic3d_TextureEnv.hxx".}
type
  Graphic3dTextureEnvbaseType* = Graphic3dTextureRoot

proc getTypeName*(): cstring {.importcpp: "Graphic3d_TextureEnv::get_type_name(@)",
                            header: "Graphic3d_TextureEnv.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_TextureEnv::get_type_descriptor(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc dynamicType*(this: Graphic3dTextureEnv): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureEnv.hxx".}
