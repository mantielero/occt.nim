import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



##  Created on: 2014-10-08
##  Created by: Kirill Gavrilov
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

## ! Standard GLSL program combination bits.






proc newOpenGlSetOfPrograms*(): OpenGlSetOfPrograms {.cdecl, constructor,
    importcpp: "OpenGl_SetOfPrograms(@)", header: "OpenGl_SetsOfShaderPrograms.hxx".}
proc changeValue*(this: var OpenGlSetOfPrograms; theProgramBits: cint): var Handle[
    OpenGlShaderProgram] {.cdecl, importcpp: "ChangeValue", header: "OpenGl_SetsOfShaderPrograms.hxx".}
## ! Alias to 2D programs array of predefined length



proc newOpenGlSetOfShaderPrograms*(): OpenGlSetOfShaderPrograms {.cdecl,
    constructor, importcpp: "OpenGl_SetOfShaderPrograms(@)", header: "OpenGl_SetsOfShaderPrograms.hxx".}
proc newOpenGlSetOfShaderPrograms*(thePrograms: Handle[OpenGlSetOfPrograms]): OpenGlSetOfShaderPrograms {.
    cdecl, constructor, importcpp: "OpenGl_SetOfShaderPrograms(@)", header: "OpenGl_SetsOfShaderPrograms.hxx".}
proc changeValue*(this: var OpenGlSetOfShaderPrograms;
                 theShadingModel: Graphic3dTypeOfShadingModel;
                 theProgramBits: cint): var Handle[OpenGlShaderProgram] {.cdecl,
    importcpp: "ChangeValue", header: "OpenGl_SetsOfShaderPrograms.hxx".}


