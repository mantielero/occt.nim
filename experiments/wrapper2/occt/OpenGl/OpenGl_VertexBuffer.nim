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
  OpenGl_GlCore20, OpenGl_Resource, OpenGl_Context, OpenGl_ShaderProgram,
  ../Graphic3d/Graphic3d_IndexBuffer

## ! Vertex Buffer Object - is a general storage object for vertex attributes (position, normal, color).
## ! Notice that you should use OpenGl_IndexBuffer specialization for array of indices.

type
  OpenGl_VertexBuffer* {.importcpp: "OpenGl_VertexBuffer",
                        header: "OpenGl_VertexBuffer.hxx", bycopy.} = object of OpenGl_Resource ##
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


proc constructOpenGl_VertexBuffer*(): OpenGl_VertexBuffer {.constructor,
    importcpp: "OpenGl_VertexBuffer(@)", header: "OpenGl_VertexBuffer.hxx".}
proc destroyOpenGl_VertexBuffer*(this: var OpenGl_VertexBuffer) {.
    importcpp: "#.~OpenGl_VertexBuffer()", header: "OpenGl_VertexBuffer.hxx".}
proc GetTarget*(this: OpenGl_VertexBuffer): GLenum {.noSideEffect,
    importcpp: "GetTarget", header: "OpenGl_VertexBuffer.hxx".}
proc IsVirtual*(this: OpenGl_VertexBuffer): bool {.noSideEffect,
    importcpp: "IsVirtual", header: "OpenGl_VertexBuffer.hxx".}
proc IsValid*(this: OpenGl_VertexBuffer): bool {.noSideEffect, importcpp: "IsValid",
    header: "OpenGl_VertexBuffer.hxx".}
proc GetComponentsNb*(this: OpenGl_VertexBuffer): GLuint {.noSideEffect,
    importcpp: "GetComponentsNb", header: "OpenGl_VertexBuffer.hxx".}
proc GetElemsNb*(this: OpenGl_VertexBuffer): GLsizei {.noSideEffect,
    importcpp: "GetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc SetElemsNb*(this: var OpenGl_VertexBuffer; theNbElems: GLsizei) {.
    importcpp: "SetElemsNb", header: "OpenGl_VertexBuffer.hxx".}
proc GetDataType*(this: OpenGl_VertexBuffer): GLenum {.noSideEffect,
    importcpp: "GetDataType", header: "OpenGl_VertexBuffer.hxx".}
proc GetDataOffset*(this: OpenGl_VertexBuffer): ptr GLubyte {.noSideEffect,
    importcpp: "GetDataOffset", header: "OpenGl_VertexBuffer.hxx".}
proc Create*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context]): bool {.
    importcpp: "Create", header: "OpenGl_VertexBuffer.hxx".}
proc Release*(this: var OpenGl_VertexBuffer; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_VertexBuffer.hxx".}
proc Bind*(this: OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "Bind", header: "OpenGl_VertexBuffer.hxx".}
proc Unbind*(this: OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "Unbind", header: "OpenGl_VertexBuffer.hxx".}
proc Init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc Init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc Init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc Init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "Init", header: "OpenGl_VertexBuffer.hxx".}
proc SubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc GetSubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLfloat): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc SubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc GetSubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLuint): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc SubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc GetSubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLushort): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc SubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "SubData", header: "OpenGl_VertexBuffer.hxx".}
proc GetSubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: ptr GLubyte): bool {.
    importcpp: "GetSubData", header: "OpenGl_VertexBuffer.hxx".}
proc BindVertexAttrib*(this: OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                      theAttribLoc: GLuint) {.noSideEffect,
    importcpp: "BindVertexAttrib", header: "OpenGl_VertexBuffer.hxx".}
proc UnbindVertexAttrib*(this: OpenGl_VertexBuffer;
                        theGlCtx: handle[OpenGl_Context]; theAttribLoc: GLuint) {.
    noSideEffect, importcpp: "UnbindVertexAttrib",
    header: "OpenGl_VertexBuffer.hxx".}
proc BindAttribute*(this: OpenGl_VertexBuffer; theCtx: handle[OpenGl_Context];
                   theMode: Graphic3d_TypeOfAttribute) {.noSideEffect,
    importcpp: "BindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc UnbindAttribute*(this: OpenGl_VertexBuffer; theCtx: handle[OpenGl_Context];
                     theMode: Graphic3d_TypeOfAttribute) {.noSideEffect,
    importcpp: "UnbindAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc EstimatedDataSize*(this: OpenGl_VertexBuffer): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_VertexBuffer.hxx".}
proc sizeOfGlType*(theType: GLenum): csize_t {.
    importcpp: "OpenGl_VertexBuffer::sizeOfGlType(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum; theStride: GLsizei): bool {.importcpp: "init",
    header: "OpenGl_VertexBuffer.hxx".}
proc init*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
          theComponentsNb: GLuint; theElemsNb: GLsizei; theData: pointer;
          theDataType: GLenum): bool {.importcpp: "init",
                                    header: "OpenGl_VertexBuffer.hxx".}
proc subData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
             theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
             theDataType: GLenum): bool {.importcpp: "subData",
                                       header: "OpenGl_VertexBuffer.hxx".}
proc getSubData*(this: var OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context];
                theElemFrom: GLsizei; theElemsNb: GLsizei; theData: pointer;
                theDataType: GLenum): bool {.importcpp: "getSubData",
    header: "OpenGl_VertexBuffer.hxx".}
proc bindAttribute*(theGlCtx: handle[OpenGl_Context];
                   theMode: Graphic3d_TypeOfAttribute; theNbComp: GLint;
                   theDataType: GLenum; theStride: GLsizei; theOffset: ptr GLvoid) {.
    importcpp: "OpenGl_VertexBuffer::bindAttribute(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc unbindAttribute*(theGlCtx: handle[OpenGl_Context];
                     theMode: Graphic3d_TypeOfAttribute) {.
    importcpp: "OpenGl_VertexBuffer::unbindAttribute(@)",
    header: "OpenGl_VertexBuffer.hxx".}
## !!!Ignored construct:  private : # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] ! Setup FFP array pointer. static void bindFixed ( const opencascade :: handle < OpenGl_Context > [end of template] & theGlCtx , const Graphic3d_TypeOfAttribute theMode , const GLint theNbComp , const GLenum theDataType , const GLsizei theStride , const GLvoid * theOffset ) ;
## Error: identifier expected, but got: ! Setup FFP array pointer.!!!

proc HasColorAttribute*(this: OpenGl_VertexBuffer): bool {.noSideEffect,
    importcpp: "HasColorAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc HasNormalAttribute*(this: OpenGl_VertexBuffer): bool {.noSideEffect,
    importcpp: "HasNormalAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc BindAllAttributes*(this: OpenGl_VertexBuffer; theGlCtx: handle[OpenGl_Context]) {.
    noSideEffect, importcpp: "BindAllAttributes", header: "OpenGl_VertexBuffer.hxx".}
proc BindPositionAttribute*(this: OpenGl_VertexBuffer;
                           theGlCtx: handle[OpenGl_Context]) {.noSideEffect,
    importcpp: "BindPositionAttribute", header: "OpenGl_VertexBuffer.hxx".}
proc UnbindAllAttributes*(this: OpenGl_VertexBuffer;
                         theGlCtx: handle[OpenGl_Context]) {.noSideEffect,
    importcpp: "UnbindAllAttributes", header: "OpenGl_VertexBuffer.hxx".}
proc DumpJson*(this: OpenGl_VertexBuffer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_VertexBuffer.hxx".}
type
  OpenGl_VertexBufferbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_VertexBuffer::get_type_name(@)",
                              header: "OpenGl_VertexBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_VertexBuffer::get_type_descriptor(@)",
    header: "OpenGl_VertexBuffer.hxx".}
proc DynamicType*(this: OpenGl_VertexBuffer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_VertexBuffer.hxx".}
discard "forward decl of OpenGl_VertexBuffer"
type
  Handle_OpenGl_VertexBuffer* = handle[OpenGl_VertexBuffer]
