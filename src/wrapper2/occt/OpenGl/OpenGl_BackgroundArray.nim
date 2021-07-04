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

import
  ../Aspect/Aspect_GradientFillMethod, ../Aspect/Aspect_FillMethod,
  ../Graphic3d/Graphic3d_TypeOfBackground, OpenGl_Aspects, OpenGl_PrimitiveArray,
  OpenGl_Vec, OpenGl_Workspace

## ! Tool class for generating reusable data for
## ! gradient or texture background rendering.

type
  OpenGl_BackgroundArray* {.importcpp: "OpenGl_BackgroundArray",
                           header: "OpenGl_BackgroundArray.hxx", bycopy.} = object of OpenGl_PrimitiveArray ##
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


proc constructOpenGl_BackgroundArray*(theType: Graphic3d_TypeOfBackground): OpenGl_BackgroundArray {.
    constructor, importcpp: "OpenGl_BackgroundArray(@)",
    header: "OpenGl_BackgroundArray.hxx".}
proc Render*(this: OpenGl_BackgroundArray; theWorkspace: handle[OpenGl_Workspace];
            theProjection: Projection) {.noSideEffect, importcpp: "Render",
                                       header: "OpenGl_BackgroundArray.hxx".}
proc IsDefined*(this: OpenGl_BackgroundArray): bool {.noSideEffect,
    importcpp: "IsDefined", header: "OpenGl_BackgroundArray.hxx".}
proc SetTextureParameters*(this: var OpenGl_BackgroundArray;
                          theFillMethod: Aspect_FillMethod) {.
    importcpp: "SetTextureParameters", header: "OpenGl_BackgroundArray.hxx".}
proc SetTextureFillMethod*(this: var OpenGl_BackgroundArray;
                          theFillMethod: Aspect_FillMethod) {.
    importcpp: "SetTextureFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc TextureFillMethod*(this: OpenGl_BackgroundArray): Aspect_FillMethod {.
    noSideEffect, importcpp: "TextureFillMethod",
    header: "OpenGl_BackgroundArray.hxx".}
proc GradientFillMethod*(this: OpenGl_BackgroundArray): Aspect_GradientFillMethod {.
    noSideEffect, importcpp: "GradientFillMethod",
    header: "OpenGl_BackgroundArray.hxx".}
proc GradientColor*(this: OpenGl_BackgroundArray; theIndex: Standard_Integer): OpenGl_Vec4 {.
    noSideEffect, importcpp: "GradientColor", header: "OpenGl_BackgroundArray.hxx".}
proc SetGradientFillMethod*(this: var OpenGl_BackgroundArray;
                           theType: Aspect_GradientFillMethod) {.
    importcpp: "SetGradientFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc SetGradientParameters*(this: var OpenGl_BackgroundArray;
                           theColor1: Quantity_Color; theColor2: Quantity_Color;
                           theType: Aspect_GradientFillMethod) {.
    importcpp: "SetGradientParameters", header: "OpenGl_BackgroundArray.hxx".}
## using statement
