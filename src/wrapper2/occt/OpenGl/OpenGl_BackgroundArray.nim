##  Created on: 2015-01-16
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! Tool class for generating reusable data for
## ! gradient or texture background rendering.

type
  OpenGlBackgroundArray* {.importcpp: "OpenGl_BackgroundArray",
                          header: "OpenGl_BackgroundArray.hxx", bycopy.} = object of OpenGlPrimitiveArray ##
                                                                                                   ## !
                                                                                                   ## Main
                                                                                                   ## constructor.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @name
                                                                                                   ## Internal
                                                                                                   ## structure
                                                                                                   ## for
                                                                                                   ## storing
                                                                                                   ## gradient
                                                                                                   ## parameters
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Fill
                                                                                                   ## attributes
                                                                                                   ## arrays
                                                                                                   ## for
                                                                                                   ## background
                                                                                                   ## array
                                                                                                   ## according
                                                                                                   ## to
                                                                                                   ## its
                                                                                                   ## type:
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## -
                                                                                                   ## for
                                                                                                   ## gradient
                                                                                                   ## background
                                                                                                   ## its
                                                                                                   ## attributes
                                                                                                   ## consist
                                                                                                   ## of
                                                                                                   ## colors
                                                                                                   ## and
                                                                                                   ## gradient
                                                                                                   ## coordinates
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## -
                                                                                                   ## for
                                                                                                   ## texture
                                                                                                   ## one
                                                                                                   ## its
                                                                                                   ## attributes
                                                                                                   ## consist
                                                                                                   ## of
                                                                                                   ## position
                                                                                                   ## and
                                                                                                   ## texture
                                                                                                   ## coordinates.
    ## !< Type of background: texture or gradient.
    ## !< Texture parameters
    ## !< Gradient parameters
    ## !< view width  used for array initialization
    ## !< view height used for array initialization
    ## !< Shows if array parameters were changed and data (myAttribs storage) is to be updated


proc constructOpenGlBackgroundArray*(theType: Graphic3dTypeOfBackground): OpenGlBackgroundArray {.
    constructor, importcpp: "OpenGl_BackgroundArray(@)",
    header: "OpenGl_BackgroundArray.hxx".}
proc render*(this: OpenGlBackgroundArray; theWorkspace: Handle[OpenGlWorkspace];
            theProjection: Projection) {.noSideEffect, importcpp: "Render",
                                       header: "OpenGl_BackgroundArray.hxx".}
proc isDefined*(this: OpenGlBackgroundArray): bool {.noSideEffect,
    importcpp: "IsDefined", header: "OpenGl_BackgroundArray.hxx".}
proc setTextureParameters*(this: var OpenGlBackgroundArray;
                          theFillMethod: AspectFillMethod) {.
    importcpp: "SetTextureParameters", header: "OpenGl_BackgroundArray.hxx".}
proc setTextureFillMethod*(this: var OpenGlBackgroundArray;
                          theFillMethod: AspectFillMethod) {.
    importcpp: "SetTextureFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc textureFillMethod*(this: OpenGlBackgroundArray): AspectFillMethod {.
    noSideEffect, importcpp: "TextureFillMethod",
    header: "OpenGl_BackgroundArray.hxx".}
proc gradientFillMethod*(this: OpenGlBackgroundArray): AspectGradientFillMethod {.
    noSideEffect, importcpp: "GradientFillMethod",
    header: "OpenGl_BackgroundArray.hxx".}
proc gradientColor*(this: OpenGlBackgroundArray; theIndex: StandardInteger): OpenGlVec4 {.
    noSideEffect, importcpp: "GradientColor", header: "OpenGl_BackgroundArray.hxx".}
proc setGradientFillMethod*(this: var OpenGlBackgroundArray;
                           theType: AspectGradientFillMethod) {.
    importcpp: "SetGradientFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc setGradientParameters*(this: var OpenGlBackgroundArray;
                           theColor1: QuantityColor; theColor2: QuantityColor;
                           theType: AspectGradientFillMethod) {.
    importcpp: "SetGradientParameters", header: "OpenGl_BackgroundArray.hxx".}
## using statement


