##  Created by: Kirill GAVRILOV
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
  Graphic3d_Texture2D, ../NCollection/NCollection_DefineAlloc,
  ../NCollection/NCollection_Shared, ../Standard/Standard_Mutex

discard "forward decl of Media_Frame"
type
  Media_HMutex* = NCollection_Shared[Standard_Mutex]

## ! Texture adapter for Media_Frame.

type
  Graphic3d_MediaTexture* {.importcpp: "Graphic3d_MediaTexture",
                           header: "Graphic3d_MediaTexture.hxx", bycopy.} = object of Graphic3d_Texture2D ##
                                                                                                   ## !
                                                                                                   ## Main
                                                                                                   ## constructor.

  Graphic3d_MediaTexturebase_type* = Graphic3d_Texture2D

proc get_type_name*(): cstring {.importcpp: "Graphic3d_MediaTexture::get_type_name(@)",
                              header: "Graphic3d_MediaTexture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_MediaTexture::get_type_descriptor(@)",
    header: "Graphic3d_MediaTexture.hxx".}
proc DynamicType*(this: Graphic3d_MediaTexture): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_MediaTexture.hxx".}
proc constructGraphic3d_MediaTexture*(theMutex: handle[Media_HMutex];
                                     thePlane: Standard_Integer = -1): Graphic3d_MediaTexture {.
    constructor, importcpp: "Graphic3d_MediaTexture(@)",
    header: "Graphic3d_MediaTexture.hxx".}
proc GetImage*(this: var Graphic3d_MediaTexture;
              theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "GetImage", header: "Graphic3d_MediaTexture.hxx".}
proc Frame*(this: Graphic3d_MediaTexture): handle[Media_Frame] {.noSideEffect,
    importcpp: "Frame", header: "Graphic3d_MediaTexture.hxx".}
proc SetFrame*(this: var Graphic3d_MediaTexture; theFrame: handle[Media_Frame]) {.
    importcpp: "SetFrame", header: "Graphic3d_MediaTexture.hxx".}
proc GenerateNewId*(this: var Graphic3d_MediaTexture) {.importcpp: "GenerateNewId",
    header: "Graphic3d_MediaTexture.hxx".}