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
discard "forward decl of Graphic3d_Texture1D"
discard "forward decl of Graphic3d_Texture1D"
type
  HandleC1C1* = Handle[Graphic3dTexture1D]

## ! This is an abstract class for managing 1D textures.

type
  Graphic3dTexture1D* {.importcpp: "Graphic3d_Texture1D",
                       header: "Graphic3d_Texture1D.hxx", bycopy.} = object of Graphic3dTextureMap ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## name
                                                                                            ## of
                                                                                            ## the
                                                                                            ## predefined
                                                                                            ## textures
                                                                                            ## or
                                                                                            ## NOT_1D_UNKNOWN
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


proc name*(this: Graphic3dTexture1D): Graphic3dNameOfTexture1D {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_Texture1D.hxx".}
proc numberOfTextures*(): cint {.importcpp: "Graphic3d_Texture1D::NumberOfTextures(@)",
                              header: "Graphic3d_Texture1D.hxx".}
proc textureName*(aRank: cint): TCollectionAsciiString {.
    importcpp: "Graphic3d_Texture1D::TextureName(@)",
    header: "Graphic3d_Texture1D.hxx".}
type
  Graphic3dTexture1DbaseType* = Graphic3dTextureMap

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Texture1D::get_type_name(@)",
                            header: "Graphic3d_Texture1D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Texture1D::get_type_descriptor(@)",
    header: "Graphic3d_Texture1D.hxx".}
proc dynamicType*(this: Graphic3dTexture1D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Texture1D.hxx".}

























