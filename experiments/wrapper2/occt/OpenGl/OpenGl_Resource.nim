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

discard "forward decl of Standard_Transient"
discard "forward decl of OpenGl_Context"
type
  OpenGlResource* {.importcpp: "OpenGl_Resource", header: "OpenGl_Resource.hxx",
                   bycopy.} = object of StandardTransient ## ! Empty constructor
                                                     ## ! Copy should be performed only within Handles!


proc constructOpenGlResource*(): OpenGlResource {.constructor,
    importcpp: "OpenGl_Resource(@)", header: "OpenGl_Resource.hxx".}
proc destroyOpenGlResource*(this: var OpenGlResource) {.
    importcpp: "#.~OpenGl_Resource()", header: "OpenGl_Resource.hxx".}
proc release*(this: var OpenGlResource; theGlCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Resource.hxx".}
proc estimatedDataSize*(this: OpenGlResource): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Resource.hxx".}
proc dumpJson*(this: OpenGlResource; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_Resource.hxx".}
type
  OpenGlResourcebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_Resource::get_type_name(@)",
                            header: "OpenGl_Resource.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Resource::get_type_descriptor(@)",
    header: "OpenGl_Resource.hxx".}
proc dynamicType*(this: OpenGlResource): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Resource.hxx".}
discard "forward decl of OpenGl_Resource"
type
  HandleC1C1* = Handle[OpenGlResource]


























