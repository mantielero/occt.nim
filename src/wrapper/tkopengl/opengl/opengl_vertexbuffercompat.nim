##  Created by: Kirill GAVRILOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Compatibility layer for old OpenGL without VBO.
## ! Make sure to pass pointer from GetDataOffset() instead of NULL.
## ! Method GetDataOffset() returns pointer to real data in this class
## ! (while base class OpenGl_VertexBuffer always return NULL).
## !
## ! Methods Bind()/Unbind() do nothing (do not affect OpenGL state)
## ! and ::GetTarget() is never used.
## ! For this reason there is no analog for OpenGl_IndexBuffer.
## ! Just pass GetDataOffset() to glDrawElements() directly as last argument.
## !
## ! Class overrides methods init() and subData() to copy data into own memory buffer.
## ! Extra method initLink() might be used to pass existing buffer through handle without copying the data.
## !
## ! Method Create() creates dummy identifier for this object which should NOT be passed to OpenGL functions.

type
  OpenGlVertexBufferCompat* {.importcpp: "OpenGl_VertexBufferCompat",
                             header: "OpenGl_VertexBufferCompat.hxx", bycopy.} = object of OpenGlVertexBuffer ##
                                                                                                       ## !
                                                                                                       ## Create
                                                                                                       ## uninitialized
                                                                                                       ## VBO.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @name
                                                                                                       ## advanced
                                                                                                       ## methods
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Initialize
                                                                                                       ## buffer
                                                                                                       ## with
                                                                                                       ## existing
                                                                                                       ## data.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Data
                                                                                                       ## will
                                                                                                       ## NOT
                                                                                                       ## be
                                                                                                       ## copied
                                                                                                       ## by
                                                                                                       ## this
                                                                                                       ## method!
                                                                                                       ##
                                                                                                       ## Type
                                                                                                       ## definition
    ## !< buffer data


proc newOpenGlVertexBufferCompat*(): OpenGlVertexBufferCompat {.cdecl, constructor,
    importcpp: "OpenGl_VertexBufferCompat(@)", dynlib: tkkxbase.}
proc destroyOpenGlVertexBufferCompat*(this: var OpenGlVertexBufferCompat) {.cdecl,
    importcpp: "#.~OpenGl_VertexBufferCompat()", dynlib: tkkxbase.}
proc isVirtual*(this: OpenGlVertexBufferCompat): bool {.noSideEffect, cdecl,
    importcpp: "IsVirtual", dynlib: tkkxbase.}
proc create*(this: var OpenGlVertexBufferCompat; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", dynlib: tkkxbase.}
proc release*(this: var OpenGlVertexBufferCompat; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc `bind`*(this: OpenGlVertexBufferCompat; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: OpenGlVertexBufferCompat; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Unbind", dynlib: tkkxbase.}
proc initLink*(this: var OpenGlVertexBufferCompat;
              theData: Handle[NCollectionBuffer]; theComponentsNb: GLuint;
              theElemsNb: GLsizei; theDataType: GLenum): bool {.cdecl,
    importcpp: "initLink", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBufferCompat; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.cdecl, importcpp: "init",
    dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBufferCompat; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.cdecl, importcpp: "subData",
                                       dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBufferCompat;
                theGlCtx: Handle[OpenGlContext]; theElemFrom: GLsizei;
                theElemsNb: GLsizei; theData: pointer; theDataType: GLenum): bool {.
    cdecl, importcpp: "getSubData", dynlib: tkkxbase.}
type
  HandleOpenGlVertexBufferCompat* = Handle[OpenGlVertexBufferCompat]
