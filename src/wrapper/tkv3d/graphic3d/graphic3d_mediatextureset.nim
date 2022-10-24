import graphic3d_types

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

discard "forward decl of Graphic3d_ShaderProgram"
discard "forward decl of Media_PlayerContext"


proc newGraphic3dMediaTextureSet*(): Graphic3dMediaTextureSet {.cdecl, constructor,
    importcpp: "Graphic3d_MediaTextureSet(@)", header: "Graphic3d_MediaTextureSet.hxx".}
proc setCallback*(this: var Graphic3dMediaTextureSet; theCallbackFunction: Graphic3dMediaTextureSetCallbackOnUpdateT;
                 theCallbackUserPtr: pointer) {.cdecl, importcpp: "SetCallback",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc notify*(this: var Graphic3dMediaTextureSet) {.cdecl, importcpp: "Notify",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc input*(this: Graphic3dMediaTextureSet): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Input", header: "Graphic3d_MediaTextureSet.hxx".}
proc openInput*(this: var Graphic3dMediaTextureSet; thePath: TCollectionAsciiString;
               theToWait: bool) {.cdecl, importcpp: "OpenInput", header: "Graphic3d_MediaTextureSet.hxx".}
proc playerContext*(this: Graphic3dMediaTextureSet): Handle[MediaPlayerContext] {.
    noSideEffect, cdecl, importcpp: "PlayerContext", header: "Graphic3d_MediaTextureSet.hxx".}
proc swapFrames*(this: var Graphic3dMediaTextureSet): bool {.cdecl,
    importcpp: "SwapFrames", header: "Graphic3d_MediaTextureSet.hxx".}
proc frameSize*(this: Graphic3dMediaTextureSet): Graphic3dVec2i {.noSideEffect,
    cdecl, importcpp: "FrameSize", header: "Graphic3d_MediaTextureSet.hxx".}
proc shaderProgram*(this: Graphic3dMediaTextureSet): Handle[Graphic3dShaderProgram] {.
    noSideEffect, cdecl, importcpp: "ShaderProgram", header: "Graphic3d_MediaTextureSet.hxx".}
proc isPlanarYUV*(this: Graphic3dMediaTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsPlanarYUV", header: "Graphic3d_MediaTextureSet.hxx".}
proc isFullRangeYUV*(this: Graphic3dMediaTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsFullRangeYUV", header: "Graphic3d_MediaTextureSet.hxx".}
proc duration*(this: Graphic3dMediaTextureSet): cdouble {.noSideEffect, cdecl,
    importcpp: "Duration", header: "Graphic3d_MediaTextureSet.hxx".}
proc progress*(this: Graphic3dMediaTextureSet): cdouble {.noSideEffect, cdecl,
    importcpp: "Progress", header: "Graphic3d_MediaTextureSet.hxx".}
