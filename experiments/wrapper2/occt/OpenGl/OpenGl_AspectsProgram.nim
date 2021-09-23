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

import
  ../Graphic3d/Graphic3d_ShaderProgram

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_ShaderProgram"
type
  OpenGl_AspectsProgram* {.importcpp: "OpenGl_AspectsProgram",
                          header: "OpenGl_AspectsProgram.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor.
                                                                            ## !
                                                                            ## Build
                                                                            ## shader
                                                                            ## resource.


proc constructOpenGl_AspectsProgram*(): OpenGl_AspectsProgram {.constructor,
    importcpp: "OpenGl_AspectsProgram(@)", header: "OpenGl_AspectsProgram.hxx".}
proc ShaderProgram*(this: var OpenGl_AspectsProgram; theCtx: handle[OpenGl_Context];
                   theShader: handle[Graphic3d_ShaderProgram]): handle[
    OpenGl_ShaderProgram] {.importcpp: "ShaderProgram",
                           header: "OpenGl_AspectsProgram.hxx".}
proc UpdateRediness*(this: var OpenGl_AspectsProgram;
                    theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "UpdateRediness", header: "OpenGl_AspectsProgram.hxx".}
proc Release*(this: var OpenGl_AspectsProgram; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_AspectsProgram.hxx".}