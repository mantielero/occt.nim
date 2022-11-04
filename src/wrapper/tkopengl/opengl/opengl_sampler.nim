import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



##  Created on: 2014-10-08
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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



proc newOpenGlSampler*(theParams: Handle[Graphic3dTextureParams]): OpenGlSampler {.
    cdecl, constructor, importcpp: "OpenGl_Sampler(@)", header: "Opengl_Sampler.hxx".}
proc destroyOpenGlSampler*(this: var OpenGlSampler) {.cdecl,
    importcpp: "#.~OpenGl_Sampler()", header: "Opengl_Sampler.hxx".}
proc release*(this: var OpenGlSampler; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "Opengl_Sampler.hxx".}
proc estimatedDataSize*(this: OpenGlSampler): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "Opengl_Sampler.hxx".}
proc create*(this: var OpenGlSampler; theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Create", header: "Opengl_Sampler.hxx".}
proc init*(this: var OpenGlSampler; theContext: Handle[OpenGlContext];
          theTexture: OpenGlTexture): bool {.cdecl, importcpp: "Init",
    header: "Opengl_Sampler.hxx".}
proc isValid*(this: OpenGlSampler): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       header: "Opengl_Sampler.hxx".}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Bind", header: "Opengl_Sampler.hxx".}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Unbind", header: "Opengl_Sampler.hxx".}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.cdecl, importcpp: "Bind",
    header: "Opengl_Sampler.hxx".}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.cdecl, importcpp: "Unbind",
    header: "Opengl_Sampler.hxx".}
proc setParameter*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
                  theTarget: GLenum; theParam: GLenum; theValue: GLint) {.cdecl,
    importcpp: "SetParameter", header: "Opengl_Sampler.hxx".}
proc samplerID*(this: OpenGlSampler): GLuint {.noSideEffect, cdecl,
    importcpp: "SamplerID", header: "Opengl_Sampler.hxx".}
proc isImmutable*(this: OpenGlSampler): bool {.noSideEffect, cdecl,
    importcpp: "IsImmutable", header: "Opengl_Sampler.hxx".}
proc setImmutable*(this: var OpenGlSampler) {.cdecl, importcpp: "SetImmutable",
    header: "Opengl_Sampler.hxx".}
proc parameters*(this: var OpenGlSampler): Handle[Graphic3dTextureParams] {.cdecl,
    importcpp: "Parameters", header: "Opengl_Sampler.hxx".}
proc setParameters*(this: var OpenGlSampler;
                   theParams: Handle[Graphic3dTextureParams]) {.cdecl,
    importcpp: "SetParameters", header: "Opengl_Sampler.hxx".}
proc toUpdateParameters*(this: OpenGlSampler): bool {.noSideEffect, cdecl,
    importcpp: "ToUpdateParameters", header: "Opengl_Sampler.hxx".}


