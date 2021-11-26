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

## !!!Ignored construct:  # _OpenGl_Texture_H__ [NewLine] # _OpenGl_Texture_H__ [NewLine] # < Graphic3d_CubeMap . hxx > [NewLine] # < OpenGl_TextureFormat . hxx > [NewLine] # < OpenGl_NamedResource . hxx > [NewLine] # < OpenGl_Sampler . hxx > [NewLine] # < Graphic3d_TextureUnit . hxx > [NewLine] # < Graphic3d_TypeOfTexture . hxx > [NewLine] class Graphic3d_TextureParams ;
## Error: expected ';'!!!

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
    standardType* {.importc: "Standard_Type".}: Handle
    openGlSampler* {.importc: "OpenGl_Sampler".}: Handle
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
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc pixelSizeOfPixelFormat*(theInternalFormat: int): StandardSize {.
    importcpp: "OpenGl_Texture::PixelSizeOfPixelFormat(@)",
    header: "OpenGl_Texture.hxx".}
## !!!Ignored construct:  public : ! Create uninitialized texture. OpenGl_Texture ( const TCollection_AsciiString & theResourceId = TCollection_AsciiString ( ) , const Handle ( Graphic3d_TextureParams ) & theParams = Handle ( Graphic3d_TextureParams ) ( ) ) ;
## Error: token expected: ) but got: &!!!

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
## !!!Ignored construct:  ! Creates Texture id if not yet generated.
## ! Data should be initialized by another method. bool Create ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

proc release*(this: var OpenGlTexture; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Texture.hxx".}
## !!!Ignored construct:  & Sampler ( ) const { return mySampler ; } ! Set texture sampler. void SetSampler ( const Handle ( OpenGl_Sampler ) & theSampler ) { mySampler = theSampler ; } ! Initialize the Sampler Object (as OpenGL object).
## ! @param theCtx currently bound OpenGL context bool InitSamplerObject ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Bind this Texture to the unit specified in sampler parameters.
## ! Also binds Sampler Object if it is allocated. void Bind ( const Handle ( OpenGl_Context ) & theCtx ) const { Bind ( theCtx , mySampler -> Parameters ( ) -> TextureUnit ( ) ) ; } ! Unbind texture from the unit specified in sampler parameters.
## ! Also unbinds Sampler Object if it is allocated. void Unbind ( const Handle ( OpenGl_Context ) & theCtx ) const { Unbind ( theCtx , mySampler -> Parameters ( ) -> TextureUnit ( ) ) ; } ! Bind this Texture to specified unit.
## ! Also binds Sampler Object if it is allocated. void Bind ( const Handle ( OpenGl_Context ) & theCtx , const Graphic3d_TextureUnit theTextureUnit ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Unbind texture from specified unit.
## ! Also unbinds Sampler Object if it is allocated. void Unbind ( const Handle ( OpenGl_Context ) & theCtx , const Graphic3d_TextureUnit theTextureUnit ) const ;
## Error: token expected: ) but got: &!!!

proc revision*(this: OpenGlTexture): StandardSize {.noSideEffect,
    importcpp: "Revision", header: "OpenGl_Texture.hxx".}
proc setRevision*(this: var OpenGlTexture; theRevision: StandardSize) {.
    importcpp: "SetRevision", header: "OpenGl_Texture.hxx".}
## !!!Ignored construct:  ! Notice that texture will be unbound after this call. bool Init ( const Handle ( OpenGl_Context ) & theCtx , const Image_PixMap & theImage , const Graphic3d_TypeOfTexture theType , const Standard_Boolean theIsColorMap ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initialize the texture with specified format, size and texture type.
## ! If theImage is empty the texture data will contain trash.
## ! Notice that texture will be unbound after this call. bool Init ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_TextureFormat & theFormat , const Graphic3d_Vec2i & theSizeXY , const Graphic3d_TypeOfTexture theType , const Image_PixMap * theImage = NULL ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initialize the texture with Graphic3d_TextureMap.
## ! It is an universal way to initialize.
## ! Suitable initialization method will be chosen. bool Init ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( Graphic3d_TextureMap ) & theTextureMap ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initialize the texture with Image_CompressedPixMap. bool InitCompressed ( const Handle ( OpenGl_Context ) & theCtx , const Image_CompressedPixMap & theImage , const Standard_Boolean theIsColorMap ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initialize the 2D multisampling texture using glTexImage2DMultisample(). bool Init2DMultisample ( const Handle ( OpenGl_Context ) & theCtx , const GLsizei theNbSamples , const GLint theTextFormat , const GLsizei theSizeX , const GLsizei theSizeY ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Allocates texture rectangle with specified format and size.
## ! \note Texture data is not initialized (will contain trash). bool InitRectangle ( const Handle ( OpenGl_Context ) & theCtx , const Standard_Integer theSizeX , const Standard_Integer theSizeY , const OpenGl_TextureFormat & theFormat ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Initializes 3D texture rectangle with specified format and size. bool Init3D ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_TextureFormat & theFormat , const Graphic3d_Vec3i & theSizeXYZ , const void * thePixels ) ;
## Error: token expected: ) but got: &!!!

proc hasMipmaps*(this: OpenGlTexture): bool {.noSideEffect, importcpp: "HasMipmaps",
    header: "OpenGl_Texture.hxx".}
proc maxMipmapLevel*(this: OpenGlTexture): int {.noSideEffect,
    importcpp: "MaxMipmapLevel", header: "OpenGl_Texture.hxx".}
proc estimatedDataSize*(this: OpenGlTexture): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Texture.hxx".}
proc isPointSprite*(this: OpenGlTexture): bool {.noSideEffect,
    importcpp: "IsPointSprite", header: "OpenGl_Texture.hxx".}
## !!!Ignored construct:  public : Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead ) static bool GetDataFormat ( const Handle ( OpenGl_Context ) & theCtx , const Image_Format theFormat , GLint & theTextFormat , GLenum & thePixelFormat , GLenum & theDataType ) { OpenGl_TextureFormat aFormat = OpenGl_TextureFormat :: FindFormat ( theCtx , theFormat , false ) ; theTextFormat = aFormat . InternalFormat ( ) ; thePixelFormat = aFormat . PixelFormat ( ) ; theDataType = aFormat . DataType ( ) ; return aFormat . IsValid ( ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead ) static bool GetDataFormat ( const Handle ( OpenGl_Context ) & theCtx , const Image_PixMap & theData , GLint & theTextFormat , GLenum & thePixelFormat , GLenum & theDataType ) { OpenGl_TextureFormat aFormat = OpenGl_TextureFormat :: FindFormat ( theCtx , theData . Format ( ) , false ) ; theTextFormat = aFormat . InternalFormat ( ) ; thePixelFormat = aFormat . PixelFormat ( ) ; theDataType = aFormat . DataType ( ) ; return aFormat . IsValid ( ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat should be passed instead of separate parameters ) bool Init ( const Handle ( OpenGl_Context ) & theCtx , const GLint theTextFormat , const GLenum thePixelFormat , const GLenum theDataType , const GLsizei theSizeX , const GLsizei theSizeY , const Graphic3d_TypeOfTexture theType , const Image_PixMap * theImage = NULL ) { OpenGl_TextureFormat aFormat ; aFormat . SetInternalFormat ( theTextFormat ) ; aFormat . SetPixelFormat ( thePixelFormat ) ; aFormat . SetDataType ( theDataType ) ; return Init ( theCtx , aFormat , Graphic3d_Vec2i ( theSizeX , theSizeY ) , theType , theImage ) ; } Standard_DEPRECATED ( Deprecated method, theIsColorMap parameter should be explicitly specified ) bool Init ( const Handle ( OpenGl_Context ) & theCtx , const Image_PixMap & theImage , const Graphic3d_TypeOfTexture theType ) { return Init ( theCtx , theImage , theType , true ) ; } Standard_DEPRECATED ( Deprecated method, OpenGl_TextureFormat should be passed instead of separate parameters ) bool Init3D ( const Handle ( OpenGl_Context ) & theCtx , const GLint theTextFormat , const GLenum thePixelFormat , const GLenum theDataType , const Standard_Integer theSizeX , const Standard_Integer theSizeY , const Standard_Integer theSizeZ , const void * thePixels ) { OpenGl_TextureFormat aFormat ; aFormat . SetInternalFormat ( theTextFormat ) ; aFormat . SetPixelFormat ( thePixelFormat ) ; aFormat . SetDataType ( theDataType ) ; return Init3D ( theCtx , aFormat , Graphic3d_Vec3i ( theSizeX , theSizeY , theSizeZ ) , thePixels ) ; } ! Initializes 6 sides of cubemap.
## ! If theCubeMap is not NULL then size and format will be taken from it and corresponding arguments will be ignored.
## ! Otherwise this parametres will be taken from arguments.
## ! @param theCtx         [in] active OpenGL context
## ! @param theCubeMap     [in] cubemap definition, can be NULL
## ! @param theSize        [in] cubemap dimensions
## ! @param theFormat      [in] image format
## ! @param theToGenMipmap [in] flag to generate mipmaped cubemap
## ! @param theIsColorMap  [in] flag indicating cubemap storing color values bool InitCubeMap ( const Handle ( OpenGl_Context ) & theCtx , const Handle ( Graphic3d_CubeMap ) & theCubeMap , Standard_Size theSize , Image_Format theFormat , Standard_Boolean theToGenMipmap , Standard_Boolean theIsColorMap ) ;
## Error: identifier expected, but got: Deprecated method, OpenGl_TextureFormat::FindFormat() should be used instead!!!

## !!!Ignored construct:  protected : ! Apply default sampler parameters after texture creation. void applyDefaultSamplerParams ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  mySampler ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_Texture , OpenGl_NamedResource ) #  _OpenGl_Texture_H__
## Error: expected ';'!!!














































