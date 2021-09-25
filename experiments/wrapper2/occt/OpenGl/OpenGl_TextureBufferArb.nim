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

  OpenGlTextureBufferArbbaseType* = OpenGlVertexBuffer

proc getTypeName*(): cstring {.importcpp: "OpenGl_TextureBufferArb::get_type_name(@)",
                            header: "OpenGl_TextureBufferArb.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_TextureBufferArb::get_type_descriptor(@)",
    header: "OpenGl_TextureBufferArb.hxx".}
proc dynamicType*(this: OpenGlTextureBufferArb): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_TextureBufferArb.hxx".}
proc constructOpenGlTextureBufferArb*(): OpenGlTextureBufferArb {.constructor,
    importcpp: "OpenGl_TextureBufferArb(@)", header: "OpenGl_TextureBufferArb.hxx".}
proc destroyOpenGlTextureBufferArb*(this: var OpenGlTextureBufferArb) {.
    importcpp: "#.~OpenGl_TextureBufferArb()",
    header: "OpenGl_TextureBufferArb.hxx".}
proc getTarget*(this: OpenGlTextureBufferArb): GLenum {.noSideEffect,
    importcpp: "GetTarget", header: "OpenGl_TextureBufferArb.hxx".}
proc isValid*(this: OpenGlTextureBufferArb): bool {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_TextureBufferArb.hxx".}
proc release*(this: var OpenGlTextureBufferArb; theGlCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_TextureBufferArb.hxx".}
proc create*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext]): bool {.
    importcpp: "Create", header: "OpenGl_TextureBufferArb.hxx".}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc init*(this: var OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc bindTexture*(this: OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
                 theTextureUnit: Graphic3dTextureUnit) {.noSideEffect,
    importcpp: "BindTexture", header: "OpenGl_TextureBufferArb.hxx".}
proc unbindTexture*(this: OpenGlTextureBufferArb; theGlCtx: Handle[OpenGlContext];
                   theTextureUnit: Graphic3dTextureUnit) {.noSideEffect,
    importcpp: "UnbindTexture", header: "OpenGl_TextureBufferArb.hxx".}
proc textureId*(this: OpenGlTextureBufferArb): GLuint {.noSideEffect,
    importcpp: "TextureId", header: "OpenGl_TextureBufferArb.hxx".}
proc textureFormat*(this: OpenGlTextureBufferArb): GLenum {.noSideEffect,
    importcpp: "TextureFormat", header: "OpenGl_TextureBufferArb.hxx".}
discard "forward decl of OpenGl_TextureBufferArb"
type
  HandleOpenGlTextureBufferArb* = Handle[OpenGlTextureBufferArb]

