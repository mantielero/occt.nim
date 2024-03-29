import ../standard/standard_types
import opengl_types



##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Index buffer is just a VBO with special target (GL_ELEMENT_ARRAY_BUFFER).



proc newOpenGlIndexBuffer*(): OpenGlIndexBuffer {.cdecl, constructor,
    importcpp: "OpenGl_IndexBuffer(@)", header: "OpenGl_IndexBuffer.hxx".}
proc getTarget*(this: OpenGlIndexBuffer): GLenum {.noSideEffect, cdecl,
    importcpp: "GetTarget", header: "OpenGl_IndexBuffer.hxx".}
proc dumpJson*(this: OpenGlIndexBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_IndexBuffer.hxx".}


