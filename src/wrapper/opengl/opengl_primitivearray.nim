import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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



const
  OpenGlPrimitiveArrayDRAW_MODE_NONE* = -1

proc newOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver): OpenGlPrimitiveArray {.
    cdecl, constructor, importcpp: "OpenGl_PrimitiveArray(@)", header: "OpenGl_PrimitiveArray.hxx".}
proc newOpenGlPrimitiveArray*(theDriver: ptr OpenGlGraphicDriver;
                             theType: Graphic3dTypeOfPrimitiveArray;
                             theIndices: Handle[Graphic3dIndexBuffer];
                             theAttribs: Handle[Graphic3dBuffer];
                             theBounds: Handle[Graphic3dBoundBuffer]): OpenGlPrimitiveArray {.
    cdecl, constructor, importcpp: "OpenGl_PrimitiveArray(@)", header: "OpenGl_PrimitiveArray.hxx".}
proc destroyOpenGlPrimitiveArray*(this: var OpenGlPrimitiveArray) {.cdecl,
    importcpp: "#.~OpenGl_PrimitiveArray()", header: "OpenGl_PrimitiveArray.hxx".}
proc render*(this: OpenGlPrimitiveArray; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_PrimitiveArray.hxx".}
proc release*(this: var OpenGlPrimitiveArray; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_PrimitiveArray.hxx".}
proc estimatedDataSize*(this: OpenGlPrimitiveArray): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_PrimitiveArray.hxx".}
proc updateDrawStats*(this: OpenGlPrimitiveArray;
                     theStats: var Graphic3dFrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, cdecl, importcpp: "UpdateDrawStats", header: "OpenGl_PrimitiveArray.hxx".}
proc isInitialized*(this: OpenGlPrimitiveArray): bool {.noSideEffect, cdecl,
    importcpp: "IsInitialized", header: "OpenGl_PrimitiveArray.hxx".}
proc invalidate*(this: OpenGlPrimitiveArray) {.noSideEffect, cdecl,
    importcpp: "Invalidate", header: "OpenGl_PrimitiveArray.hxx".}
proc drawMode*(this: OpenGlPrimitiveArray): GLint {.noSideEffect, cdecl,
    importcpp: "DrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc isFillDrawMode*(this: OpenGlPrimitiveArray): bool {.noSideEffect, cdecl,
    importcpp: "IsFillDrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc indices*(this: OpenGlPrimitiveArray): Handle[Graphic3dIndexBuffer] {.
    noSideEffect, cdecl, importcpp: "Indices", header: "OpenGl_PrimitiveArray.hxx".}
proc attributes*(this: OpenGlPrimitiveArray): Handle[Graphic3dBuffer] {.
    noSideEffect, cdecl, importcpp: "Attributes", header: "OpenGl_PrimitiveArray.hxx".}
proc bounds*(this: OpenGlPrimitiveArray): Handle[Graphic3dBoundBuffer] {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "OpenGl_PrimitiveArray.hxx".}
proc getUID*(this: OpenGlPrimitiveArray): csize_t {.noSideEffect, cdecl,
    importcpp: "GetUID", header: "OpenGl_PrimitiveArray.hxx".}
proc initBuffers*(this: var OpenGlPrimitiveArray; theContext: Handle[OpenGlContext];
                 theType: Graphic3dTypeOfPrimitiveArray;
                 theIndices: Handle[Graphic3dIndexBuffer];
                 theAttribs: Handle[Graphic3dBuffer];
                 theBounds: Handle[Graphic3dBoundBuffer]) {.cdecl,
    importcpp: "InitBuffers", header: "OpenGl_PrimitiveArray.hxx".}
proc indexVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "IndexVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc attributesVbo*(this: OpenGlPrimitiveArray): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "AttributesVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc dumpJson*(this: OpenGlPrimitiveArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_PrimitiveArray.hxx".}

