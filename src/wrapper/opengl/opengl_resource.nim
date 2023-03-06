import ../../tkernel/standard/standard_types
import opengl_types



##  Created on: 2011-03-18
##  Created by: Anton POLETAEV
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



proc newOpenGlResource*(): OpenGlResource {.cdecl, constructor,
    importcpp: "OpenGl_Resource(@)", header: "OpenGl_Resource.hxx".}
proc destroyOpenGlResource*(this: var OpenGlResource) {.cdecl,
    importcpp: "#.~OpenGl_Resource()", header: "OpenGl_Resource.hxx".}
proc release*(this: var OpenGlResource; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Resource.hxx".}
proc estimatedDataSize*(this: OpenGlResource): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Resource.hxx".}
proc dumpJson*(this: OpenGlResource; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Resource.hxx".}


