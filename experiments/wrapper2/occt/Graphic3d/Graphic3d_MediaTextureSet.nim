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
  ../Media/Media_IFrameQueue, Graphic3d_MediaTexture, Graphic3d_TextureSet

discard "forward decl of Graphic3d_ShaderProgram"
discard "forward decl of Media_PlayerContext"
type
  Graphic3d_MediaTextureSet* {.importcpp: "Graphic3d_MediaTextureSet",
                              header: "Graphic3d_MediaTextureSet.hxx", bycopy.} = object of Graphic3d_TextureSet ##
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

  Graphic3d_MediaTextureSetbase_type* = Graphic3d_TextureSet

proc get_type_name*(): cstring {.importcpp: "Graphic3d_MediaTextureSet::get_type_name(@)",
                              header: "Graphic3d_MediaTextureSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_MediaTextureSet::get_type_descriptor(@)",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc DynamicType*(this: Graphic3d_MediaTextureSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_MediaTextureSet.hxx".}
type
  Graphic3d_MediaTextureSetCallbackOnUpdate_t* = proc (theUserPtr: pointer)

proc constructGraphic3d_MediaTextureSet*(): Graphic3d_MediaTextureSet {.
    constructor, importcpp: "Graphic3d_MediaTextureSet(@)",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc SetCallback*(this: var Graphic3d_MediaTextureSet; theCallbackFunction: Graphic3d_MediaTextureSetCallbackOnUpdate_t;
                 theCallbackUserPtr: pointer) {.importcpp: "SetCallback",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc Notify*(this: var Graphic3d_MediaTextureSet) {.importcpp: "Notify",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc Input*(this: Graphic3d_MediaTextureSet): TCollection_AsciiString {.
    noSideEffect, importcpp: "Input", header: "Graphic3d_MediaTextureSet.hxx".}
proc OpenInput*(this: var Graphic3d_MediaTextureSet;
               thePath: TCollection_AsciiString; theToWait: Standard_Boolean) {.
    importcpp: "OpenInput", header: "Graphic3d_MediaTextureSet.hxx".}
proc PlayerContext*(this: Graphic3d_MediaTextureSet): handle[Media_PlayerContext] {.
    noSideEffect, importcpp: "PlayerContext",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc SwapFrames*(this: var Graphic3d_MediaTextureSet): Standard_Boolean {.
    importcpp: "SwapFrames", header: "Graphic3d_MediaTextureSet.hxx".}
proc FrameSize*(this: Graphic3d_MediaTextureSet): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "FrameSize", header: "Graphic3d_MediaTextureSet.hxx".}
proc ShaderProgram*(this: Graphic3d_MediaTextureSet): handle[
    Graphic3d_ShaderProgram] {.noSideEffect, importcpp: "ShaderProgram",
                              header: "Graphic3d_MediaTextureSet.hxx".}
proc IsPlanarYUV*(this: Graphic3d_MediaTextureSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanarYUV", header: "Graphic3d_MediaTextureSet.hxx".}
proc IsFullRangeYUV*(this: Graphic3d_MediaTextureSet): Standard_Boolean {.
    noSideEffect, importcpp: "IsFullRangeYUV",
    header: "Graphic3d_MediaTextureSet.hxx".}
proc Duration*(this: Graphic3d_MediaTextureSet): cdouble {.noSideEffect,
    importcpp: "Duration", header: "Graphic3d_MediaTextureSet.hxx".}
proc Progress*(this: Graphic3d_MediaTextureSet): cdouble {.noSideEffect,
    importcpp: "Progress", header: "Graphic3d_MediaTextureSet.hxx".}