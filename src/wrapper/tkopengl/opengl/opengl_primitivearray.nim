##  Created on: 2011-07-13
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_GraphicDriver"
type
  OpenGlPrimitiveArray* {.importcpp: "OpenGl_PrimitiveArray",
                         header: "OpenGl_PrimitiveArray.hxx", bycopy.} = object of OpenGlElement ##
                                                                                          ## !
                                                                                          ## OpenGL
                                                                                          ## does
                                                                                          ## not
                                                                                          ## provide
                                                                                          ## a
                                                                                          ## constant
                                                                                          ## for
                                                                                          ## "none"
                                                                                          ## draw
                                                                                          ## mode.
                                                                                          ##
                                                                                          ## !
                                                                                          ## So
                                                                                          ## we
                                                                                          ## define
                                                                                          ## our
                                                                                          ## own
                                                                                          ## one
                                                                                          ## that
                                                                                          ## does
                                                                                          ## not
                                                                                          ## conflict
                                                                                          ## with
                                                                                          ## GL
                                                                                          ## constants
                                                                                          ## and
                                                                                          ## utilizes
                                                                                          ## common
                                                                                          ## GL
                                                                                          ## invalid
                                                                                          ## value.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## index
                                                                                          ## VBO.
                                                                                          ##
                                                                                          ## !
                                                                                          ## VBO
                                                                                          ## initialization
                                                                                          ## procedures
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theCtx
                                                                                          ## bound
                                                                                          ## GL
                                                                                          ## context
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theToKeepData
                                                                                          ## when
                                                                                          ## true,
                                                                                          ## myAttribs
                                                                                          ## will
                                                                                          ## not
                                                                                          ## be
                                                                                          ## nullified
                                                                                          ## after
                                                                                          ## VBO
                                                                                          ## creation
                                                                                          ##
                                                                                          ## !
                                                                                          ## Initialize
                                                                                          ## normal
                                                                                          ## (OpenGL-provided)
                                                                                          ## VBO
    ## !< Unique ID of primitive array.


const
  OpenGlPrimitiveArrayDRAW_MODE_NONE* = -1

proc newOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver): OpenGlPrimitiveArray {.
    cdecl, constructor, importcpp: "OpenGl_PrimitiveArray(@)", dynlib: tkkxbase.}
proc newOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver;
                             theType: Graphic3dTypeOfPrimitiveArray;
                             theIndices: Handle[Graphic3dIndexBuffer];
                             theAttribs: Handle[Graphic3dBuffer];
                             theBounds: Handle[Graphic3dBoundBuffer]): OpenGlPrimitiveArray {.
    cdecl, constructor, importcpp: "OpenGl_PrimitiveArray(@)", dynlib: tkkxbase.}
proc destroyOpenGlPrimitiveArray*(this: var OpenGlPrimitiveArray) {.cdecl,
    importcpp: "#.~OpenGl_PrimitiveArray()", dynlib: tkkxbase.}
proc render*(this: OpenGlPrimitiveArray; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlPrimitiveArray; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlPrimitiveArray): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc updateDrawStats*(this: OpenGlPrimitiveArray;
                     theStats: var Graphic3dFrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, cdecl, importcpp: "UpdateDrawStats", dynlib: tkkxbase.}
proc isInitialized*(this: OpenGlPrimitiveArray): bool {.noSideEffect, cdecl,
    importcpp: "IsInitialized", dynlib: tkkxbase.}
proc invalidate*(this: OpenGlPrimitiveArray) {.noSideEffect, cdecl,
    importcpp: "Invalidate", dynlib: tkkxbase.}
proc drawMode*(this: OpenGlPrimitiveArray): GLint {.noSideEffect, cdecl,
    importcpp: "DrawMode", dynlib: tkkxbase.}
proc isFillDrawMode*(this: OpenGlPrimitiveArray): bool {.noSideEffect, cdecl,
    importcpp: "IsFillDrawMode", dynlib: tkkxbase.}
proc indices*(this: OpenGlPrimitiveArray): Handle[Graphic3dIndexBuffer] {.
    noSideEffect, cdecl, importcpp: "Indices", dynlib: tkkxbase.}
proc attributes*(this: OpenGlPrimitiveArray): Handle[Graphic3dBuffer] {.
    noSideEffect, cdecl, importcpp: "Attributes", dynlib: tkkxbase.}
proc bounds*(this: OpenGlPrimitiveArray): Handle[Graphic3dBoundBuffer] {.
    noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkkxbase.}
proc getUID*(this: OpenGlPrimitiveArray): csize_t {.noSideEffect, cdecl,
    importcpp: "GetUID", dynlib: tkkxbase.}
proc initBuffers*(this: var OpenGlPrimitiveArray; theContext: Handle[OpenGlContext];
                 theType: Graphic3dTypeOfPrimitiveArray;
                 theIndices: Handle[Graphic3dIndexBuffer];
                 theAttribs: Handle[Graphic3dBuffer];
                 theBounds: Handle[Graphic3dBoundBuffer]) {.cdecl,
    importcpp: "InitBuffers", dynlib: tkkxbase.}
proc indexVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "IndexVbo", dynlib: tkkxbase.}
proc attributesVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "AttributesVbo", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlPrimitiveArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}