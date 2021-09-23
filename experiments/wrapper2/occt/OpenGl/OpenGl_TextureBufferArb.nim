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
  OpenGl_VertexBuffer, OpenGl_ArbTBO

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
  OpenGl_TextureBufferArb* {.importcpp: "OpenGl_TextureBufferArb",
                            header: "OpenGl_TextureBufferArb.hxx", bycopy.} = object of OpenGl_VertexBuffer ##
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

  OpenGl_TextureBufferArbbase_type* = OpenGl_VertexBuffer

proc get_type_name*(): cstring {.importcpp: "OpenGl_TextureBufferArb::get_type_name(@)",
                              header: "OpenGl_TextureBufferArb.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_TextureBufferArb::get_type_descriptor(@)",
    header: "OpenGl_TextureBufferArb.hxx".}
proc DynamicType*(this: OpenGl_TextureBufferArb): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_TextureBufferArb.hxx".}
proc constructOpenGl_TextureBufferArb*(): OpenGl_TextureBufferArb {.constructor,
    importcpp: "OpenGl_TextureBufferArb(@)", header: "OpenGl_TextureBufferArb.hxx".}
proc destroyOpenGl_TextureBufferArb*(this: var OpenGl_TextureBufferArb) {.
    importcpp: "#.~OpenGl_TextureBufferArb()",
    header: "OpenGl_TextureBufferArb.hxx".}
proc GetTarget*(this: OpenGl_TextureBufferArb): GLenum {.noSideEffect,
    importcpp: "GetTarget", header: "OpenGl_TextureBufferArb.hxx".}
proc IsValid*(this: OpenGl_TextureBufferArb): bool {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_TextureBufferArb.hxx".}
proc Release*(this: var OpenGl_TextureBufferArb; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_TextureBufferArb.hxx".}
proc Create*(this: var OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context]): bool {.
    importcpp: "Create", header: "OpenGl_TextureBufferArb.hxx".}
proc Init*(this: var OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc Init*(this: var OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc Init*(this: var OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc Init*(this: var OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "Init", header: "OpenGl_TextureBufferArb.hxx".}
proc BindTexture*(this: OpenGl_TextureBufferArb; theGlCtx: handle[OpenGl_Context];
                 theTextureUnit: Graphic3d_TextureUnit) {.noSideEffect,
    importcpp: "BindTexture", header: "OpenGl_TextureBufferArb.hxx".}
proc UnbindTexture*(this: OpenGl_TextureBufferArb;
                   theGlCtx: handle[OpenGl_Context];
                   theTextureUnit: Graphic3d_TextureUnit) {.noSideEffect,
    importcpp: "UnbindTexture", header: "OpenGl_TextureBufferArb.hxx".}
proc TextureId*(this: OpenGl_TextureBufferArb): GLuint {.noSideEffect,
    importcpp: "TextureId", header: "OpenGl_TextureBufferArb.hxx".}
proc TextureFormat*(this: OpenGl_TextureBufferArb): GLenum {.noSideEffect,
    importcpp: "TextureFormat", header: "OpenGl_TextureBufferArb.hxx".}
discard "forward decl of OpenGl_TextureBufferArb"
type
  Handle_OpenGl_TextureBufferArb* = handle[OpenGl_TextureBufferArb]
