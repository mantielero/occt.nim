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

import
  OpenGl_Texture

discard "forward decl of OpenGl_PointSprite"
discard "forward decl of OpenGl_PointSprite"
type
  Handle_OpenGl_PointSprite* = handle[OpenGl_PointSprite]

## ! Point sprite resource. On modern hardware it will be texture with extra parameters.
## ! On ancient hardware sprites will be drawn using bitmaps.

type
  OpenGl_PointSprite* {.importcpp: "OpenGl_PointSprite",
                       header: "OpenGl_PointSprite.hxx", bycopy.} = object of OpenGl_Texture ##
                                                                                      ## !
                                                                                      ## Create
                                                                                      ## uninitialized
                                                                                      ## resource.
    ## !< if of display list to draw sprite using glBitmap (for backward compatibility)

  OpenGl_PointSpritebase_type* = OpenGl_Texture

proc get_type_name*(): cstring {.importcpp: "OpenGl_PointSprite::get_type_name(@)",
                              header: "OpenGl_PointSprite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_PointSprite::get_type_descriptor(@)",
    header: "OpenGl_PointSprite.hxx".}
proc DynamicType*(this: OpenGl_PointSprite): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_PointSprite.hxx".}
proc constructOpenGl_PointSprite*(theResourceId: TCollection_AsciiString): OpenGl_PointSprite {.
    constructor, importcpp: "OpenGl_PointSprite(@)",
    header: "OpenGl_PointSprite.hxx".}
proc destroyOpenGl_PointSprite*(this: var OpenGl_PointSprite) {.
    importcpp: "#.~OpenGl_PointSprite()", header: "OpenGl_PointSprite.hxx".}
proc Release*(this: var OpenGl_PointSprite; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_PointSprite.hxx".}
proc IsPointSprite*(this: OpenGl_PointSprite): bool {.noSideEffect,
    importcpp: "IsPointSprite", header: "OpenGl_PointSprite.hxx".}
proc IsDisplayList*(this: OpenGl_PointSprite): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayList", header: "OpenGl_PointSprite.hxx".}
proc DrawBitmap*(this: OpenGl_PointSprite; theCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "DrawBitmap", header: "OpenGl_PointSprite.hxx".}
proc SetDisplayList*(this: var OpenGl_PointSprite; theCtx: handle[OpenGl_Context];
                    theBitmapList: GLuint) {.importcpp: "SetDisplayList",
    header: "OpenGl_PointSprite.hxx".}