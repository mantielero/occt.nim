import opengl_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types

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

## ! Vertex Buffer Object - is a general storage object for vertex attributes (position, normal, color).
## ! Notice that you should use OpenGl_IndexBuffer specialization for array of indices.



proc newOpenGlVertexBuffer*(): OpenGlVertexBuffer {.cdecl, constructor,
    importcpp: "OpenGl_VertexBuffer(@)", header: "OpenGl_VertexBuffer.hxx".}
proc destroyOpenGlVertexBuffer*(this: var OpenGlVertexBuffer) {.cdecl,
    importcpp: "#.~OpenGl_VertexBuffer()", header: "OpenGl_VertexBuffer.hxx".}
proc getTarget*(this: OpenGlVertexBuffer): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", header: "OpenGl_VertexBuffer.hxx".}
proc isVirtual*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsVirtual", header: "OpenGl_VertexBuffer.hxx".}
proc isValid*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "OpenGl_VertexBuffer.hxx".}
proc getComponentsNb*(this: OpenGlVertexBuffer): GLuint {.noSideEffect, cdecl,
    importcpp: "GetComponentsNb", header: "OpenGl_VertexBuffer.hxx".}
proc getElemsNb*(this: OpenGlVertexBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc setElemsNb*(this: var OpenGlVertexBuffer; theNbElems: GLsizei) {.cdecl,
    importcpp: "SetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc getDataType*(this: OpenGlVertexBuffer): GLenum {.noSideEffect, cdecl,
    importcpp: "GetDataType", header: "OpenGl_VertexBuffer.hxx".}
proc getDataOffset*(this: OpenGlVertexBuffer): ptr GLubyte {.noSideEffect, cdecl,
    importcpp: "GetDataOffset", header: "OpenGl_VertexBuffer.hxx".}
proc create*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", header: "OpenGl_VertexBuffer.hxx".}
proc release*(this: var OpenGlVertexBuffer; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_VertexBuffer.hxx".}
proc `bind`*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Bind", header: "OpenGl_VertexBuffer.hxx".}
proc unbind*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Unbind", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc bindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                      theAttribLoc: GLuint) {.noSideEffect, cdecl,
    importcpp: "BindVertexAttrib", header: "OpenGl_VertexBuffer.hxx".}
proc unbindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                        theAttribLoc: GLuint) {.noSideEffect, cdecl,
    importcpp: "UnbindVertexAttrib", header: "OpenGl_VertexBuffer.hxx".}
proc bindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute) {.noSideEffect, cdecl,
    importcpp: "BindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc unbindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.noSideEffect, cdecl,
    importcpp: "UnbindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc estimatedDataSize*(this: OpenGlVertexBuffer): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_VertexBuffer.hxx".}
proc sizeOfGlType*(theType: GLenum): csize_t {.cdecl,
    importcpp: "OpenGl_VertexBuffer::sizeOfGlType(@)", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.cdecl, importcpp: "init",
    header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum): bool {.cdecl, importcpp: "init", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.cdecl, importcpp: "subData",
                                       header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
                theDataType: GLenum): bool {.cdecl, importcpp: "getSubData",
    header: "OpenGl_VertexBuffer.hxx".}
proc bindAttribute*(theGlCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute; theNbComp: GLint;
                   theDataType: GLenum; theStride: GLsizei; theOffset: ptr GLvoid) {.
    cdecl, importcpp: "OpenGl_VertexBuffer::bindAttribute(@)", header: "OpenGl_VertexBuffer.hxx".}
proc unbindAttribute*(theGlCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.cdecl,
    importcpp: "OpenGl_VertexBuffer::unbindAttribute(@)", header: "OpenGl_VertexBuffer.hxx".}
proc hasColorAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasColorAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc hasNormalAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasNormalAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc bindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "BindAllAttributes", header: "OpenGl_VertexBuffer.hxx".}
proc bindPositionAttribute*(this: OpenGlVertexBuffer;
                           theGlCtx: Handle[OpenGlContext]) {.noSideEffect, cdecl,
    importcpp: "BindPositionAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc unbindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "UnbindAllAttributes", header: "OpenGl_VertexBuffer.hxx".}
proc dumpJson*(this: OpenGlVertexBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_VertexBuffer.hxx".}

