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

discard "forward decl of Graphic3d_TextureParams"
discard "forward decl of Image_PixMap"
type
  OpenGlTexture* {.importcpp: "OpenGl_Texture", header: "OpenGl_Texture.hxx", bycopy.} = object of OpenGlNamedResource ##
                                                                                                             ## !
                                                                                                             ## Helpful
                                                                                                             ## constants
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Create
                                                                                                             ## uninitialized
                                                                                                             ## texture.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Apply
                                                                                                             ## default
                                                                                                             ## sampler
                                                                                                             ## parameters
                                                                                                             ## after
                                                                                                             ## texture
                                                                                                             ## creation.
    ## !< texture sampler
    ## !< revision of associated data source
    ## !< GL resource ID
    ## !< GL_TEXTURE_1D/GL_TEXTURE_2D/GL_TEXTURE_3D
    ## !< texture width
    ## !< texture height
    ## !< texture depth
    ## !< texture format - GL_RGB, GL_RGBA,...
    ## !< internal (sized) texture format
    ## !< number of MSAA samples
    ## !< upper mipmap level index (0 means no mipmaps)
    ## !< indicates alpha format
    ## !< indicates if 2D surface is defined top-down (TRUE) or bottom-up (FALSE)


proc pixelSizeOfPixelFormat*(theInternalFormat: cint): csize_t {.cdecl,
    importcpp: "OpenGl_Texture::PixelSizeOfPixelFormat(@)", dynlib: tkkxbase.}
proc newOpenGlTexture*(theResourceId: TCollectionAsciiString = tCollectionAsciiString();
    theParams: Handle[Graphic3dTextureParams] = handle[Graphic3dTextureParams]()): OpenGlTexture {.
    cdecl, constructor, importcpp: "OpenGl_Texture(@)", dynlib: tkkxbase.}
proc destroyOpenGlTexture*(this: var OpenGlTexture) {.cdecl,
    importcpp: "#.~OpenGl_Texture()", dynlib: tkkxbase.}
proc isValid*(this: OpenGlTexture): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       dynlib: tkkxbase.}
proc getTarget*(this: OpenGlTexture): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", dynlib: tkkxbase.}
proc sizeX*(this: OpenGlTexture): GLsizei {.noSideEffect, cdecl, importcpp: "SizeX",
                                        dynlib: tkkxbase.}
proc sizeY*(this: OpenGlTexture): GLsizei {.noSideEffect, cdecl, importcpp: "SizeY",
                                        dynlib: tkkxbase.}
proc textureId*(this: OpenGlTexture): GLuint {.noSideEffect, cdecl,
    importcpp: "TextureId", dynlib: tkkxbase.}
proc getFormat*(this: OpenGlTexture): GLenum {.noSideEffect, cdecl,
    importcpp: "GetFormat", dynlib: tkkxbase.}
proc sizedFormat*(this: OpenGlTexture): GLint {.noSideEffect, cdecl,
    importcpp: "SizedFormat", dynlib: tkkxbase.}
proc isAlpha*(this: OpenGlTexture): bool {.noSideEffect, cdecl, importcpp: "IsAlpha",
                                       dynlib: tkkxbase.}
proc setAlpha*(this: var OpenGlTexture; theValue: bool) {.cdecl, importcpp: "SetAlpha",
    dynlib: tkkxbase.}
proc isTopDown*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "IsTopDown", dynlib: tkkxbase.}
proc setTopDown*(this: var OpenGlTexture; theIsTopDown: bool) {.cdecl,
    importcpp: "SetTopDown", dynlib: tkkxbase.}
proc create*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Create", dynlib: tkkxbase.}
proc release*(this: var OpenGlTexture; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc sampler*(this: OpenGlTexture): Handle[OpenGlSampler] {.noSideEffect, cdecl,
    importcpp: "Sampler", dynlib: tkkxbase.}
proc setSampler*(this: var OpenGlTexture; theSampler: Handle[OpenGlSampler]) {.cdecl,
    importcpp: "SetSampler", dynlib: tkkxbase.}
proc initSamplerObject*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "InitSamplerObject", dynlib: tkkxbase.}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    cdecl, importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    cdecl, importcpp: "Unbind", dynlib: tkkxbase.}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "Unbind", dynlib: tkkxbase.}
proc revision*(this: OpenGlTexture): csize_t {.noSideEffect, cdecl,
    importcpp: "Revision", dynlib: tkkxbase.}
proc setRevision*(this: var OpenGlTexture; theRevision: csize_t) {.cdecl,
    importcpp: "SetRevision", dynlib: tkkxbase.}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theImage: ImagePixMap; theType: Graphic3dTypeOfTexture;
          theIsColorMap: bool): bool {.cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theFormat: OpenGlTextureFormat; theSizeXY: Graphic3dVec2i;
          theType: Graphic3dTypeOfTexture; theImage: ptr ImagePixMap = nil): bool {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theTextureMap: Handle[Graphic3dTextureMap]): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc initCompressed*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                    theImage: ImageCompressedPixMap; theIsColorMap: bool): bool {.
    cdecl, importcpp: "InitCompressed", dynlib: tkkxbase.}
proc init2DMultisample*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                       theNbSamples: GLsizei; theTextFormat: GLint;
                       theSizeX: GLsizei; theSizeY: GLsizei): bool {.cdecl,
    importcpp: "Init2DMultisample", dynlib: tkkxbase.}
proc initRectangle*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                   theSizeX: cint; theSizeY: cint; theFormat: OpenGlTextureFormat): bool {.
    cdecl, importcpp: "InitRectangle", dynlib: tkkxbase.}
proc init3D*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
            theFormat: OpenGlTextureFormat; theSizeXYZ: Graphic3dVec3i;
            thePixels: pointer): bool {.cdecl, importcpp: "Init3D", dynlib: tkkxbase.}
proc hasMipmaps*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "HasMipmaps", dynlib: tkkxbase.}
proc maxMipmapLevel*(this: OpenGlTexture): cint {.noSideEffect, cdecl,
    importcpp: "MaxMipmapLevel", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlTexture): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc isPointSprite*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "IsPointSprite", dynlib: tkkxbase.}
proc getDataFormat*(theCtx: Handle[OpenGlContext]; theFormat: ImageFormat;
                   theTextFormat: var GLint; thePixelFormat: var GLenum;
                   theDataType: var GLenum): bool {.cdecl,
    importcpp: "OpenGl_Texture::GetDataFormat(@)", dynlib: tkkxbase.}
proc getDataFormat*(theCtx: Handle[OpenGlContext]; theData: ImagePixMap;
                   theTextFormat: var GLint; thePixelFormat: var GLenum;
                   theDataType: var GLenum): bool {.cdecl,
    importcpp: "OpenGl_Texture::GetDataFormat(@)", dynlib: tkkxbase.}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theTextFormat: GLint; thePixelFormat: GLenum; theDataType: GLenum;
          theSizeX: GLsizei; theSizeY: GLsizei; theType: Graphic3dTypeOfTexture;
          theImage: ptr ImagePixMap = nil): bool {.cdecl, importcpp: "Init",
    dynlib: tkkxbase.}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theImage: ImagePixMap; theType: Graphic3dTypeOfTexture): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc init3D*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextFormat: GLint; thePixelFormat: GLenum; theDataType: GLenum;
            theSizeX: cint; theSizeY: cint; theSizeZ: cint; thePixels: pointer): bool {.
    cdecl, importcpp: "Init3D", dynlib: tkkxbase.}
proc initCubeMap*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                 theCubeMap: Handle[Graphic3dCubeMap]; theSize: csize_t;
                 theFormat: ImageFormat; theToGenMipmap: bool; theIsColorMap: bool): bool {.
    cdecl, importcpp: "InitCubeMap", dynlib: tkkxbase.}
type
  HandleOpenGlTexture* = Handle[OpenGlTexture]
