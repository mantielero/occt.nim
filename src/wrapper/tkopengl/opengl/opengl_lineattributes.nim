import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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






proc newOpenGlLineAttributes*(): OpenGlLineAttributes {.cdecl, constructor,
    importcpp: "OpenGl_LineAttributes(@)", header: "OpenGl_LineAttributes.hxx".}
proc destroyOpenGlLineAttributes*(this: var OpenGlLineAttributes) {.cdecl,
    importcpp: "#.~OpenGl_LineAttributes()", header: "OpenGl_LineAttributes.hxx".}
proc release*(this: var OpenGlLineAttributes; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_LineAttributes.hxx".}
proc estimatedDataSize*(this: OpenGlLineAttributes): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_LineAttributes.hxx".}
proc setTypeOfHatch*(this: var OpenGlLineAttributes; theGlCtx: ptr OpenGlContext;
                    theStyle: Handle[Graphic3dHatchStyle]): bool {.cdecl,
    importcpp: "SetTypeOfHatch", header: "OpenGl_LineAttributes.hxx".}

