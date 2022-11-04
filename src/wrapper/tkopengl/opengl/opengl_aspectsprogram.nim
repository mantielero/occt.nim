import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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



proc newOpenGlAspectsProgram*(): OpenGlAspectsProgram {.cdecl, constructor,
    importcpp: "OpenGl_AspectsProgram(@)", header: "OpenGl_AspectsProgram.hxx".}
proc shaderProgram*(this: var OpenGlAspectsProgram; theCtx: Handle[OpenGlContext];
                   theShader: Handle[Graphic3dShaderProgram]): Handle[
    OpenGlShaderProgram] {.cdecl, importcpp: "ShaderProgram", header: "OpenGl_AspectsProgram.hxx".}
proc updateRediness*(this: var OpenGlAspectsProgram;
                    theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "UpdateRediness", header: "OpenGl_AspectsProgram.hxx".}
proc release*(this: var OpenGlAspectsProgram; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_AspectsProgram.hxx".}

