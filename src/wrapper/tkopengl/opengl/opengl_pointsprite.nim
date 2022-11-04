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
type
  HandleOpenGlPointSprite* = Handle[OpenGlPointSprite]

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


proc newOpenGlPointSprite*(theResourceId: TCollectionAsciiString): OpenGlPointSprite {.
    cdecl, constructor, importcpp: "OpenGl_PointSprite(@)", dynlib: tkkxbase.}
proc destroyOpenGlPointSprite*(this: var OpenGlPointSprite) {.cdecl,
    importcpp: "#.~OpenGl_PointSprite()", dynlib: tkkxbase.}
proc release*(this: var OpenGlPointSprite; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc isPointSprite*(this: OpenGlPointSprite): bool {.noSideEffect, cdecl,
    importcpp: "IsPointSprite", dynlib: tkkxbase.}
proc isDisplayList*(this: OpenGlPointSprite): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayList", dynlib: tkkxbase.}
proc drawBitmap*(this: OpenGlPointSprite; theCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "DrawBitmap", dynlib: tkkxbase.}
proc setDisplayList*(this: var OpenGlPointSprite; theCtx: Handle[OpenGlContext];
                    theBitmapList: GLuint) {.cdecl, importcpp: "SetDisplayList",
    dynlib: tkkxbase.}