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
                                                                                     ##
                                                                                     ## Type
                                                                                     ## definition
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
                theBufferType: Graphic3dBufferType): bool {.cdecl,
    importcpp: "OpenGl_FrameBuffer::BufferDump(@)", dynlib: tkkxbase.}
proc newOpenGlFrameBuffer*(): OpenGlFrameBuffer {.cdecl, constructor,
    importcpp: "OpenGl_FrameBuffer(@)", dynlib: tkkxbase.}
proc destroyOpenGlFrameBuffer*(this: var OpenGlFrameBuffer) {.cdecl,
    importcpp: "#.~OpenGl_FrameBuffer()", dynlib: tkkxbase.}
proc release*(this: var OpenGlFrameBuffer; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc nbSamples*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "NbSamples", dynlib: tkkxbase.}
proc nbColorBuffers*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "NbColorBuffers", dynlib: tkkxbase.}
proc hasColor*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasColor", dynlib: tkkxbase.}
proc hasDepth*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasDepth", dynlib: tkkxbase.}
proc getSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetSizeX", dynlib: tkkxbase.}
proc getSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetSizeY", dynlib: tkkxbase.}
proc getVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetVPSizeX", dynlib: tkkxbase.}
proc getVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetVPSizeY", dynlib: tkkxbase.}
proc getInitVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetInitVPSizeX", dynlib: tkkxbase.}
proc getInitVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetInitVPSizeY", dynlib: tkkxbase.}
proc isValid*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkkxbase.}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthStencilTexture: Handle[OpenGlTexture]; theNbSamples: GLsizei = 0): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormat: GLint; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): bool {.cdecl, importcpp: "InitLazy",
    dynlib: tkkxbase.}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormats: OpenGlColorFormats; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): bool {.cdecl, importcpp: "InitLazy",
    dynlib: tkkxbase.}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theFbo: OpenGlFrameBuffer): bool {.cdecl, importcpp: "InitLazy",
    dynlib: tkkxbase.}
proc initWithRB*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
                theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
                theDepthFormat: GLint; theColorRBufferFromWindow: GLuint = 0): bool {.
    cdecl, importcpp: "InitWithRB", dynlib: tkkxbase.}
proc initWrapper*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "InitWrapper", dynlib: tkkxbase.}
proc setupViewport*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "SetupViewport", dynlib: tkkxbase.}
proc changeViewport*(this: var OpenGlFrameBuffer; theVPSizeX: GLsizei;
                    theVPSizeY: GLsizei) {.cdecl, importcpp: "ChangeViewport",
    dynlib: tkkxbase.}
proc bindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindBuffer", dynlib: tkkxbase.}
proc bindDrawBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindDrawBuffer", dynlib: tkkxbase.}
proc bindReadBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindReadBuffer", dynlib: tkkxbase.}
proc unbindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "UnbindBuffer", dynlib: tkkxbase.}
proc colorTexture*(this: OpenGlFrameBuffer; theColorBufferIndex: GLint = 0): Handle[
    OpenGlTexture] {.noSideEffect, cdecl, importcpp: "ColorTexture", dynlib: tkkxbase.}
proc depthStencilTexture*(this: OpenGlFrameBuffer): Handle[OpenGlTexture] {.
    noSideEffect, cdecl, importcpp: "DepthStencilTexture", dynlib: tkkxbase.}
proc colorRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect, cdecl,
    importcpp: "ColorRenderBuffer", dynlib: tkkxbase.}
proc depthStencilRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect,
    cdecl, importcpp: "DepthStencilRenderBuffer", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlFrameBuffer): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}