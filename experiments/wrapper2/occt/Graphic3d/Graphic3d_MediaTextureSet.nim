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
type
  Graphic3dMediaTextureSet* {.importcpp: "Graphic3d_MediaTextureSet",
                             header: "Graphic3d_MediaTextureSet.hxx", bycopy.} = object of Graphic3dTextureSet ##
                                                                                                        ## !
                                                                                                        ## Callback
                                                                                                        ## definition.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Lock
                                                                                                        ## the
                                                                                                        ## frame
                                                                                                        ## for
                                                                                                        ## decoding
                                                                                                        ## into.
    ## !< player context
    ## !< front/back frames pair
    ## !< shader program for YUV  texture set
    ## !< shader program for YUVJ texture set
    ## !< mutex for accessing frames
    ## !< input media
    ## !< callback function
    ## !< callback data
    ## !< front frame size
    ## !< playback progress in seconds
    ## !< stream duration
    ## !< index of front texture
    ## !< flag
    ## !< front frame contains planar YUV data or native texture format
    ## !< front frame defines full-range or reduced-range YUV

  Graphic3dMediaTextureSetbaseType* = Graphic3dTextureSet

proc getTypeName*(): cstring {.importcpp: "Graphic3d_MediaTextureSet::get_type_name(@)",
                            header: "Graphic3d_MediaTextureSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_MediaTextureSet::get_type_descriptor(@)",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc dynamicType*(this: Graphic3dMediaTextureSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_MediaTextureSet.hxx".}
type
  Graphic3dMediaTextureSetCallbackOnUpdateT* = proc (theUserPtr: pointer)

proc constructGraphic3dMediaTextureSet*(): Graphic3dMediaTextureSet {.constructor,
    importcpp: "Graphic3d_MediaTextureSet(@)",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc setCallback*(this: var Graphic3dMediaTextureSet; theCallbackFunction: Graphic3dMediaTextureSetCallbackOnUpdateT;
                 theCallbackUserPtr: pointer) {.importcpp: "SetCallback",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc notify*(this: var Graphic3dMediaTextureSet) {.importcpp: "Notify",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc input*(this: Graphic3dMediaTextureSet): TCollectionAsciiString {.noSideEffect,
    importcpp: "Input", header: "Graphic3d_MediaTextureSet.hxx".}
proc openInput*(this: var Graphic3dMediaTextureSet; thePath: TCollectionAsciiString;
               theToWait: bool) {.importcpp: "OpenInput",
                                header: "Graphic3d_MediaTextureSet.hxx".}
proc playerContext*(this: Graphic3dMediaTextureSet): Handle[MediaPlayerContext] {.
    noSideEffect, importcpp: "PlayerContext",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc swapFrames*(this: var Graphic3dMediaTextureSet): bool {.importcpp: "SwapFrames",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc frameSize*(this: Graphic3dMediaTextureSet): Graphic3dVec2i {.noSideEffect,
    importcpp: "FrameSize", header: "Graphic3d_MediaTextureSet.hxx".}
proc shaderProgram*(this: Graphic3dMediaTextureSet): Handle[Graphic3dShaderProgram] {.
    noSideEffect, importcpp: "ShaderProgram",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc isPlanarYUV*(this: Graphic3dMediaTextureSet): bool {.noSideEffect,
    importcpp: "IsPlanarYUV", header: "Graphic3d_MediaTextureSet.hxx".}
proc isFullRangeYUV*(this: Graphic3dMediaTextureSet): bool {.noSideEffect,
    importcpp: "IsFullRangeYUV", header: "Graphic3d_MediaTextureSet.hxx".}
proc duration*(this: Graphic3dMediaTextureSet): cdouble {.noSideEffect,
    importcpp: "Duration", header: "Graphic3d_MediaTextureSet.hxx".}
proc progress*(this: Graphic3dMediaTextureSet): cdouble {.noSideEffect,
    importcpp: "Progress", header: "Graphic3d_MediaTextureSet.hxx".}
