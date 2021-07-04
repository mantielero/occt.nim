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

import
  OpenGl_IndexBuffer, ../Aspect/Aspect_InteriorStyle,
  ../Aspect/Aspect_TypeOfMarker, ../Graphic3d/Graphic3d_TypeOfPrimitiveArray,
  ../Graphic3d/Graphic3d_IndexBuffer, ../Graphic3d/Graphic3d_BoundBuffer,
  OpenGl_Element

discard "forward decl of OpenGl_GraphicDriver"
type
  OpenGl_PrimitiveArray* {.importcpp: "OpenGl_PrimitiveArray",
                          header: "OpenGl_PrimitiveArray.hxx", bycopy.} = object of OpenGl_Element ##
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
  OpenGl_PrimitiveArrayDRAW_MODE_NONE* = -1

proc constructOpenGl_PrimitiveArray*(theDriver: ptr OpenGl_GraphicDriver): OpenGl_PrimitiveArray {.
    constructor, importcpp: "OpenGl_PrimitiveArray(@)",
    header: "OpenGl_PrimitiveArray.hxx".}
proc constructOpenGl_PrimitiveArray*(theDriver: ptr OpenGl_GraphicDriver;
                                    theType: Graphic3d_TypeOfPrimitiveArray;
                                    theIndices: handle[Graphic3d_IndexBuffer];
                                    theAttribs: handle[Graphic3d_Buffer];
                                    theBounds: handle[Graphic3d_BoundBuffer]): OpenGl_PrimitiveArray {.
    constructor, importcpp: "OpenGl_PrimitiveArray(@)",
    header: "OpenGl_PrimitiveArray.hxx".}
proc destroyOpenGl_PrimitiveArray*(this: var OpenGl_PrimitiveArray) {.
    importcpp: "#.~OpenGl_PrimitiveArray()", header: "OpenGl_PrimitiveArray.hxx".}
proc Render*(this: OpenGl_PrimitiveArray; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_PrimitiveArray.hxx".}
proc Release*(this: var OpenGl_PrimitiveArray; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_PrimitiveArray.hxx".}
proc EstimatedDataSize*(this: OpenGl_PrimitiveArray): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_PrimitiveArray.hxx".}
proc UpdateDrawStats*(this: OpenGl_PrimitiveArray;
                     theStats: var Graphic3d_FrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, importcpp: "UpdateDrawStats", header: "OpenGl_PrimitiveArray.hxx".}
proc IsInitialized*(this: OpenGl_PrimitiveArray): Standard_Boolean {.noSideEffect,
    importcpp: "IsInitialized", header: "OpenGl_PrimitiveArray.hxx".}
proc Invalidate*(this: OpenGl_PrimitiveArray) {.noSideEffect,
    importcpp: "Invalidate", header: "OpenGl_PrimitiveArray.hxx".}
proc DrawMode*(this: OpenGl_PrimitiveArray): GLint {.noSideEffect,
    importcpp: "DrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc IsFillDrawMode*(this: OpenGl_PrimitiveArray): Standard_Boolean {.noSideEffect,
    importcpp: "IsFillDrawMode", header: "OpenGl_PrimitiveArray.hxx".}
proc Indices*(this: OpenGl_PrimitiveArray): handle[Graphic3d_IndexBuffer] {.
    noSideEffect, importcpp: "Indices", header: "OpenGl_PrimitiveArray.hxx".}
proc Attributes*(this: OpenGl_PrimitiveArray): handle[Graphic3d_Buffer] {.
    noSideEffect, importcpp: "Attributes", header: "OpenGl_PrimitiveArray.hxx".}
proc Bounds*(this: OpenGl_PrimitiveArray): handle[Graphic3d_BoundBuffer] {.
    noSideEffect, importcpp: "Bounds", header: "OpenGl_PrimitiveArray.hxx".}
proc GetUID*(this: OpenGl_PrimitiveArray): Standard_Size {.noSideEffect,
    importcpp: "GetUID", header: "OpenGl_PrimitiveArray.hxx".}
proc InitBuffers*(this: var OpenGl_PrimitiveArray;
                 theContext: handle[OpenGl_Context];
                 theType: Graphic3d_TypeOfPrimitiveArray;
                 theIndices: handle[Graphic3d_IndexBuffer];
                 theAttribs: handle[Graphic3d_Buffer];
                 theBounds: handle[Graphic3d_BoundBuffer]) {.
    importcpp: "InitBuffers", header: "OpenGl_PrimitiveArray.hxx".}
proc IndexVbo*(this: OpenGl_PrimitiveArray): handle[OpenGl_VertexBuffer] {.
    noSideEffect, importcpp: "IndexVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc AttributesVbo*(this: OpenGl_PrimitiveArray): handle[OpenGl_VertexBuffer] {.
    noSideEffect, importcpp: "AttributesVbo", header: "OpenGl_PrimitiveArray.hxx".}
proc DumpJson*(this: OpenGl_PrimitiveArray; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_PrimitiveArray.hxx".}