import opengl_types
import ../standard/standard_types


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


proc create*[TheCompType; TheNbComps: static[cint]](): OpenGlTextureFormat {.cdecl,
    importcpp: "OpenGl_TextureFormat::Create(@)", header: "OpenGl_TextureFormat.hxx".}
# proc findFormat*(theCtx: Handle[OpenGlContext]; theFormat: ImageFormat;
#                 theIsColorMap: bool): OpenGlTextureFormat {.cdecl,
#     importcpp: "OpenGl_TextureFormat::FindFormat(@)", header: "OpenGl_TextureFormat.hxx".}
proc findSizedFormat*(theCtx: Handle[OpenGlContext]; theSizedFormat: GLint): OpenGlTextureFormat {.
    cdecl, importcpp: "OpenGl_TextureFormat::FindSizedFormat(@)", header: "OpenGl_TextureFormat.hxx".}
# proc findCompressedFormat*(theCtx: Handle[OpenGlContext];
#                           theFormat: ImageCompressedFormat; theIsColorMap: bool): OpenGlTextureFormat {.
#     cdecl, importcpp: "OpenGl_TextureFormat::FindCompressedFormat(@)",
#     header: "OpenGl_TextureFormat.hxx".}
proc newOpenGlTextureFormat*(): OpenGlTextureFormat {.cdecl, constructor,
    importcpp: "OpenGl_TextureFormat(@)", header: "OpenGl_TextureFormat.hxx".}
proc isValid*(this: OpenGlTextureFormat): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "OpenGl_TextureFormat.hxx".}
proc internalFormat*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "InternalFormat", header: "OpenGl_TextureFormat.hxx".}
proc setInternalFormat*(this: var OpenGlTextureFormat; theInternal: GLint) {.cdecl,
    importcpp: "SetInternalFormat", header: "OpenGl_TextureFormat.hxx".}
proc pixelFormat*(this: OpenGlTextureFormat): GLenum {.noSideEffect, cdecl,
    importcpp: "PixelFormat", header: "OpenGl_TextureFormat.hxx".}
proc setPixelFormat*(this: var OpenGlTextureFormat; theFormat: GLenum) {.cdecl,
    importcpp: "SetPixelFormat", header: "OpenGl_TextureFormat.hxx".}
proc dataType*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "DataType", header: "OpenGl_TextureFormat.hxx".}
proc setDataType*(this: var OpenGlTextureFormat; theType: GLint) {.cdecl,
    importcpp: "SetDataType", header: "OpenGl_TextureFormat.hxx".}
proc nbComponents*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "NbComponents", header: "OpenGl_TextureFormat.hxx".}
proc setNbComponents*(this: var OpenGlTextureFormat; theNbComponents: GLint) {.cdecl,
    importcpp: "SetNbComponents", header: "OpenGl_TextureFormat.hxx".}
proc isSRGB*(this: OpenGlTextureFormat): bool {.noSideEffect, cdecl,
    importcpp: "IsSRGB", header: "OpenGl_TextureFormat.hxx".}
proc internal*(this: OpenGlTextureFormat): GLint {.noSideEffect, cdecl,
    importcpp: "Internal", header: "OpenGl_TextureFormat.hxx".}
proc format*(this: OpenGlTextureFormat): GLenum {.noSideEffect, cdecl,
    importcpp: "Format", header: "OpenGl_TextureFormat.hxx".}
## ! Selects preferable texture format for specified parameters.




proc create*(this: var OpenGlTextureFormat): OpenGlTextureFormat {.cdecl,
    importcpp: "Create", header: "OpenGl_TextureFormat.hxx".}
