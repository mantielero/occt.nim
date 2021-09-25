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

proc constructOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver): OpenGlPrimitiveArray {.
    constructor, importcpp: "OpenGl_PrimitiveArray(@)",
    header: "OpenGl_PrimitiveArray.hxx".}
proc constructOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver;
                                   theType: Graphic3dTypeOfPrimitiveArray;
                                   theIndices: Handle[Graphic3dIndexBuffer];
                                   theAttribs: Handle[Graphic3dBuffer];
                                   theBounds: Handle[Graphic3dBoundBuffer]): OpenGlPrimitiveArray {.
    constructor, importcpp: "OpenGl_PrimitiveArray(@)",
    header: "OpenGl_PrimitiveArray.hxx".}
proc destroyOpenGlPrimitiveArray*(this: var OpenGlPrimitiveArray) {.
    importcpp: "#.~OpenGl_PrimitiveArray()", header: "OpenGl_PrimitiveArray.hxx".}
proc render*(this: OpenGlPrimitiveArray; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_PrimitiveArray.hxx".}
proc release*(this: var OpenGlPrimitiveArray; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_PrimitiveArray.hxx".}
proc estimatedDataSize*(this: OpenGlPrimitiveArray): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_PrimitiveArray.hxx".}
proc updateDrawStats*(this: OpenGlPrimitiveArray;
                     theStats: var Graphic3dFrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, importcpp: "UpdateDrawStats", header: "OpenGl_PrimitiveArray.hxx".}
proc isInitialized*(this: OpenGlPrimitiveArray): bool {.noSideEffect,
    importcpp: "IsInitialized", header: "OpenGl_PrimitiveArray.hxx".}
proc invalidate*(this: OpenGlPrimitiveArray) {.noSideEffect,
    importcpp: "Invalidate", header: "OpenGl_PrimitiveArray.hxx".}
proc drawMode*(this: OpenGlPrimitiveArray): GLint {.noSideEffect,
    importcpp: "DrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc isFillDrawMode*(this: OpenGlPrimitiveArray): bool {.noSideEffect,
    importcpp: "IsFillDrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc indices*(this: OpenGlPrimitiveArray): Handle[Graphic3dIndexBuffer] {.
    noSideEffect, importcpp: "Indices", header: "OpenGl_PrimitiveArray.hxx".}
proc attributes*(this: OpenGlPrimitiveArray): Handle[Graphic3dBuffer] {.
    noSideEffect, importcpp: "Attributes", header: "OpenGl_PrimitiveArray.hxx".}
proc bounds*(this: OpenGlPrimitiveArray): Handle[Graphic3dBoundBuffer] {.
    noSideEffect, importcpp: "Bounds", header: "OpenGl_PrimitiveArray.hxx".}
proc getUID*(this: OpenGlPrimitiveArray): StandardSize {.noSideEffect,
    importcpp: "GetUID", header: "OpenGl_PrimitiveArray.hxx".}
proc initBuffers*(this: var OpenGlPrimitiveArray; theContext: Handle[OpenGlContext];
                 theType: Graphic3dTypeOfPrimitiveArray;
                 theIndices: Handle[Graphic3dIndexBuffer];
                 theAttribs: Handle[Graphic3dBuffer];
                 theBounds: Handle[Graphic3dBoundBuffer]) {.
    importcpp: "InitBuffers", header: "OpenGl_PrimitiveArray.hxx".}
proc indexVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, importcpp: "IndexVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc attributesVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, importcpp: "AttributesVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc dumpJson*(this: OpenGlPrimitiveArray; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "OpenGl_PrimitiveArray.hxx".}
