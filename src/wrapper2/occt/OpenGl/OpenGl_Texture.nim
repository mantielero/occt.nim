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

import
  ../Graphic3d/Graphic3d_CubeMap, OpenGl_TextureFormat, OpenGl_NamedResource,
  OpenGl_Sampler, ../Graphic3d/Graphic3d_TextureUnit,
  ../Graphic3d/Graphic3d_TypeOfTexture

discard "forward decl of Graphic3d_TextureParams"
discard "forward decl of Image_PixMap"
type
  OpenGl_Texture* {.importcpp: "OpenGl_Texture", header: "OpenGl_Texture.hxx", bycopy.} = object of OpenGl_NamedResource ##
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

  OpenGl_Texturebase_type* = OpenGl_NamedResource

proc get_type_name*(): cstring {.importcpp: "OpenGl_Texture::get_type_name(@)",
                              header: "OpenGl_Texture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Texture::get_type_descriptor(@)",
    header: "OpenGl_Texture.hxx".}
proc DynamicType*(this: OpenGl_Texture): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Texture.hxx".}
proc PixelSizeOfPixelFormat*(theInternalFormat: Standard_Integer): Standard_Size {.
    importcpp: "OpenGl_Texture::PixelSizeOfPixelFormat(@)",
    header: "OpenGl_Texture.hxx".}
proc constructOpenGl_Texture*(theResourceId: TCollection_AsciiString = TCollection_AsciiString();
    theParams: handle[Graphic3d_TextureParams] = handle[Graphic3d_TextureParams]()): OpenGl_Texture {.
    constructor, importcpp: "OpenGl_Texture(@)", header: "OpenGl_Texture.hxx".}
proc destroyOpenGl_Texture*(this: var OpenGl_Texture) {.
    importcpp: "#.~OpenGl_Texture()", header: "OpenGl_Texture.hxx".}
proc IsValid*(this: OpenGl_Texture): bool {.noSideEffect, importcpp: "IsValid",
                                        header: "OpenGl_Texture.hxx".}
proc GetTarget*(this: OpenGl_Texture): GLenum {.noSideEffect, importcpp: "GetTarget",
    header: "OpenGl_Texture.hxx".}
proc SizeX*(this: OpenGl_Texture): GLsizei {.noSideEffect, importcpp: "SizeX",
    header: "OpenGl_Texture.hxx".}
proc SizeY*(this: OpenGl_Texture): GLsizei {.noSideEffect, importcpp: "SizeY",
    header: "OpenGl_Texture.hxx".}
proc TextureId*(this: OpenGl_Texture): GLuint {.noSideEffect, importcpp: "TextureId",
    header: "OpenGl_Texture.hxx".}
proc GetFormat*(this: OpenGl_Texture): GLenum {.noSideEffect, importcpp: "GetFormat",
    header: "OpenGl_Texture.hxx".}
proc SizedFormat*(this: OpenGl_Texture): GLint {.noSideEffect,
    importcpp: "SizedFormat", header: "OpenGl_Texture.hxx".}
proc IsAlpha*(this: OpenGl_Texture): bool {.noSideEffect, importcpp: "IsAlpha",
                                        header: "OpenGl_Texture.hxx".}
proc SetAlpha*(this: var OpenGl_Texture; theValue: bool) {.importcpp: "SetAlpha",
    header: "OpenGl_Texture.hxx".}
proc IsTopDown*(this: OpenGl_Texture): bool {.noSideEffect, importcpp: "IsTopDown",
    header: "OpenGl_Texture.hxx".}
proc SetTopDown*(this: var OpenGl_Texture; theIsTopDown: bool) {.
    importcpp: "SetTopDown", header: "OpenGl_Texture.hxx".}
proc Create*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context]): bool {.
    importcpp: "Create", header: "OpenGl_Texture.hxx".}
proc Release*(this: var OpenGl_Texture; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Texture.hxx".}
proc Sampler*(this: OpenGl_Texture): handle[OpenGl_Sampler] {.noSideEffect,
    importcpp: "Sampler", header: "OpenGl_Texture.hxx".}
proc SetSampler*(this: var OpenGl_Texture; theSampler: handle[OpenGl_Sampler]) {.
    importcpp: "SetSampler", header: "OpenGl_Texture.hxx".}
proc InitSamplerObject*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context]): bool {.
    importcpp: "InitSamplerObject", header: "OpenGl_Texture.hxx".}
proc Bind*(this: OpenGl_Texture; theCtx: handle[OpenGl_Context]) {.noSideEffect,
    importcpp: "Bind", header: "OpenGl_Texture.hxx".}
proc Unbind*(this: OpenGl_Texture; theCtx: handle[OpenGl_Context]) {.noSideEffect,
    importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc Bind*(this: OpenGl_Texture; theCtx: handle[OpenGl_Context];
          theTextureUnit: Graphic3d_TextureUnit) {.noSideEffect, importcpp: "Bind",
    header: "OpenGl_Texture.hxx".}
proc Unbind*(this: OpenGl_Texture; theCtx: handle[OpenGl_Context];
            theTextureUnit: Graphic3d_TextureUnit) {.noSideEffect,
    importcpp: "Unbind", header: "OpenGl_Texture.hxx".}
proc Revision*(this: OpenGl_Texture): Standard_Size {.noSideEffect,
    importcpp: "Revision", header: "OpenGl_Texture.hxx".}
proc SetRevision*(this: var OpenGl_Texture; theRevision: Standard_Size) {.
    importcpp: "SetRevision", header: "OpenGl_Texture.hxx".}
proc Init*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
          theImage: Image_PixMap; theType: Graphic3d_TypeOfTexture;
          theIsColorMap: Standard_Boolean): bool {.importcpp: "Init",
    header: "OpenGl_Texture.hxx".}
proc Init*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
          theFormat: OpenGl_TextureFormat; theSizeXY: Graphic3d_Vec2i;
          theType: Graphic3d_TypeOfTexture; theImage: ptr Image_PixMap = nil): bool {.
    importcpp: "Init", header: "OpenGl_Texture.hxx".}
proc Init*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
          theTextureMap: handle[Graphic3d_TextureMap]): bool {.importcpp: "Init",
    header: "OpenGl_Texture.hxx".}
proc InitCompressed*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
                    theImage: Image_CompressedPixMap;
                    theIsColorMap: Standard_Boolean): bool {.
    importcpp: "InitCompressed", header: "OpenGl_Texture.hxx".}
proc Init2DMultisample*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
                       theNbSamples: GLsizei; theTextFormat: GLint;
                       theSizeX: GLsizei; theSizeY: GLsizei): bool {.
    importcpp: "Init2DMultisample", header: "OpenGl_Texture.hxx".}
proc InitRectangle*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
                   theSizeX: Standard_Integer; theSizeY: Standard_Integer;
                   theFormat: OpenGl_TextureFormat): bool {.
    importcpp: "InitRectangle", header: "OpenGl_Texture.hxx".}
proc Init3D*(this: var OpenGl_Texture; theCtx: handle[OpenGl_Context];
            theFormat: OpenGl_TextureFormat; theSizeXYZ: Graphic3d_Vec3i;
            thePixels: pointer): bool {.importcpp: "Init3D",
                                     header: "OpenGl_Texture.hxx".}
proc HasMipmaps*(this: OpenGl_Texture): Standard_Boolean {.noSideEffect,
    importcpp: "HasMipmaps", header: "OpenGl_Texture.hxx".}
proc MaxMipmapLevel*(this: OpenGl_Texture): Standard_Integer {.noSideEffect,
    importcpp: "MaxMipmapLevel", header: "OpenGl_Texture.hxx".}
proc EstimatedDataSize*(this: OpenGl_Texture): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Texture.hxx".}
proc IsPointSprite*(this: OpenGl_Texture): bool {.noSideEffect,
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
  Handle_OpenGl_Texture* = handle[OpenGl_Texture]
