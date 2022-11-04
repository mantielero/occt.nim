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

discard "forward decl of OpenGl_Texture"
type
  OpenGlSampler* {.importcpp: "OpenGl_Sampler", header: "OpenGl_Sampler.hxx", bycopy.} = object of OpenGlResource ##
                                                                                                        ## !
                                                                                                        ## Helpful
                                                                                                        ## constant
                                                                                                        ## defining
                                                                                                        ## invalid
                                                                                                        ## sampler
                                                                                                        ## identifier
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## new
                                                                                                        ## sampler
                                                                                                        ## object.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Checks
                                                                                                        ## if
                                                                                                        ## sampler
                                                                                                        ## object
                                                                                                        ## is
                                                                                                        ## valid.
    ## !< texture parameters
    ## !< modification counter of parameters related to sampler state
    ## !< OpenGL sampler object ID
    ## !< immutable flag preventing further modifications of sampler parameters, FALSE by default


proc newOpenGlSampler*(theParams: Handle[Graphic3dTextureParams]): OpenGlSampler {.
    cdecl, constructor, importcpp: "OpenGl_Sampler(@)", dynlib: tkkxbase.}
proc destroyOpenGlSampler*(this: var OpenGlSampler) {.cdecl,
    importcpp: "#.~OpenGl_Sampler()", dynlib: tkkxbase.}
proc release*(this: var OpenGlSampler; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlSampler): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc create*(this: var OpenGlSampler; theContext: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Create", dynlib: tkkxbase.}
proc init*(this: var OpenGlSampler; theContext: Handle[OpenGlContext];
          theTexture: OpenGlTexture): bool {.cdecl, importcpp: "Init",
    dynlib: tkkxbase.}
proc isValid*(this: OpenGlSampler): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       dynlib: tkkxbase.}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Unbind", dynlib: tkkxbase.}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.cdecl, importcpp: "Bind",
    dynlib: tkkxbase.}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.cdecl, importcpp: "Unbind",
    dynlib: tkkxbase.}
proc setParameter*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
                  theTarget: GLenum; theParam: GLenum; theValue: GLint) {.cdecl,
    importcpp: "SetParameter", dynlib: tkkxbase.}
proc samplerID*(this: OpenGlSampler): GLuint {.noSideEffect, cdecl,
    importcpp: "SamplerID", dynlib: tkkxbase.}
proc isImmutable*(this: OpenGlSampler): bool {.noSideEffect, cdecl,
    importcpp: "IsImmutable", dynlib: tkkxbase.}
proc setImmutable*(this: var OpenGlSampler) {.cdecl, importcpp: "SetImmutable",
    dynlib: tkkxbase.}
proc parameters*(this: var OpenGlSampler): Handle[Graphic3dTextureParams] {.cdecl,
    importcpp: "Parameters", dynlib: tkkxbase.}
proc setParameters*(this: var OpenGlSampler;
                   theParams: Handle[Graphic3dTextureParams]) {.cdecl,
    importcpp: "SetParameters", dynlib: tkkxbase.}
proc toUpdateParameters*(this: OpenGlSampler): bool {.noSideEffect, cdecl,
    importcpp: "ToUpdateParameters", dynlib: tkkxbase.}
type
  HandleOpenGlSampler* = Handle[OpenGlSampler]
