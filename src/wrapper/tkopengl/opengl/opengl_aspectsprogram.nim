##  Copyright (c) 2019 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_ShaderProgram"
type
  OpenGlAspectsProgram* {.importcpp: "OpenGl_AspectsProgram",
                         header: "OpenGl_AspectsProgram.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor.
                                                                           ## ! Build
                                                                           ## shader
                                                                           ## resource.


proc newOpenGlAspectsProgram*(): OpenGlAspectsProgram {.cdecl, constructor,
    importcpp: "OpenGl_AspectsProgram(@)", dynlib: tkkxbase.}
proc shaderProgram*(this: var OpenGlAspectsProgram; theCtx: Handle[OpenGlContext];
                   theShader: Handle[Graphic3dShaderProgram]): Handle[
    OpenGlShaderProgram] {.cdecl, importcpp: "ShaderProgram", dynlib: tkkxbase.}
proc updateRediness*(this: var OpenGlAspectsProgram;
                    theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "UpdateRediness", dynlib: tkkxbase.}
proc release*(this: var OpenGlAspectsProgram; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}