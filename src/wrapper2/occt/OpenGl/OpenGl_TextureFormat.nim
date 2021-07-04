##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _OpenGl_TextureFormat_HeaderFile [NewLine] # _OpenGl_TextureFormat_HeaderFile [NewLine] # ../Image/Image_CompressedFormat.hxx [NewLine] # ../Image/Image_Format.hxx [NewLine] # OpenGl_GlCore13.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] class OpenGl_Context ;
## Error: identifier expected, but got: <!!!

## ! Stores parameters of OpenGL texture format.

type
  OpenGl_TextureFormatSelectorOpenGl_TextureFormat* {.
      importcpp: "OpenGl_TextureFormatSelector<\'0>::OpenGl_TextureFormat",
      header: "OpenGl_TextureFormat.hxx", bycopy.} = object ## ! Returns texture format for specified type and number of channels.
                                                       ## ! @tparam theCompType component type
                                                       ## ! @tparam theNbComps  number of components
                                                       ## ! Empty constructor (invalid texture format).
                                                       ## ! Returns OpenGL internal format of the pixel data (example: GL_R32F).
    ## !< OpenGL internal format of the pixel data
    ## !< OpenGL pixel format
    ## !< OpenGL data type of input pixel data
    ## !< number of channels for each pixel (from 1 to 4)


proc Create*[theCompType; theNbComps: static[cint]](): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    importcpp: "OpenGl_TextureFormat::Create(@)",
    header: "OpenGl_TextureFormat.hxx".}
proc FindFormat*(theCtx: handle[OpenGl_Context]; theFormat: Image_Format;
                theIsColorMap: bool): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    importcpp: "OpenGl_TextureFormat::FindFormat(@)",
    header: "OpenGl_TextureFormat.hxx".}
proc FindSizedFormat*(theCtx: handle[OpenGl_Context]; theSizedFormat: GLint): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    importcpp: "OpenGl_TextureFormat::FindSizedFormat(@)",
    header: "OpenGl_TextureFormat.hxx".}
proc FindCompressedFormat*(theCtx: handle[OpenGl_Context];
                          theFormat: Image_CompressedFormat; theIsColorMap: bool): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    importcpp: "OpenGl_TextureFormat::FindCompressedFormat(@)",
    header: "OpenGl_TextureFormat.hxx".}
proc constructOpenGl_TextureFormatSelectorOpenGl_TextureFormat*(): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    constructor,
    importcpp: "OpenGl_TextureFormatSelector<\'*0>::OpenGl_TextureFormat(@)",
    header: "OpenGl_TextureFormat.hxx".}
proc IsValid*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): bool {.
    noSideEffect, importcpp: "IsValid", header: "OpenGl_TextureFormat.hxx".}
proc InternalFormat*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLint {.
    noSideEffect, importcpp: "InternalFormat", header: "OpenGl_TextureFormat.hxx".}
proc SetInternalFormat*(this: var OpenGl_TextureFormatSelectorOpenGl_TextureFormat;
                       theInternal: GLint) {.importcpp: "SetInternalFormat",
    header: "OpenGl_TextureFormat.hxx".}
proc PixelFormat*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLenum {.
    noSideEffect, importcpp: "PixelFormat", header: "OpenGl_TextureFormat.hxx".}
proc SetPixelFormat*(this: var OpenGl_TextureFormatSelectorOpenGl_TextureFormat;
                    theFormat: GLenum) {.importcpp: "SetPixelFormat",
                                       header: "OpenGl_TextureFormat.hxx".}
proc DataType*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLint {.
    noSideEffect, importcpp: "DataType", header: "OpenGl_TextureFormat.hxx".}
proc SetDataType*(this: var OpenGl_TextureFormatSelectorOpenGl_TextureFormat;
                 theType: GLint) {.importcpp: "SetDataType",
                                 header: "OpenGl_TextureFormat.hxx".}
proc NbComponents*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLint {.
    noSideEffect, importcpp: "NbComponents", header: "OpenGl_TextureFormat.hxx".}
proc SetNbComponents*(this: var OpenGl_TextureFormatSelectorOpenGl_TextureFormat;
                     theNbComponents: GLint) {.importcpp: "SetNbComponents",
    header: "OpenGl_TextureFormat.hxx".}
proc IsSRGB*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): bool {.
    noSideEffect, importcpp: "IsSRGB", header: "OpenGl_TextureFormat.hxx".}
proc Internal*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLint {.
    noSideEffect, importcpp: "Internal", header: "OpenGl_TextureFormat.hxx".}
proc Format*(this: OpenGl_TextureFormatSelectorOpenGl_TextureFormat): GLenum {.
    noSideEffect, importcpp: "Format", header: "OpenGl_TextureFormat.hxx".}
## ! Selects preferable texture format for specified parameters.

type
  OpenGl_TextureFormatSelectorOpenGl_TextureFormatSelector*[T] {.importcpp: "OpenGl_TextureFormatSelector<\'0>::OpenGl_TextureFormatSelector<\'1>",
      header: "OpenGl_TextureFormat.hxx", bycopy.} = object ##  Not implemented


## ! Specialization for unsigned byte.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLubyte > { static GLint DataType ( ) { return GL_UNSIGNED_BYTE ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_R8 ; case 2 : return GL_RG8 ; case 3 : return GL_RGB8 ; case 4 : return GL_RGBA8 ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for unsigned short.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLushort > { static GLint DataType ( ) { return GL_UNSIGNED_SHORT ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_R16 ; case 2 : return GL_RG16 ; case 3 : return GL_RGB16 ; case 4 : return GL_RGBA16 ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for float.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLfloat > { static GLint DataType ( ) { return GL_FLOAT ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_R32F ; case 2 : return GL_RG32F ; case 3 : return GL_RGB32F ; case 4 : return GL_RGBA32F ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for unsigned int.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLuint > { static GLint DataType ( ) { return GL_UNSIGNED_INT ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_RED ; case 2 : return GL_RG ; case 3 : return GL_RGB ; case 4 : return GL_RGBA ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for signed byte.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLbyte > { static GLint DataType ( ) { return GL_BYTE ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_R8_SNORM ; case 2 : return GL_RG8_SNORM ; case 3 : return GL_RGB8_SNORM ; case 4 : return GL_RGBA8_SNORM ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for signed short.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLshort > { static GLint DataType ( ) { return GL_SHORT ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_R16_SNORM ; case 2 : return GL_RG16_SNORM ; case 3 : return GL_RGB16_SNORM ; case 4 : return GL_RGBA16_SNORM ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

## ! Specialization for signed int.

## !!!Ignored construct:  template < > [end of template] struct OpenGl_TextureFormatSelector < GLint > { static GLint DataType ( ) { return GL_INT ; } static GLint Internal ( GLuint theChannels ) { switch ( theChannels ) { case 1 : return GL_RED_SNORM ; case 2 : return GL_RG_SNORM ; case 3 : return GL_RGB_SNORM ; case 4 : return GL_RGBA_SNORM ; default : return GL_NONE ; } } } ;
## Error: identifier expected, but got: <!!!

##  =======================================================================
##  function : Create
##  purpose  :
##  =======================================================================

proc Create*(this: var OpenGl_TextureFormatSelectorOpenGl_TextureFormat): OpenGl_TextureFormatSelectorOpenGl_TextureFormat {.
    importcpp: "Create", header: "OpenGl_TextureFormat.hxx".}