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

discard "forward decl of OpenGl_FrameBuffer"
discard "forward decl of OpenGl_FrameBuffer"
type
  HandleOpenGlFrameBuffer* = Handle[OpenGlFrameBuffer]

## ! Short declaration of useful collection types.

type
  OpenGlColorFormats* = NCollectionVector[GLint]

## ! Class implements FrameBuffer Object (FBO) resource
## ! intended for off-screen rendering.

type
  OpenGlFrameBuffer* {.importcpp: "OpenGl_FrameBuffer",
                      header: "OpenGl_FrameBuffer.hxx", bycopy.} = object of OpenGlResource ##
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


proc bufferDump*(theGlCtx: Handle[OpenGlContext];
                theFbo: Handle[OpenGlFrameBuffer]; theImage: var ImagePixMap;
                theBufferType: Graphic3dBufferType): StandardBoolean {.
    importcpp: "OpenGl_FrameBuffer::BufferDump(@)",
    header: "OpenGl_FrameBuffer.hxx".}
proc constructOpenGlFrameBuffer*(): OpenGlFrameBuffer {.constructor,
    importcpp: "OpenGl_FrameBuffer(@)", header: "OpenGl_FrameBuffer.hxx".}
proc destroyOpenGlFrameBuffer*(this: var OpenGlFrameBuffer) {.
    importcpp: "#.~OpenGl_FrameBuffer()", header: "OpenGl_FrameBuffer.hxx".}
proc release*(this: var OpenGlFrameBuffer; theGlCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_FrameBuffer.hxx".}
proc nbSamples*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "NbSamples", header: "OpenGl_FrameBuffer.hxx".}
proc nbColorBuffers*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "NbColorBuffers", header: "OpenGl_FrameBuffer.hxx".}
proc hasColor*(this: OpenGlFrameBuffer): bool {.noSideEffect, importcpp: "HasColor",
    header: "OpenGl_FrameBuffer.hxx".}
proc hasDepth*(this: OpenGlFrameBuffer): bool {.noSideEffect, importcpp: "HasDepth",
    header: "OpenGl_FrameBuffer.hxx".}
proc getSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc getVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc getInitVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetInitVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getInitVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect,
    importcpp: "GetInitVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc isValid*(this: OpenGlFrameBuffer): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthStencilTexture: Handle[OpenGlTexture]; theNbSamples: GLsizei = 0): StandardBoolean {.
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): StandardBoolean {.
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): StandardBoolean {.
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormat: GLint; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): StandardBoolean {.importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormats: OpenGlColorFormats; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): StandardBoolean {.importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theFbo: OpenGlFrameBuffer): StandardBoolean {.importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initWithRB*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
                theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
                theDepthFormat: GLint; theColorRBufferFromWindow: GLuint = 0): StandardBoolean {.
    importcpp: "InitWithRB", header: "OpenGl_FrameBuffer.hxx".}
proc initWrapper*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "InitWrapper", header: "OpenGl_FrameBuffer.hxx".}
proc setupViewport*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "SetupViewport", header: "OpenGl_FrameBuffer.hxx".}
proc changeViewport*(this: var OpenGlFrameBuffer; theVPSizeX: GLsizei;
                    theVPSizeY: GLsizei) {.importcpp: "ChangeViewport",
    header: "OpenGl_FrameBuffer.hxx".}
proc bindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "BindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc bindDrawBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "BindDrawBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc bindReadBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "BindReadBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc unbindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "UnbindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc colorTexture*(this: OpenGlFrameBuffer; theColorBufferIndex: GLint = 0): Handle[
    OpenGlTexture] {.noSideEffect, importcpp: "ColorTexture",
                    header: "OpenGl_FrameBuffer.hxx".}
proc depthStencilTexture*(this: OpenGlFrameBuffer): Handle[OpenGlTexture] {.
    noSideEffect, importcpp: "DepthStencilTexture",
    header: "OpenGl_FrameBuffer.hxx".}
proc colorRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect,
    importcpp: "ColorRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc depthStencilRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect,
    importcpp: "DepthStencilRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc estimatedDataSize*(this: OpenGlFrameBuffer): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_FrameBuffer.hxx".}
type
  OpenGlFrameBufferbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_FrameBuffer::get_type_name(@)",
                            header: "OpenGl_FrameBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_FrameBuffer::get_type_descriptor(@)",
    header: "OpenGl_FrameBuffer.hxx".}
proc dynamicType*(this: OpenGlFrameBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_FrameBuffer.hxx".}

