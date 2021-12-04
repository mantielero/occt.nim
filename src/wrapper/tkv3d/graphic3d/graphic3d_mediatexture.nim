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


proc newGraphic3dMediaTexture*(theMutex: Handle[MediaHMutex]; thePlane: cint = -1): Graphic3dMediaTexture {.
    cdecl, constructor, importcpp: "Graphic3d_MediaTexture(@)", header: "Graphic3d_MediaTexture.hxx".}
proc getImage*(this: var Graphic3dMediaTexture;
              theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    cdecl, importcpp: "GetImage", header: "Graphic3d_MediaTexture.hxx".}
proc frame*(this: Graphic3dMediaTexture): Handle[MediaFrame] {.noSideEffect, cdecl,
    importcpp: "Frame", header: "Graphic3d_MediaTexture.hxx".}
proc setFrame*(this: var Graphic3dMediaTexture; theFrame: Handle[MediaFrame]) {.cdecl,
    importcpp: "SetFrame", header: "Graphic3d_MediaTexture.hxx".}
proc generateNewId*(this: var Graphic3dMediaTexture) {.cdecl,
    importcpp: "GenerateNewId", header: "Graphic3d_MediaTexture.hxx".}