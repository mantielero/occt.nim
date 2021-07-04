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

import
  ../Standard/Standard_Type

discard "forward decl of Standard_Transient"
discard "forward decl of OpenGl_Context"
type
  OpenGl_Resource* {.importcpp: "OpenGl_Resource", header: "OpenGl_Resource.hxx",
                    bycopy.} = object of Standard_Transient ## ! Empty constructor
                                                       ## ! Copy should be performed only within Handles!


proc constructOpenGl_Resource*(): OpenGl_Resource {.constructor,
    importcpp: "OpenGl_Resource(@)", header: "OpenGl_Resource.hxx".}
proc destroyOpenGl_Resource*(this: var OpenGl_Resource) {.
    importcpp: "#.~OpenGl_Resource()", header: "OpenGl_Resource.hxx".}
proc Release*(this: var OpenGl_Resource; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Resource.hxx".}
proc EstimatedDataSize*(this: OpenGl_Resource): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Resource.hxx".}
proc DumpJson*(this: OpenGl_Resource; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Resource.hxx".}
type
  OpenGl_Resourcebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_Resource::get_type_name(@)",
                              header: "OpenGl_Resource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Resource::get_type_descriptor(@)",
    header: "OpenGl_Resource.hxx".}
proc DynamicType*(this: OpenGl_Resource): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Resource.hxx".}
discard "forward decl of OpenGl_Resource"
type
  Handle_OpenGl_Resource* = handle[OpenGl_Resource]
