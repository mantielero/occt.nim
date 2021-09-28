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

type
  OpenGlIndexBuffer* {.importcpp: "OpenGl_IndexBuffer",
                      header: "OpenGl_IndexBuffer.hxx", bycopy.} = object of OpenGlVertexBuffer


proc constructOpenGlIndexBuffer*(): OpenGlIndexBuffer {.constructor,
    importcpp: "OpenGl_IndexBuffer(@)", header: "OpenGl_IndexBuffer.hxx".}
proc getTarget*(this: OpenGlIndexBuffer): GLenum {.noSideEffect,
    importcpp: "GetTarget", header: "OpenGl_IndexBuffer.hxx".}
proc dumpJson*(this: OpenGlIndexBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_IndexBuffer.hxx".}
type
  OpenGlIndexBufferbaseType* = OpenGlVertexBuffer

proc getTypeName*(): cstring {.importcpp: "OpenGl_IndexBuffer::get_type_name(@)",
                            header: "OpenGl_IndexBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_IndexBuffer::get_type_descriptor(@)",
    header: "OpenGl_IndexBuffer.hxx".}
proc dynamicType*(this: OpenGlIndexBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_IndexBuffer.hxx".}
discard "forward decl of OpenGl_IndexBuffer"
type
  HandleC1C1* = Handle[OpenGlIndexBuffer]


























