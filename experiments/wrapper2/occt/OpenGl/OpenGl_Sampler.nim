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

import
  OpenGl_Context, OpenGl_Resource

discard "forward decl of OpenGl_Texture"
type
  OpenGl_Sampler* {.importcpp: "OpenGl_Sampler", header: "OpenGl_Sampler.hxx", bycopy.} = object of OpenGl_Resource ##
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

  OpenGl_Samplerbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_Sampler::get_type_name(@)",
                              header: "OpenGl_Sampler.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Sampler::get_type_descriptor(@)",
    header: "OpenGl_Sampler.hxx".}
proc DynamicType*(this: OpenGl_Sampler): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Sampler.hxx".}
proc constructOpenGl_Sampler*(theParams: handle[Graphic3d_TextureParams]): OpenGl_Sampler {.
    constructor, importcpp: "OpenGl_Sampler(@)", header: "OpenGl_Sampler.hxx".}
proc destroyOpenGl_Sampler*(this: var OpenGl_Sampler) {.
    importcpp: "#.~OpenGl_Sampler()", header: "OpenGl_Sampler.hxx".}
proc Release*(this: var OpenGl_Sampler; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Sampler.hxx".}
proc EstimatedDataSize*(this: OpenGl_Sampler): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Sampler.hxx".}
proc Create*(this: var OpenGl_Sampler; theContext: handle[OpenGl_Context]): Standard_Boolean {.
    importcpp: "Create", header: "OpenGl_Sampler.hxx".}
proc Init*(this: var OpenGl_Sampler; theContext: handle[OpenGl_Context];
          theTexture: OpenGl_Texture): Standard_Boolean {.importcpp: "Init",
    header: "OpenGl_Sampler.hxx".}
proc IsValid*(this: OpenGl_Sampler): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "OpenGl_Sampler.hxx".}
proc Bind*(this: var OpenGl_Sampler; theCtx: handle[OpenGl_Context]) {.
    importcpp: "Bind", header: "OpenGl_Sampler.hxx".}
proc Unbind*(this: var OpenGl_Sampler; theCtx: handle[OpenGl_Context]) {.
    importcpp: "Unbind", header: "OpenGl_Sampler.hxx".}
proc Bind*(this: var OpenGl_Sampler; theCtx: handle[OpenGl_Context];
          theUnit: Graphic3d_TextureUnit) {.importcpp: "Bind",
    header: "OpenGl_Sampler.hxx".}
proc Unbind*(this: var OpenGl_Sampler; theCtx: handle[OpenGl_Context];
            theUnit: Graphic3d_TextureUnit) {.importcpp: "Unbind",
    header: "OpenGl_Sampler.hxx".}
proc SetParameter*(this: var OpenGl_Sampler; theCtx: handle[OpenGl_Context];
                  theTarget: GLenum; theParam: GLenum; theValue: GLint) {.
    importcpp: "SetParameter", header: "OpenGl_Sampler.hxx".}
proc SamplerID*(this: OpenGl_Sampler): GLuint {.noSideEffect, importcpp: "SamplerID",
    header: "OpenGl_Sampler.hxx".}
proc IsImmutable*(this: OpenGl_Sampler): bool {.noSideEffect,
    importcpp: "IsImmutable", header: "OpenGl_Sampler.hxx".}
proc SetImmutable*(this: var OpenGl_Sampler) {.importcpp: "SetImmutable",
    header: "OpenGl_Sampler.hxx".}
proc Parameters*(this: var OpenGl_Sampler): handle[Graphic3d_TextureParams] {.
    importcpp: "Parameters", header: "OpenGl_Sampler.hxx".}
proc SetParameters*(this: var OpenGl_Sampler;
                   theParams: handle[Graphic3d_TextureParams]) {.
    importcpp: "SetParameters", header: "OpenGl_Sampler.hxx".}
proc ToUpdateParameters*(this: OpenGl_Sampler): bool {.noSideEffect,
    importcpp: "ToUpdateParameters", header: "OpenGl_Sampler.hxx".}
discard "forward decl of OpenGl_Sampler"
type
  Handle_OpenGl_Sampler* = handle[OpenGl_Sampler]
