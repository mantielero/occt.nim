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

discard "forward decl of OpenGl_Context"
type
  OpenGlTextureFormat* {.importcpp: "OpenGl_TextureFormat",
                        header: "OpenGl_TextureFormat.hxx", bycopy.} = object ## ! Returns texture format for
                                                                         ## specified type and number of
                                                                         ## channels.
                                                                         ## ! @tparam
                                                                         ## theCompType
                                                                         ## component type
                                                                         ## ! @tparam
                                                                         ## theNbComps  number of
                                                                         ## components
                                                                         ## ! Empty
                                                                         ## constructor
                                                                         ## (invalid texture
                                                                         ## format).
                                                                         ## ! Returns OpenGL
                                                                         ## internal format of the pixel data
                                                                         ## (example:
                                                                         ## GL_R32F).
    ## !< OpenGL internal format of the pixel data
    ## !< OpenGL pixel format
    ## !< OpenGL data type of input pixel data
    ## !< number of channels for each pixel (from 1 to 4)


proc create*[TheCompType; TheNbComps: static[cint]](): OpenGlTextureFormat {.cdecl,
    importcpp: "OpenGl_TextureFormat::Create(@)", dynlib: tkkxbase.}
proc findFormat*(theCtx: Handle[OpenGlContext]; theFormat: ImageFormat;
                theIsColorMap: bool): OpenGlTextureFormat {.cdecl,
    importcpp: "OpenGl_TextureFormat::FindFormat(@)", dynlib: tkkxbase.}
proc findSizedFormat*(theCtx: Handle[OpenGlContext]; theSizedFormat: GLint): OpenGlTextureFormat {.
    cdecl, importcpp: "OpenGl_TextureFormat::FindSizedFormat(@)", dynlib: tkkxbase.}
proc findCompressedFormat*(theCtx: Handle[OpenGlContext];
                          theFormat: ImageCompressedFormat; theIsColorMap: bool): OpenGlTextureFormat {.
    cdecl, importcpp: "OpenGl_TextureFormat::FindCompressedFormat(@)",
    dynlib: tkkxbase.}
proc newOpenGlTextureFormat*(): OpenGlTextureFormat {.cdecl, constructor,
    importcpp: "OpenGl_TextureFormat(@)", dynlib: tkkxbase.}
proc isValid*(this: OpenGlTextureFormat): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkkxbase.}
proc internalFormat*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "InternalFormat", dynlib: tkkxbase.}
proc setInternalFormat*(this: var OpenGlTextureFormat; theInternal: GLint) {.cdecl,
    importcpp: "SetInternalFormat", dynlib: tkkxbase.}
proc pixelFormat*(this: OpenGlTextureFormat): GLenum {.noSideEffect, cdecl,
    importcpp: "PixelFormat", dynlib: tkkxbase.}
proc setPixelFormat*(this: var OpenGlTextureFormat; theFormat: GLenum) {.cdecl,
    importcpp: "SetPixelFormat", dynlib: tkkxbase.}
proc dataType*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "DataType", dynlib: tkkxbase.}
proc setDataType*(this: var OpenGlTextureFormat; theType: GLint) {.cdecl,
    importcpp: "SetDataType", dynlib: tkkxbase.}
proc nbComponents*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "NbComponents", dynlib: tkkxbase.}
proc setNbComponents*(this: var OpenGlTextureFormat; theNbComponents: GLint) {.cdecl,
    importcpp: "SetNbComponents", dynlib: tkkxbase.}
proc isSRGB*(this: OpenGlTextureFormat): bool {.noSideEffect, cdecl,
    importcpp: "IsSRGB", dynlib: tkkxbase.}
proc internal*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "Internal", dynlib: tkkxbase.}
proc format*(this: OpenGlTextureFormat): GLenum {.noSideEffect, cdecl,
    importcpp: "Format", dynlib: tkkxbase.}
## ! Selects preferable texture format for specified parameters.

type
  OpenGlTextureFormatSelector*[T] {.importcpp: "OpenGl_TextureFormatSelector<\'0>",
                                   header: "OpenGl_TextureFormat.hxx", bycopy.} = object ##  Not implemented


## ! Specialization for unsigned byte.
##  template<> struct OpenGl_TextureFormatSelector<GLubyte>
##  {
##    static GLint DataType() { return GL_UNSIGNED_BYTE; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_R8;
##        case 2:  return GL_RG8;
##        case 3:  return GL_RGB8;
##        case 4:  return GL_RGBA8;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for unsigned short.
##  template<> struct OpenGl_TextureFormatSelector<GLushort>
##  {
##    static GLint DataType() { return GL_UNSIGNED_SHORT; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_R16;
##        case 2:  return GL_RG16;
##        case 3:  return GL_RGB16;
##        case 4:  return GL_RGBA16;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for float.
##  template<> struct OpenGl_TextureFormatSelector<GLfloat>
##  {
##    static GLint DataType() { return GL_FLOAT; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_R32F;
##        case 2:  return GL_RG32F;
##        case 3:  return GL_RGB32F;
##        case 4:  return GL_RGBA32F;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for unsigned int.
##  template<> struct OpenGl_TextureFormatSelector<GLuint>
##  {
##    static GLint DataType() { return GL_UNSIGNED_INT; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_RED;
##        case 2:  return GL_RG;
##        case 3:  return GL_RGB;
##        case 4:  return GL_RGBA;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for signed byte.
##  template<> struct OpenGl_TextureFormatSelector<GLbyte>
##  {
##    static GLint DataType() { return GL_BYTE; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_R8_SNORM;
##        case 2:  return GL_RG8_SNORM;
##        case 3:  return GL_RGB8_SNORM;
##        case 4:  return GL_RGBA8_SNORM;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for signed short.
##  template<> struct OpenGl_TextureFormatSelector<GLshort>
##  {
##    static GLint DataType() { return GL_SHORT; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_R16_SNORM;
##        case 2:  return GL_RG16_SNORM;
##        case 3:  return GL_RGB16_SNORM;
##        case 4:  return GL_RGBA16_SNORM;
##        default: return GL_NONE;
##      }
##    }
##  };
##
##  //! Specialization for signed int.
##  template<> struct OpenGl_TextureFormatSelector<GLint>
##  {
##    static GLint DataType() { return GL_INT; }
##    static GLint Internal (GLuint theChannels)
##    {
##      switch (theChannels)
##      {
##        case 1:  return GL_RED_SNORM;
##        case 2:  return GL_RG_SNORM;
##        case 3:  return GL_RGB_SNORM;
##        case 4:  return GL_RGBA_SNORM;
##        default: return GL_NONE;
##      }
##    }
##  };
##  =======================================================================
##  function : Create
##  purpose  :
##  =======================================================================

proc create*(this: var OpenGlTextureFormat): OpenGlTextureFormat {.cdecl,
    importcpp: "Create", dynlib: tkkxbase.}