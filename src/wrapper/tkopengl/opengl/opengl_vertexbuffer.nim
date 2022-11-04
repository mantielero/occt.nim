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

type
  OpenGlVertexBuffer* {.importcpp: "OpenGl_VertexBuffer",
                       header: "OpenGl_VertexBuffer.hxx", bycopy.} = object of OpenGlResource ##
                                                                                       ## !
                                                                                       ## Helpful
                                                                                       ## constants
                                                                                       ##
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
                                                                                       ## Returns
                                                                                       ## estimated
                                                                                       ## GPU
                                                                                       ## memory
                                                                                       ## usage
                                                                                       ## for
                                                                                       ## holding
                                                                                       ## data
                                                                                       ## without
                                                                                       ## considering
                                                                                       ## overheads
                                                                                       ## and
                                                                                       ## allocation
                                                                                       ## alignment
                                                                                       ## rules.
                                                                                       ##
                                                                                       ## #if
                                                                                       ## !defined(GL_ES_VERSION_2_0)
                                                                                       ##
                                                                                       ## !
                                                                                       ## Setup
                                                                                       ## FFP
                                                                                       ## array
                                                                                       ## pointer.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @name
                                                                                       ## methods
                                                                                       ## for
                                                                                       ## interleaved
                                                                                       ## attributes
                                                                                       ## array
                                                                                       ##
                                                                                       ## !
                                                                                       ## @return
                                                                                       ## true
                                                                                       ## if
                                                                                       ## buffer
                                                                                       ## contains
                                                                                       ## per-vertex
                                                                                       ## color
                                                                                       ## attribute
                                                                                       ##
                                                                                       ## Type
                                                                                       ## definition
    ## !< offset to data
    ## !< VBO name (index)
    ## !< Number of components per generic vertex attribute, must be 1, 2, 3, or 4
    ## !< Number of vertex attributes / number of vertices
    ## !< Data type (GL_FLOAT, GL_UNSIGNED_INT, GL_UNSIGNED_BYTE etc.)


proc newOpenGlVertexBuffer*(): OpenGlVertexBuffer {.cdecl, constructor,
    importcpp: "OpenGl_VertexBuffer(@)", dynlib: tkkxbase.}
proc destroyOpenGlVertexBuffer*(this: var OpenGlVertexBuffer) {.cdecl,
    importcpp: "#.~OpenGl_VertexBuffer()", dynlib: tkkxbase.}
proc getTarget*(this: OpenGlVertexBuffer): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", dynlib: tkkxbase.}
proc isVirtual*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsVirtual", dynlib: tkkxbase.}
proc isValid*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkkxbase.}
proc getComponentsNb*(this: OpenGlVertexBuffer): GLuint {.noSideEffect, cdecl,
    importcpp: "GetComponentsNb", dynlib: tkkxbase.}
proc getElemsNb*(this: OpenGlVertexBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetElemsNb", dynlib: tkkxbase.}
proc setElemsNb*(this: var OpenGlVertexBuffer; theNbElems: GLsizei) {.cdecl,
    importcpp: "SetElemsNb", dynlib: tkkxbase.}
proc getDataType*(this: OpenGlVertexBuffer): GLenum {.noSideEffect, cdecl,
    importcpp: "GetDataType", dynlib: tkkxbase.}
proc getDataOffset*(this: OpenGlVertexBuffer): ptr GLubyte {.noSideEffect, cdecl,
    importcpp: "GetDataOffset", dynlib: tkkxbase.}
proc create*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "Create", dynlib: tkkxbase.}
proc release*(this: var OpenGlVertexBuffer; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc `bind`*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "Unbind", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "SubData", dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    cdecl, importcpp: "GetSubData", dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "SubData", dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    cdecl, importcpp: "GetSubData", dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "SubData", dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    cdecl, importcpp: "GetSubData", dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "SubData", dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    cdecl, importcpp: "GetSubData", dynlib: tkkxbase.}
proc bindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                      theAttribLoc: GLuint) {.noSideEffect, cdecl,
    importcpp: "BindVertexAttrib", dynlib: tkkxbase.}
proc unbindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                        theAttribLoc: GLuint) {.noSideEffect, cdecl,
    importcpp: "UnbindVertexAttrib", dynlib: tkkxbase.}
proc bindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute) {.noSideEffect, cdecl,
    importcpp: "BindAttribute", dynlib: tkkxbase.}
proc unbindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.noSideEffect, cdecl,
    importcpp: "UnbindAttribute", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlVertexBuffer): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc sizeOfGlType*(theType: GLenum): csize_t {.cdecl,
    importcpp: "OpenGl_VertexBuffer::sizeOfGlType(@)", dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.cdecl, importcpp: "init",
    dynlib: tkkxbase.}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum): bool {.cdecl, importcpp: "init", dynlib: tkkxbase.}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.cdecl, importcpp: "subData",
                                       dynlib: tkkxbase.}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
                theDataType: GLenum): bool {.cdecl, importcpp: "getSubData",
    dynlib: tkkxbase.}
proc bindAttribute*(theGlCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute; theNbComp: GLint;
                   theDataType: GLenum; theStride: GLsizei; theOffset: ptr GLvoid) {.
    cdecl, importcpp: "OpenGl_VertexBuffer::bindAttribute(@)", dynlib: tkkxbase.}
proc unbindAttribute*(theGlCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.cdecl,
    importcpp: "OpenGl_VertexBuffer::unbindAttribute(@)", dynlib: tkkxbase.}
proc hasColorAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasColorAttribute", dynlib: tkkxbase.}
proc hasNormalAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasNormalAttribute", dynlib: tkkxbase.}
proc bindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "BindAllAttributes", dynlib: tkkxbase.}
proc bindPositionAttribute*(this: OpenGlVertexBuffer;
                           theGlCtx: Handle[OpenGlContext]) {.noSideEffect, cdecl,
    importcpp: "BindPositionAttribute", dynlib: tkkxbase.}
proc unbindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, cdecl, importcpp: "UnbindAllAttributes", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlVertexBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}
type
  HandleOpenGlVertexBuffer* = Handle[OpenGlVertexBuffer]
