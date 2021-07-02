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

  OpenGlTexturebaseType* = OpenGlNamedResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_Texture::get_type_name(@)",
                            header: "OpenGl_Texture.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Texture::get_type_descriptor(@)",
    header: "OpenGl_Texture.hxx".}
proc dynamicType*(this: OpenGlTexture): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Texture.hxx".}
proc pixelSizeOfPixelFormat*(theInternalFormat: StandardInteger): StandardSize {.
    importcpp: "OpenGl_Texture::PixelSizeOfPixelFormat(@)",
    header: "OpenGl_Texture.hxx".}
proc constructOpenGlTexture*(theResourceId: TCollectionAsciiString = tCollectionAsciiString();
    theParams: Handle[Graphic3dTextureParams] = handle[Graphic3dTextureParams]()): OpenGlTexture {.
    constructor, importcpp: "OpenGl_Texture(@)", header: "OpenGl_Texture.hxx".}
proc destroyOpenGlTexture*(this: var OpenGlTexture) {.
    importcpp: "#.~OpenGl_Texture()", header: "OpenGl_Texture.hxx".}
proc isValid*(this: OpenGlTexture): bool {.noSideEffect, importcpp: "IsValid",
                                       header: "OpenGl_Texture.hxx".}
proc getTarget*(this: OpenGlTexture): GLenum {.noSideEffect, importcpp: "GetTarget",
    header: "OpenGl_Texture.hxx".}
proc sizeX*(this: OpenGlTexture): GLsizei {.noSideEffect, importcpp: "SizeX",
                                        header: "OpenGl_Texture.hxx".}
proc sizeY*(this: OpenGlTexture): GLsizei {.noSideEffect, importcpp: "SizeY",
                                        header: "OpenGl_Texture.hxx".}
proc textureId*(this: OpenGlTexture): GLuint {.noSideEffect, importcpp: "TextureId",
    header: "OpenGl_Texture.hxx".}
proc getFormat*(this: OpenGlTexture): GLenum {.noSideEffect, importcpp: "GetFormat",
    header: "OpenGl_Texture.hxx".}
proc sizedFormat*(this: OpenGlTexture): GLint {.noSideEffect,
    importcpp: "SizedFormat", header: "OpenGl_Texture.hxx".}
proc isAlpha*(this: OpenGlTexture): bool {.noSideEffect, importcpp: "IsAlpha",
                                       header: "OpenGl_Texture.hxx".}
proc setAlpha*(this: var OpenGlTexture; theValue: bool) {.importcpp: "SetAlpha",
    header: "OpenGl_Texture.hxx".}
proc isTopDown*(this: OpenGlTexture): bool {.noSideEffect, importcpp: "IsTopDown",
    header: "OpenGl_Texture.hxx".}
proc setTopDown*(this: var OpenGlTexture; theIsTopDown: bool) {.
    importcpp: "SetTopDown", header: "OpenGl_Texture.hxx".}
proc create*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.
    importcpp: "Create", header: "OpenGl_Texture.hxx".}
proc release*(this: var OpenGlTexture; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Texture.hxx".}
proc sampler*(this: OpenGlTexture): Handle[OpenGlSampler] {.noSideEffect,
    importcpp: "Sampler", header: "OpenGl_Texture.hxx".}
proc setSampler*(this: var OpenGlTexture; theSampler: Handle[OpenGlSampler]) {.
    importcpp: "SetSampler", header: "OpenGl_Texture.hxx".}
proc initSamplerObject*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext]): bool {.
    importcpp: "InitSamplerObject", header: "OpenGl_Texture.hxx".}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    importcpp: "Bind", header: "OpenGl_Texture.hxx".}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext]) {.noSideEffect,
    importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc `bind`*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect,
    importcpp: "Bind", header: "OpenGl_Texture.hxx".}
proc unbind*(this: OpenGlTexture; theCtx: Handle[OpenGlContext];
            theTextureUnit: Graphic3dTextureUnit) {.noSideEffect,
    importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc revision*(this: OpenGlTexture): StandardSize {.noSideEffect,
    importcpp: "Revision", header: "OpenGl_Texture.hxx".}
proc setRevision*(this: var OpenGlTexture; theRevision: StandardSize) {.
    importcpp: "SetRevision", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theImage: ImagePixMap; theType: Graphic3dTypeOfTexture;
          theIsColorMap: StandardBoolean): bool {.importcpp: "Init",
    header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theFormat: OpenGlTextureFormat; theSizeXY: Graphic3dVec2i;
          theType: Graphic3dTypeOfTexture; theImage: ptr ImagePixMap = nil): bool {.
    importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc init*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
          theTextureMap: Handle[Graphic3dTextureMap]): bool {.importcpp: "Init",
    header: "OpenGl_Texture.hxx".}
proc initCompressed*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                    theImage: ImageCompressedPixMap;
                    theIsColorMap: StandardBoolean): bool {.
    importcpp: "InitCompressed", header: "OpenGl_Texture.hxx".}
proc init2DMultisample*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                       theNbSamples: GLsizei; theTextFormat: GLint;
                       theSizeX: GLsizei; theSizeY: GLsizei): bool {.
    importcpp: "Init2DMultisample", header: "OpenGl_Texture.hxx".}
proc initRectangle*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
                   theSizeX: StandardInteger; theSizeY: StandardInteger;
                   theFormat: OpenGlTextureFormat): bool {.
    importcpp: "InitRectangle", header: "OpenGl_Texture.hxx".}
proc init3D*(this: var OpenGlTexture; theCtx: Handle[OpenGlContext];
            theFormat: OpenGlTextureFormat; theSizeXYZ: Graphic3dVec3i;
            thePixels: pointer): bool {.importcpp: "Init3D",
                                     header: "OpenGl_Texture.hxx".}
proc hasMipmaps*(this: OpenGlTexture): StandardBoolean {.noSideEffect,
    importcpp: "HasMipmaps", header: "OpenGl_Texture.hxx".}
proc maxMipmapLevel*(this: OpenGlTexture): StandardInteger {.noSideEffect,
    importcpp: "MaxMipmapLevel", header: "OpenGl_Texture.hxx".}
proc estimatedDataSize*(this: OpenGlTexture): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Texture.hxx".}
proc isPointSprite*(this: OpenGlTexture): bool {.noSideEffect,
    importcpp: "IsPointSprite", header: "OpenGl_Texture.hxx".}
## !!!Ignored construct:  public : Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead ) static bool GetDataFormat ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const Image_Format theFormat , GLint & theTextFormat , GLenum & thePixelFormat , GLenum & theDataType ) { OpenGl_TextureFormat aFormat = OpenGl_TextureFormat :: FindFormat ( theCtx , theFormat , false ) ; theTextFormat = aFormat . InternalFormat ( ) ; thePixelFormat = aFormat . PixelFormat ( ) ; theDataType = aFormat . DataType ( ) ; return aFormat . IsValid ( ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead ) static bool GetDataFormat ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const Image_PixMap & theData , GLint & theTextFormat , GLenum & thePixelFormat , GLenum & theDataType ) { OpenGl_TextureFormat aFormat = OpenGl_TextureFormat :: FindFormat ( theCtx , theData . Format ( ) , false ) ; theTextFormat = aFormat . InternalFormat ( ) ; thePixelFormat = aFormat . PixelFormat ( ) ; theDataType = aFormat . DataType ( ) ; return aFormat . IsValid ( ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat should be passed instead of separate parameters ) bool Init ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const GLint theTextFormat , const GLenum thePixelFormat , const GLenum theDataType , const GLsizei theSizeX , const GLsizei theSizeY , const Graphic3d_TypeOfTexture theType , const Image_PixMap * theImage = NULL ) { OpenGl_TextureFormat aFormat ; aFormat . SetInternalFormat ( theTextFormat ) ; aFormat . SetPixelFormat ( thePixelFormat ) ; aFormat . SetDataType ( theDataType ) ; return Init ( theCtx , aFormat , Graphic3d_Vec2i ( theSizeX , theSizeY ) , theType , theImage ) ; } Standard_DEPRECATED ( Deprecated method, theIsColorMap parameter should be explicitly specified ) bool Init ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const Image_PixMap & theImage , const Graphic3d_TypeOfTexture theType ) { return Init ( theCtx , theImage , theType , true ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat should be passed instead of separate parameters ) bool Init3D ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const GLint theTextFormat , const GLenum thePixelFormat , const GLenum theDataType , const Standard_Integer theSizeX , const Standard_Integer theSizeY , const Standard_Integer theSizeZ , const void * thePixels ) { OpenGl_TextureFormat aFormat ; aFormat . SetInternalFormat ( theTextFormat ) ; aFormat . SetPixelFormat ( thePixelFormat ) ; aFormat . SetDataType ( theDataType ) ; return Init3D ( theCtx , aFormat , Graphic3d_Vec3i ( theSizeX , theSizeY , theSizeZ ) , thePixels ) ; } ! Initializes 6 sides of cubemap.
## ! If theCubeMap is not NULL then size and format will be taken from it and corresponding arguments will be ignored.
## ! Otherwise this parametres will be taken from arguments.
## ! @param theCtx         [in] active OpenGL context
## ! @param theCubeMap     [in] cubemap definition, can be NULL
## ! @param theSize        [in] cubemap dimensions
## ! @param theFormat      [in] image format
## ! @param theToGenMipmap [in] flag to generate mipmaped cubemap
## ! @param theIsColorMap  [in] flag indicating cubemap storing color values bool InitCubeMap ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const opencascade :: handle < Graphic3d_CubeMap > [end of template] & theCubeMap , Standard_Size theSize , Image_Format theFormat , Standard_Boolean theToGenMipmap , Standard_Boolean theIsColorMap ) ;
## Error: identifier expected, but got: Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead!!!

discard "forward decl of OpenGl_Texture"
type
  HandleOpenGlTexture* = Handle[OpenGlTexture]


