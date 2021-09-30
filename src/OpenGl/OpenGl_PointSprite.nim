##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_PointSprite"
discard "forward decl of OpenGl_PointSprite"
type
  HandleC1C1* = Handle[OpenGlPointSprite]

## ! Point sprite resource. On modern hardware it will be texture with extra parameters.
## ! On ancient hardware sprites will be drawn using bitmaps.

type
  OpenGlPointSprite* {.importcpp: "OpenGl_PointSprite",
                      header: "OpenGl_PointSprite.hxx", bycopy.} = object of OpenGlTexture ##
                                                                                    ## !
                                                                                    ## Create
                                                                                    ## uninitialized
                                                                                    ## resource.
    ## !< if of display list to draw sprite using glBitmap (for backward compatibility)

  OpenGlPointSpritebaseType* = OpenGlTexture

proc getTypeName*(): cstring {.importcpp: "OpenGl_PointSprite::get_type_name(@)",
                            header: "OpenGl_PointSprite.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_PointSprite::get_type_descriptor(@)",
    header: "OpenGl_PointSprite.hxx".}
proc dynamicType*(this: OpenGlPointSprite): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_PointSprite.hxx".}
proc constructOpenGlPointSprite*(theResourceId: TCollectionAsciiString): OpenGlPointSprite {.
    constructor, importcpp: "OpenGl_PointSprite(@)",
    header: "OpenGl_PointSprite.hxx".}
proc destroyOpenGlPointSprite*(this: var OpenGlPointSprite) {.
    importcpp: "#.~OpenGl_PointSprite()", header: "OpenGl_PointSprite.hxx".}
proc release*(this: var OpenGlPointSprite; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_PointSprite.hxx".}
proc isPointSprite*(this: OpenGlPointSprite): bool {.noSideEffect,
    importcpp: "IsPointSprite", header: "OpenGl_PointSprite.hxx".}
proc isDisplayList*(this: OpenGlPointSprite): bool {.noSideEffect,
    importcpp: "IsDisplayList", header: "OpenGl_PointSprite.hxx".}
proc drawBitmap*(this: OpenGlPointSprite; theCtx: Handle[OpenGlContext]) {.
    noSideEffect, importcpp: "DrawBitmap", header: "OpenGl_PointSprite.hxx".}
proc setDisplayList*(this: var OpenGlPointSprite; theCtx: Handle[OpenGlContext];
                    theBitmapList: GLuint) {.importcpp: "SetDisplayList",
    header: "OpenGl_PointSprite.hxx".}

























