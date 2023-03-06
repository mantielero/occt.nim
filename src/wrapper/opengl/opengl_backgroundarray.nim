import ../aspect/aspect_types
import ../quantity/quantity_types
import ../graphic3d/graphic3d_types
import opengl_types


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



proc newOpenGlBackgroundArray*(theType: Graphic3dTypeOfBackground): OpenGlBackgroundArray {.
    cdecl, constructor, importcpp: "OpenGl_BackgroundArray(@)", header: "OpenGl_BackgroundArray.hxx".}
# proc render*(this: OpenGlBackgroundArray; theWorkspace: Handle[OpenGlWorkspace];
#             theProjection: Projection) {.noSideEffect, cdecl, importcpp: "Render",
#                                        header: "OpenGl_BackgroundArray.hxx".}
proc isDefined*(this: OpenGlBackgroundArray): bool {.noSideEffect, cdecl,
    importcpp: "IsDefined", header: "OpenGl_BackgroundArray.hxx".}
proc setTextureParameters*(this: var OpenGlBackgroundArray;
                          theFillMethod: AspectFillMethod) {.cdecl,
    importcpp: "SetTextureParameters", header: "OpenGl_BackgroundArray.hxx".}
proc setTextureFillMethod*(this: var OpenGlBackgroundArray;
                          theFillMethod: AspectFillMethod) {.cdecl,
    importcpp: "SetTextureFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc textureFillMethod*(this: OpenGlBackgroundArray): AspectFillMethod {.
    noSideEffect, cdecl, importcpp: "TextureFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc gradientFillMethod*(this: OpenGlBackgroundArray): AspectGradientFillMethod {.
    noSideEffect, cdecl, importcpp: "GradientFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc gradientColor*(this: OpenGlBackgroundArray; theIndex: cint): OpenGlVec4 {.
    noSideEffect, cdecl, importcpp: "GradientColor", header: "OpenGl_BackgroundArray.hxx".}
proc setGradientFillMethod*(this: var OpenGlBackgroundArray;
                           theType: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetGradientFillMethod", header: "OpenGl_BackgroundArray.hxx".}
proc setGradientParameters*(this: var OpenGlBackgroundArray;
                           theColor1: QuantityColor; theColor2: QuantityColor;
                           theType: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetGradientParameters", header: "OpenGl_BackgroundArray.hxx".}
## using statement


