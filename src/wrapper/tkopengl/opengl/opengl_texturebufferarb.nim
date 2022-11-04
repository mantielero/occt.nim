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

## ! Texture Buffer Object.
## ! This is a special 1D texture that VBO-style initialized.
## ! The main differences from general 1D texture:
## !  - no interpolation between field;
## !  - greater sizes;
## !  - special sampler object in GLSL shader to access data by index.
## !
## ! Notice that though TBO is inherited from VBO this is to unify design
## ! user shouldn't cast it to base class and all really useful methods
## ! are declared in this class.

type
  OpenGlTextureBufferArb* {.importcpp: "OpenGl_TextureBufferArb",
                           header: "OpenGl_TextureBufferArb.hxx", bycopy.} = object of OpenGlVertexBuffer ##
                                                                                                   ## !
                                                                                                   ## Helpful
                                                                                                   ## constants
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Create
                                                                                                   ## uninitialized
                                                                                                   ## TBO.
    ## !< texture id
    ## !< internal texture format


proc newOpenGlTextureBufferArb*(): OpenGlTextureBufferArb {.cdecl, constructor,
    importcpp: "OpenGl_TextureBufferArb(@)", dynlib: tkkxbase.}
proc destroyOpenGlTextureBufferArb*(this: var OpenGlTextureBufferArb) {.cdecl,
    importcpp: "#.~OpenGl_TextureBufferArb()", dynlib: tkkxbase.}
proc getTarget*(this: OpenGlTextureBufferArb): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", dynlib: tkkxbase.}
proc isValid*(this: OpenGlTextureBufferArb): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkkxbase.}
proc release*(this: var OpenGlTextureBufferArb; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc create*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", dynlib: tkkxbase.}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc bindTexture*(this: OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
                 theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "BindTexture", dynlib: tkkxbase.}
proc unbindTexture*(this: OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
                   theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "UnbindTexture", dynlib: tkkxbase.}
proc textureId*(this: OpenGlTextureBufferArb): GLuint {.noSideEffect, cdecl,
    importcpp: "TextureId", dynlib: tkkxbase.}
proc textureFormat*(this: OpenGlTextureBufferArb): GLenum {.noSideEffect, cdecl,
    importcpp: "TextureFormat", dynlib: tkkxbase.}
type
  HandleOpenGlTextureBufferArb* = Handle[OpenGlTextureBufferArb]
