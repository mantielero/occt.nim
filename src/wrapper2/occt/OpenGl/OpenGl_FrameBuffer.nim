##  Created by: Kirill GAVRILOV
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
  OpenGl_Context, OpenGl_Resource, OpenGl_Texture,
  ../Graphic3d/Graphic3d_BufferType, ../NCollection/NCollection_Vector

discard "forward decl of OpenGl_FrameBuffer"
discard "forward decl of OpenGl_FrameBuffer"
type
  Handle_OpenGl_FrameBuffer* = handle[OpenGl_FrameBuffer]

## ! Short declaration of useful collection types.

type
  OpenGl_ColorFormats* = NCollection_Vector[GLint]

## ! Class implements FrameBuffer Object (FBO) resource
## ! intended for off-screen rendering.

type
  OpenGl_FrameBuffer* {.importcpp: "OpenGl_FrameBuffer",
                       header: "OpenGl_FrameBuffer.hxx", bycopy.} = object of OpenGl_Resource ##
                                                                                       ## !
                                                                                       ## Helpful
                                                                                       ## constants
                                                                                       ##
                                                                                       ## !
                                                                                       ## Dump
                                                                                       ## content
                                                                                       ## into
                                                                                       ## image.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theGlCtx
                                                                                       ## bound
                                                                                       ## OpenGL
                                                                                       ## context
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theFbo
                                                                                       ## FBO
                                                                                       ## to
                                                                                       ## dump
                                                                                       ## (or
                                                                                       ## window
                                                                                       ## buffer,
                                                                                       ## if
                                                                                       ## NULL)
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theImage
                                                                                       ## target
                                                                                       ## image
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theBufferType
                                                                                       ## buffer
                                                                                       ## type
                                                                                       ## (attachment)
                                                                                       ## to
                                                                                       ## dump
                                                                                       ##
                                                                                       ## !
                                                                                       ## @return
                                                                                       ## TRUE
                                                                                       ## on
                                                                                       ## success
                                                                                       ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor
    ## !< viewport width  specified during initialization (kept even on failure)
    ## !< viewport height specified during initialization (kept even on failure)
    ## !< viewport width  (should be <= texture width)
    ## !< viewport height (should be <= texture height)
    ## !< number of MSAA samples
    ## !< sized format for color         texture, GL_RGBA8 by default
    ## !< sized format for depth-stencil texture, GL_DEPTH24_STENCIL8 by default
    ## !< FBO object ID
    ## !< color         Render Buffer object (alternative to myColorTexture)
    ## !< depth-stencil Render Buffer object (alternative to myDepthStencilTexture)
    ## !< flag indicating that FBO should be deallocated by this class
    ## !< flag indicating that FBO should be deallocated by this class
    ## !< color texture objects
    ## !< depth-stencil texture object


proc BufferDump*(theGlCtx: handle[OpenGl_Context];
                theFbo: handle[OpenGl_FrameBuffer]; theImage: var Image_PixMap;
                theBufferType: Graphic3d_BufferType): Standard_Boolean {.
    importcpp: "OpenGl_FrameBuffer::BufferDump(@)",
    header: "OpenGl_FrameBuffer.hxx".}
proc constructOpenGl_FrameBuffer*(): OpenGl_FrameBuffer {.constructor,
    importcpp: "OpenGl_FrameBuffer(@)", header: "OpenGl_FrameBuffer.hxx".}
proc destroyOpenGl_FrameBuffer*(this: var OpenGl_FrameBuffer) {.
    importcpp: "#.~OpenGl_FrameBuffer()", header: "OpenGl_FrameBuffer.hxx".}
proc Release*(this: var OpenGl_FrameBuffer; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_FrameBuffer.hxx".}
proc NbSamples*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "NbSamples", header: "OpenGl_FrameBuffer.hxx".}
proc NbColorBuffers*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "NbColorBuffers", header: "OpenGl_FrameBuffer.hxx".}
proc HasColor*(this: OpenGl_FrameBuffer): bool {.noSideEffect, importcpp: "HasColor",
    header: "OpenGl_FrameBuffer.hxx".}
proc HasDepth*(this: OpenGl_FrameBuffer): bool {.noSideEffect, importcpp: "HasDepth",
    header: "OpenGl_FrameBuffer.hxx".}
proc GetSizeX*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc GetSizeY*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc GetVPSizeX*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc GetVPSizeY*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc GetInitVPSizeX*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetInitVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc GetInitVPSizeY*(this: OpenGl_FrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetInitVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc IsValid*(this: OpenGl_FrameBuffer): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_FrameBuffer.hxx".}
proc Init*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
          theSizeX: GLsizei; theSizeY: GLsizei;
          theColorFormats: OpenGl_ColorFormats;
          theDepthStencilTexture: handle[OpenGl_Texture];
          theNbSamples: GLsizei = 0): Standard_Boolean {.importcpp: "Init",
    header: "OpenGl_FrameBuffer.hxx".}
proc Init*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): Standard_Boolean {.
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc Init*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
          theSizeX: GLsizei; theSizeY: GLsizei;
          theColorFormats: OpenGl_ColorFormats; theDepthFormat: GLint;
          theNbSamples: GLsizei = 0): Standard_Boolean {.importcpp: "Init",
    header: "OpenGl_FrameBuffer.hxx".}
proc InitLazy*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormat: GLint; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): Standard_Boolean {.importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc InitLazy*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormats: OpenGl_ColorFormats; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): Standard_Boolean {.importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc InitLazy*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
              theFbo: OpenGl_FrameBuffer): Standard_Boolean {.
    importcpp: "InitLazy", header: "OpenGl_FrameBuffer.hxx".}
proc InitWithRB*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context];
                theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
                theDepthFormat: GLint; theColorRBufferFromWindow: GLuint = 0): Standard_Boolean {.
    importcpp: "InitWithRB", header: "OpenGl_FrameBuffer.hxx".}
proc InitWrapper*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "InitWrapper", header: "OpenGl_FrameBuffer.hxx".}
proc SetupViewport*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "SetupViewport", header: "OpenGl_FrameBuffer.hxx".}
proc ChangeViewport*(this: var OpenGl_FrameBuffer; theVPSizeX: GLsizei;
                    theVPSizeY: GLsizei) {.importcpp: "ChangeViewport",
    header: "OpenGl_FrameBuffer.hxx".}
proc BindBuffer*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "BindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc BindDrawBuffer*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "BindDrawBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc BindReadBuffer*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "BindReadBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc UnbindBuffer*(this: var OpenGl_FrameBuffer; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "UnbindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc ColorTexture*(this: OpenGl_FrameBuffer; theColorBufferIndex: GLint = 0): handle[
    OpenGl_Texture] {.noSideEffect, importcpp: "ColorTexture",
                     header: "OpenGl_FrameBuffer.hxx".}
proc DepthStencilTexture*(this: OpenGl_FrameBuffer): handle[OpenGl_Texture] {.
    noSideEffect, importcpp: "DepthStencilTexture",
    header: "OpenGl_FrameBuffer.hxx".}
proc ColorRenderBuffer*(this: OpenGl_FrameBuffer): GLuint {.noSideEffect,
    importcpp: "ColorRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc DepthStencilRenderBuffer*(this: OpenGl_FrameBuffer): GLuint {.noSideEffect,
    importcpp: "DepthStencilRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc EstimatedDataSize*(this: OpenGl_FrameBuffer): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_FrameBuffer.hxx".}
type
  OpenGl_FrameBufferbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_FrameBuffer::get_type_name(@)",
                              header: "OpenGl_FrameBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_FrameBuffer::get_type_descriptor(@)",
    header: "OpenGl_FrameBuffer.hxx".}
proc DynamicType*(this: OpenGl_FrameBuffer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_FrameBuffer.hxx".}