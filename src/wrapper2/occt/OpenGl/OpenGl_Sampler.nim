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

  OpenGlSamplerbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_Sampler::get_type_name(@)",
                            header: "OpenGl_Sampler.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Sampler::get_type_descriptor(@)",
    header: "OpenGl_Sampler.hxx".}
proc dynamicType*(this: OpenGlSampler): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Sampler.hxx".}
proc constructOpenGlSampler*(theParams: Handle[Graphic3dTextureParams]): OpenGlSampler {.
    constructor, importcpp: "OpenGl_Sampler(@)", header: "OpenGl_Sampler.hxx".}
proc destroyOpenGlSampler*(this: var OpenGlSampler) {.
    importcpp: "#.~OpenGl_Sampler()", header: "OpenGl_Sampler.hxx".}
proc release*(this: var OpenGlSampler; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Sampler.hxx".}
proc estimatedDataSize*(this: OpenGlSampler): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Sampler.hxx".}
proc create*(this: var OpenGlSampler; theContext: Handle[OpenGlContext]): StandardBoolean {.
    importcpp: "Create", header: "OpenGl_Sampler.hxx".}
proc init*(this: var OpenGlSampler; theContext: Handle[OpenGlContext];
          theTexture: OpenGlTexture): StandardBoolean {.importcpp: "Init",
    header: "OpenGl_Sampler.hxx".}
proc isValid*(this: OpenGlSampler): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_Sampler.hxx".}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.
    importcpp: "Bind", header: "OpenGl_Sampler.hxx".}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext]) {.
    importcpp: "Unbind", header: "OpenGl_Sampler.hxx".}
proc `bind`*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.importcpp: "Bind",
    header: "OpenGl_Sampler.hxx".}
proc unbind*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
            theUnit: Graphic3dTextureUnit) {.importcpp: "Unbind",
    header: "OpenGl_Sampler.hxx".}
proc setParameter*(this: var OpenGlSampler; theCtx: Handle[OpenGlContext];
                  theTarget: GLenum; theParam: GLenum; theValue: GLint) {.
    importcpp: "SetParameter", header: "OpenGl_Sampler.hxx".}
proc samplerID*(this: OpenGlSampler): GLuint {.noSideEffect, importcpp: "SamplerID",
    header: "OpenGl_Sampler.hxx".}
proc isImmutable*(this: OpenGlSampler): bool {.noSideEffect,
    importcpp: "IsImmutable", header: "OpenGl_Sampler.hxx".}
proc setImmutable*(this: var OpenGlSampler) {.importcpp: "SetImmutable",
    header: "OpenGl_Sampler.hxx".}
proc parameters*(this: var OpenGlSampler): Handle[Graphic3dTextureParams] {.
    importcpp: "Parameters", header: "OpenGl_Sampler.hxx".}
proc setParameters*(this: var OpenGlSampler;
                   theParams: Handle[Graphic3dTextureParams]) {.
    importcpp: "SetParameters", header: "OpenGl_Sampler.hxx".}
proc toUpdateParameters*(this: OpenGlSampler): bool {.noSideEffect,
    importcpp: "ToUpdateParameters", header: "OpenGl_Sampler.hxx".}
discard "forward decl of OpenGl_Sampler"
type
  HandleOpenGlSampler* = Handle[OpenGlSampler]


