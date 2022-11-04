import opengl_types
import ../../tkernel/tcollection/[tcollection_types, tcollection_asciistring]
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkv3d/selectmgr/selectmgr_types

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


proc pixelSizeOfPixelFormat*(theInternalFormat: cint): csize_t {.cdecl,
    importcpp: "OpenGl_Texture::PixelSizeOfPixelFormat(@)", header: "OpenGl_Texture.hxx".}
# proc newOpenGlTexture*(theResourceId: TCollectionAsciiString = newTCollectionAsciiString();
#     theParams: Handle[Graphic3dTextureParams] = Handle[Graphic3dTextureParams]()): OpenGlTexture {.
#     cdecl, constructor, importcpp: "OpenGl_Texture(@)", header: "OpenGl_Texture.hxx".}
proc destroyOpenGlTexture*(this: var OpenGlTexture) {.cdecl,
    importcpp: "#.~OpenGl_Texture()", header: "OpenGl_Texture.hxx".}
proc isValid*(this: OpenGlTexture): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       header: "OpenGl_Texture.hxx".}
proc getTarget*(this: OpenGlTexture): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", header: "OpenGl_Texture.hxx".}
proc sizeX*(this: OpenGlTexture): GLsizei {.noSideEffect, cdecl, importcpp: "SizeX",
                                        header: "OpenGl_Texture.hxx".}
proc sizeY*(this: OpenGlTexture): GLsizei {.noSideEffect, cdecl, importcpp: "SizeY",
                                        header: "OpenGl_Texture.hxx".}
proc textureId*(this: OpenGlTexture): GLuint {.noSideEffect, cdecl,
    importcpp: "TextureId", header: "OpenGl_Texture.hxx".}
proc getFormat*(this: OpenGlTexture): GLenum {.noSideEffect, cdecl,
    importcpp: "GetFormat", header: "OpenGl_Texture.hxx".}
proc sizedFormat*(this: OpenGlTexture): GLint {.noSideEffect, cdecl,
    importcpp: "SizedFormat", header: "OpenGl_Texture.hxx".}
proc isAlpha*(this: OpenGlTexture): bool {.noSideEffect, cdecl, importcpp: "IsAlpha",
                                       header: "OpenGl_Texture.hxx".}
proc setAlpha*(this: var OpenGlTexture; theValue: bool) {.cdecl, importcpp: "SetAlpha",
    header: "OpenGl_Texture.hxx".}
proc isTopDown*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "IsTopDown", header: "OpenGl_Texture.hxx".}
proc setTopDown*(this: var OpenGlTexture; theIsTopDown: bool) {.cdecl,
    importcpp: "SetTopDown", header: "OpenGl_Texture.hxx".}
proc create*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Create", header: "OpenGl_Texture.hxx".}
proc release*(this: var OpenGlTexture; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Texture.hxx".}
proc sampler*(this: OpenGlTexture): Handle[OpenGlSampler] {.noSideEffect, cdecl,
    importcpp: "Sampler", header: "OpenGl_Texture.hxx".}
proc setSampler*(this: var OpenGlTexture; theSampler: Handle[OpenGlSampler]) {.cdecl,
    importcpp: "SetSampler", header: "OpenGl_Texture.hxx".}
proc initSamplerObject*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.
    cdecl, importcpp: "InitSamplerObject", header: "OpenGl_Texture.hxx".}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    cdecl, importcpp: "Bind", header: "OpenGl_Texture.hxx".}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    cdecl, importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "Bind", header: "OpenGl_Texture.hxx".}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect, cdecl,
    importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc revision*(this: OpenGlTexture): csize_t {.noSideEffect, cdecl,
    importcpp: "Revision", header: "OpenGl_Texture.hxx".}
proc setRevision*(this: var OpenGlTexture; theRevision: csize_t) {.cdecl,
    importcpp: "SetRevision", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theImage: ImagePixMap; theType: Graphic3dTypeOfTexture;
          theIsColorMap: bool): bool {.cdecl, importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theFormat: OpenGlTextureFormat; theSizeXY: Graphic3dVec2i;
          theType: Graphic3dTypeOfTexture; theImage: ptr ImagePixMap = nil): bool {.
    cdecl, importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theTextureMap: Handle[Graphic3dTextureMap]): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc initCompressed*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                    theImage: ImageCompressedPixMap; theIsColorMap: bool): bool {.
    cdecl, importcpp: "InitCompressed", header: "OpenGl_Texture.hxx".}
proc init2DMultisample*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                       theNbSamples: GLsizei; theTextFormat: GLint;
                       theSizeX: GLsizei; theSizeY: GLsizei): bool {.cdecl,
    importcpp: "Init2DMultisample", header: "OpenGl_Texture.hxx".}
proc initRectangle*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                   theSizeX: cint; theSizeY: cint; theFormat: OpenGlTextureFormat): bool {.
    cdecl, importcpp: "InitRectangle", header: "OpenGl_Texture.hxx".}
proc init3D*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
            theFormat: OpenGlTextureFormat; theSizeXYZ: Graphic3dVec3i;
            thePixels: pointer): bool {.cdecl, importcpp: "Init3D", header: "OpenGl_Texture.hxx".}
proc hasMipmaps*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "HasMipmaps", header: "OpenGl_Texture.hxx".}
proc maxMipmapLevel*(this: OpenGlTexture): cint {.noSideEffect, cdecl,
    importcpp: "MaxMipmapLevel", header: "OpenGl_Texture.hxx".}
proc estimatedDataSize*(this: OpenGlTexture): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Texture.hxx".}
proc isPointSprite*(this: OpenGlTexture): bool {.noSideEffect, cdecl,
    importcpp: "IsPointSprite", header: "OpenGl_Texture.hxx".}
# proc getDataFormat*(theCtx: Handle[OpenGlContext]; theFormat: ImageFormat;
#                    theTextFormat: var GLint; thePixelFormat: var GLenum;
#                    theDataType: var GLenum): bool {.cdecl,
#     importcpp: "OpenGl_Texture::GetDataFormat(@)", header: "OpenGl_Texture.hxx".}
proc getDataFormat*(theCtx: Handle[OpenGlContext]; theData: ImagePixMap;
                   theTextFormat: var GLint; thePixelFormat: var GLenum;
                   theDataType: var GLenum): bool {.cdecl,
    importcpp: "OpenGl_Texture::GetDataFormat(@)", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theTextFormat: GLint; thePixelFormat: GLenum; theDataType: GLenum;
          theSizeX: GLsizei; theSizeY: GLsizei; theType: Graphic3dTypeOfTexture;
          theImage: ptr ImagePixMap = nil): bool {.cdecl, importcpp: "Init",
    header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theImage: ImagePixMap; theType: Graphic3dTypeOfTexture): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc init3D*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextFormat: GLint; thePixelFormat: GLenum; theDataType: GLenum;
            theSizeX: cint; theSizeY: cint; theSizeZ: cint; thePixels: pointer): bool {.
    cdecl, importcpp: "Init3D", header: "OpenGl_Texture.hxx".}
# proc initCubeMap*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
#                  theCubeMap: Handle[Graphic3dCubeMap]; theSize: csize_t;
#                  theFormat: ImageFormat; theToGenMipmap: bool; theIsColorMap: bool): bool {.
#     cdecl, importcpp: "InitCubeMap", header: "OpenGl_Texture.hxx".}

