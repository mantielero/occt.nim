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
    ## !< offset to data
    ## !< VBO name (index)
    ## !< Number of components per generic vertex attribute, must be 1, 2, 3, or 4
    ## !< Number of vertex attributes / number of vertices
    ## !< Data type (GL_FLOAT, GL_UNSIGNED_INT, GL_UNSIGNED_BYTE etc.)


proc constructOpenGlVertexBuffer*(): OpenGlVertexBuffer {.constructor,
    importcpp: "OpenGl_VertexBuffer(@)", header: "OpenGl_VertexBuffer.hxx".}
proc destroyOpenGlVertexBuffer*(this: var OpenGlVertexBuffer) {.
    importcpp: "#.~OpenGl_VertexBuffer()", header: "OpenGl_VertexBuffer.hxx".}
proc getTarget*(this: OpenGlVertexBuffer): GLenum {.noSideEffect,
    importcpp: "GetTarget", header: "OpenGl_VertexBuffer.hxx".}
proc isVirtual*(this: OpenGlVertexBuffer): bool {.noSideEffect,
    importcpp: "IsVirtual", header: "OpenGl_VertexBuffer.hxx".}
proc isValid*(this: OpenGlVertexBuffer): bool {.noSideEffect, importcpp: "IsValid",
    header: "OpenGl_VertexBuffer.hxx".}
proc getComponentsNb*(this: OpenGlVertexBuffer): GLuint {.noSideEffect,
    importcpp: "GetComponentsNb", header: "OpenGl_VertexBuffer.hxx".}
proc getElemsNb*(this: OpenGlVertexBuffer): GLsizei {.noSideEffect,
    importcpp: "GetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc setElemsNb*(this: var OpenGlVertexBuffer; theNbElems: GLsizei) {.
    importcpp: "SetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc getDataType*(this: OpenGlVertexBuffer): GLenum {.noSideEffect,
    importcpp: "GetDataType", header: "OpenGl_VertexBuffer.hxx".}
proc getDataOffset*(this: OpenGlVertexBuffer): ptr GLubyte {.noSideEffect,
    importcpp: "GetDataOffset", header: "OpenGl_VertexBuffer.hxx".}
proc create*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]): bool {.
    importcpp: "Create", header: "OpenGl_VertexBuffer.hxx".}
proc release*(this: var OpenGlVertexBuffer; theGlCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_VertexBuffer.hxx".}
proc `bind`*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, importcpp: "Bind", header: "OpenGl_VertexBuffer.hxx".}
proc unbind*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, importcpp: "Unbind", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc bindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                      theAttribLoc: GLuint) {.noSideEffect,
    importcpp: "BindVertexAttrib", header: "OpenGl_VertexBuffer.hxx".}
proc unbindVertexAttrib*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                        theAttribLoc: GLuint) {.noSideEffect,
    importcpp: "UnbindVertexAttrib", header: "OpenGl_VertexBuffer.hxx".}
proc bindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute) {.noSideEffect,
    importcpp: "BindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc unbindAttribute*(this: OpenGlVertexBuffer; theCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.noSideEffect,
    importcpp: "UnbindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc estimatedDataSize*(this: OpenGlVertexBuffer): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_VertexBuffer.hxx".}
proc sizeOfGlType*(theType: GLenum): csize_t {.
    importcpp: "OpenGl_VertexBuffer::sizeOfGlType(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.importcpp: "init",
    header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum): bool {.importcpp: "init",
                                    header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.importcpp: "subData",
                                       header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
                theDataType: GLenum): bool {.importcpp: "getSubData",
    header: "OpenGl_VertexBuffer.hxx".}
proc bindAttribute*(theGlCtx: Handle[OpenGlContext];
                   theMode: Graphic3dTypeOfAttribute; theNbComp: GLint;
                   theDataType: GLenum; theStride: GLsizei; theOffset: ptr GLvoid) {.
    importcpp: "OpenGl_VertexBuffer::bindAttribute(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc unbindAttribute*(theGlCtx: Handle[OpenGlContext];
                     theMode: Graphic3dTypeOfAttribute) {.
    importcpp: "OpenGl_VertexBuffer::unbindAttribute(@)",
    header: "OpenGl_VertexBuffer.hxx".}
## !!!Ignored construct:  private : # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] ! Setup FFP array pointer. static void bindFixed ( const opencascade :: handle < OpenGl_Context > [end of template] & theGlCtx , const Graphic3d_TypeOfAttribute theMode , const GLint theNbComp , const GLenum theDataType , const GLsizei theStride , const GLvoid * theOffset ) ;
## Error: identifier expected, but got: ! Setup FFP array pointer.!!!

proc hasColorAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect,
    importcpp: "HasColorAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc hasNormalAttribute*(this: OpenGlVertexBuffer): bool {.noSideEffect,
    importcpp: "HasNormalAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc bindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, importcpp: "BindAllAttributes", header: "OpenGl_VertexBuffer.hxx".}
proc bindPositionAttribute*(this: OpenGlVertexBuffer;
                           theGlCtx: Handle[OpenGlContext]) {.noSideEffect,
    importcpp: "BindPositionAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc unbindAllAttributes*(this: OpenGlVertexBuffer; theGlCtx: Handle[OpenGlContext]) {.
    noSideEffect, importcpp: "UnbindAllAttributes",
    header: "OpenGl_VertexBuffer.hxx".}
proc dumpJson*(this: OpenGlVertexBuffer; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "OpenGl_VertexBuffer.hxx".}
type
  OpenGlVertexBufferbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_VertexBuffer::get_type_name(@)",
                            header: "OpenGl_VertexBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_VertexBuffer::get_type_descriptor(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc dynamicType*(this: OpenGlVertexBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_VertexBuffer.hxx".}
discard "forward decl of OpenGl_VertexBuffer"
type
  HandleOpenGlVertexBuffer* = Handle[OpenGlVertexBuffer]

