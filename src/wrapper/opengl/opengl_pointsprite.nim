import ../tcollection/tcollection_types
import ../standard/standard_types
import opengl_types



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





proc newOpenGlPointSprite*(theResourceId: TCollectionAsciiString): OpenGlPointSprite {.
    cdecl, constructor, importcpp: "OpenGl_PointSprite(@)", header: "OpenGl_PointsSprite.hxx".}
proc destroyOpenGlPointSprite*(this: var OpenGlPointSprite) {.cdecl,
    importcpp: "#.~OpenGl_PointSprite()", header: "OpenGl_PointsSprite.hxx".}
proc release*(this: var OpenGlPointSprite; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_PointsSprite.hxx".}
proc isPointSprite*(this: OpenGlPointSprite): bool {.noSideEffect, cdecl,
    importcpp: "IsPointSprite", header: "OpenGl_PointsSprite.hxx".}
proc isDisplayList*(this: OpenGlPointSprite): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayList", header: "OpenGl_PointsSprite.hxx".}
proc drawBitmap*(this: OpenGlPointSprite; theCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "DrawBitmap", header: "OpenGl_PointsSprite.hxx".}
proc setDisplayList*(this: var OpenGlPointSprite; theCtx: Handle[OpenGlContext];
                    theBitmapList: GLuint) {.cdecl, importcpp: "SetDisplayList",
    header: "OpenGl_PointsSprite.hxx".}

