import ../tcollection/tcollection_types
import graphic3d_types





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





proc name*(this: Graphic3dTexture1D): Graphic3dNameOfTexture1D {.noSideEffect, cdecl,
    importcpp: "Name", header: "Graphic3d_Texture1D.hxx".}
proc numberOfTextures*(): cint {.cdecl, importcpp: "Graphic3d_Texture1D::NumberOfTextures(@)",
                              header: "Graphic3d_Texture1D.hxx".}
proc textureName*(aRank: cint): TCollectionAsciiString {.cdecl,
    importcpp: "Graphic3d_Texture1D::TextureName(@)", header: "Graphic3d_Texture1D.hxx".}


