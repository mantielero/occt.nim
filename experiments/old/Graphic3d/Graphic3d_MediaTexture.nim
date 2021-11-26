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

discard "forward decl of Media_Frame"
type
  MediaHMutex* = NCollectionShared[StandardMutex]

## ! Texture adapter for Media_Frame.

type
  Graphic3dMediaTexture* {.importcpp: "Graphic3d_MediaTexture",
                          header: "Graphic3d_MediaTexture.hxx", bycopy.} = object of Graphic3dTexture2D ##
                                                                                                 ## !
                                                                                                 ## Main
                                                                                                 ## constructor.

  Graphic3dMediaTexturebaseType* = Graphic3dTexture2D

proc getTypeName*(): cstring {.importcpp: "Graphic3d_MediaTexture::get_type_name(@)",
                            header: "Graphic3d_MediaTexture.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_MediaTexture::get_type_descriptor(@)",
    header: "Graphic3d_MediaTexture.hxx".}
proc dynamicType*(this: Graphic3dMediaTexture): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_MediaTexture.hxx".}
proc constructGraphic3dMediaTexture*(theMutex: Handle[MediaHMutex];
                                    thePlane: cint = -1): Graphic3dMediaTexture {.
    constructor, importcpp: "Graphic3d_MediaTexture(@)",
    header: "Graphic3d_MediaTexture.hxx".}
proc getImage*(this: var Graphic3dMediaTexture;
              theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    importcpp: "GetImage", header: "Graphic3d_MediaTexture.hxx".}
proc frame*(this: Graphic3dMediaTexture): Handle[MediaFrame] {.noSideEffect,
    importcpp: "Frame", header: "Graphic3d_MediaTexture.hxx".}
proc setFrame*(this: var Graphic3dMediaTexture; theFrame: Handle[MediaFrame]) {.
    importcpp: "SetFrame", header: "Graphic3d_MediaTexture.hxx".}
proc generateNewId*(this: var Graphic3dMediaTexture) {.importcpp: "GenerateNewId",
    header: "Graphic3d_MediaTexture.hxx".}

























