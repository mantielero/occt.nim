import ../standard/standard_types
import ../selectmgr/selectmgr_types
import ../graphic3d/graphic3d_types
import opengl_types



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







proc bufferDump*(theGlCtx: Handle[OpenGlContext];
                theFbo: Handle[OpenGlFrameBuffer]; theImage: var ImagePixMap;
                theBufferType: Graphic3dBufferType): bool {.cdecl,
    importcpp: "OpenGl_FrameBuffer::BufferDump(@)", header: "OpenGl_FrameBuffer.hxx".}
proc newOpenGlFrameBuffer*(): OpenGlFrameBuffer {.cdecl, constructor,
    importcpp: "OpenGl_FrameBuffer(@)", header: "OpenGl_FrameBuffer.hxx".}
proc destroyOpenGlFrameBuffer*(this: var OpenGlFrameBuffer) {.cdecl,
    importcpp: "#.~OpenGl_FrameBuffer()", header: "OpenGl_FrameBuffer.hxx".}
proc release*(this: var OpenGlFrameBuffer; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_FrameBuffer.hxx".}
proc nbSamples*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "NbSamples", header: "OpenGl_FrameBuffer.hxx".}
proc nbColorBuffers*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "NbColorBuffers", header: "OpenGl_FrameBuffer.hxx".}
proc hasColor*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasColor", header: "OpenGl_FrameBuffer.hxx".}
proc hasDepth*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "HasDepth", header: "OpenGl_FrameBuffer.hxx".}
proc getSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc getVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc getInitVPSizeX*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetInitVPSizeX", header: "OpenGl_FrameBuffer.hxx".}
proc getInitVPSizeY*(this: OpenGlFrameBuffer): GLsizei {.noSideEffect, cdecl,
    importcpp: "GetInitVPSizeY", header: "OpenGl_FrameBuffer.hxx".}
proc isValid*(this: OpenGlFrameBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthStencilTexture: Handle[OpenGlTexture]; theNbSamples: GLsizei = 0): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc init*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
          theSizeX: GLsizei; theSizeY: GLsizei; theColorFormats: OpenGlColorFormats;
          theDepthFormat: GLint; theNbSamples: GLsizei = 0): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormat: GLint; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): bool {.cdecl, importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theViewportSizeX: GLsizei; theViewportSizeY: GLsizei;
              theColorFormats: OpenGlColorFormats; theDepthFormat: GLint;
              theNbSamples: GLsizei = 0): bool {.cdecl, importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initLazy*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
              theFbo: OpenGlFrameBuffer): bool {.cdecl, importcpp: "InitLazy",
    header: "OpenGl_FrameBuffer.hxx".}
proc initWithRB*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext];
                theSizeX: GLsizei; theSizeY: GLsizei; theColorFormat: GLint;
                theDepthFormat: GLint; theColorRBufferFromWindow: GLuint = 0): bool {.
    cdecl, importcpp: "InitWithRB", header: "OpenGl_FrameBuffer.hxx".}
proc initWrapper*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "InitWrapper", header: "OpenGl_FrameBuffer.hxx".}
proc setupViewport*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "SetupViewport", header: "OpenGl_FrameBuffer.hxx".}
proc changeViewport*(this: var OpenGlFrameBuffer; theVPSizeX: GLsizei;
                    theVPSizeY: GLsizei) {.cdecl, importcpp: "ChangeViewport",
    header: "OpenGl_FrameBuffer.hxx".}
proc bindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc bindDrawBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindDrawBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc bindReadBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "BindReadBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc unbindBuffer*(this: var OpenGlFrameBuffer; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "UnbindBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc colorTexture*(this: OpenGlFrameBuffer; theColorBufferIndex: GLint = 0): Handle[
    OpenGlTexture] {.noSideEffect, cdecl, importcpp: "ColorTexture", header: "OpenGl_FrameBuffer.hxx".}
proc depthStencilTexture*(this: OpenGlFrameBuffer): Handle[OpenGlTexture] {.
    noSideEffect, cdecl, importcpp: "DepthStencilTexture", header: "OpenGl_FrameBuffer.hxx".}
proc colorRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect, cdecl,
    importcpp: "ColorRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc depthStencilRenderBuffer*(this: OpenGlFrameBuffer): GLuint {.noSideEffect,
    cdecl, importcpp: "DepthStencilRenderBuffer", header: "OpenGl_FrameBuffer.hxx".}
proc estimatedDataSize*(this: OpenGlFrameBuffer): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_FrameBuffer.hxx".}

