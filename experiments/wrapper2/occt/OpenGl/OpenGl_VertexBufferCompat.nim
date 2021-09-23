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

import
  OpenGl_VertexBuffer

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
  OpenGl_VertexBufferCompat* {.importcpp: "OpenGl_VertexBufferCompat",
                              header: "OpenGl_VertexBufferCompat.hxx", bycopy.} = object of OpenGl_VertexBuffer ##
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
    ## !< buffer data


proc constructOpenGl_VertexBufferCompat*(): OpenGl_VertexBufferCompat {.
    constructor, importcpp: "OpenGl_VertexBufferCompat(@)",
    header: "OpenGl_VertexBufferCompat.hxx".}
proc destroyOpenGl_VertexBufferCompat*(this: var OpenGl_VertexBufferCompat) {.
    importcpp: "#.~OpenGl_VertexBufferCompat()",
    header: "OpenGl_VertexBufferCompat.hxx".}
proc IsVirtual*(this: OpenGl_VertexBufferCompat): bool {.noSideEffect,
    importcpp: "IsVirtual", header: "OpenGl_VertexBufferCompat.hxx".}
proc Create*(this: var OpenGl_VertexBufferCompat; theGlCtx: handle[OpenGl_Context]): bool {.
    importcpp: "Create", header: "OpenGl_VertexBufferCompat.hxx".}
proc Release*(this: var OpenGl_VertexBufferCompat; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_VertexBufferCompat.hxx".}
proc Bind*(this: OpenGl_VertexBufferCompat; theGlCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "Bind", header: "OpenGl_VertexBufferCompat.hxx".}
proc Unbind*(this: OpenGl_VertexBufferCompat; theGlCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "Unbind", header: "OpenGl_VertexBufferCompat.hxx".}
proc initLink*(this: var OpenGl_VertexBufferCompat;
              theData: handle[NCollection_Buffer]; theComponentsNb: GLuint;
              theElemsNb: GLsizei; theDataType: GLenum): bool {.
    importcpp: "initLink", header: "OpenGl_VertexBufferCompat.hxx".}
proc init*(this: var OpenGl_VertexBufferCompat; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.importcpp: "init",
    header: "OpenGl_VertexBufferCompat.hxx".}
proc subData*(this: var OpenGl_VertexBufferCompat; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.importcpp: "subData",
                                       header: "OpenGl_VertexBufferCompat.hxx".}
proc getSubData*(this: var OpenGl_VertexBufferCompat;
                theGlCtx: handle[OpenGl_Context]; theElemFrom: GLsizei;
                theElemsNb: GLsizei; theData: pointer; theDataType: GLenum): bool {.
    importcpp: "getSubData", header: "OpenGl_VertexBufferCompat.hxx".}
type
  OpenGl_VertexBufferCompatbase_type* = OpenGl_VertexBuffer

proc get_type_name*(): cstring {.importcpp: "OpenGl_VertexBufferCompat::get_type_name(@)",
                              header: "OpenGl_VertexBufferCompat.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_VertexBufferCompat::get_type_descriptor(@)",
    header: "OpenGl_VertexBufferCompat.hxx".}
proc DynamicType*(this: OpenGl_VertexBufferCompat): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_VertexBufferCompat.hxx".}
discard "forward decl of OpenGl_VertexBufferCompat"
type
  Handle_OpenGl_VertexBufferCompat* = handle[OpenGl_VertexBufferCompat]
