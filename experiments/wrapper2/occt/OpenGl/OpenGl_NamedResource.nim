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
  OpenGl_Resource, ../TCollection/TCollection_AsciiString

## ! Named resource object.

type
  OpenGl_NamedResource* {.importcpp: "OpenGl_NamedResource",
                         header: "OpenGl_NamedResource.hxx", bycopy.} = object of OpenGl_Resource ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor
    ## !< resource name

  OpenGl_NamedResourcebase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_NamedResource::get_type_name(@)",
                              header: "OpenGl_NamedResource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_NamedResource::get_type_descriptor(@)",
    header: "OpenGl_NamedResource.hxx".}
proc DynamicType*(this: OpenGl_NamedResource): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_NamedResource.hxx".}
proc constructOpenGl_NamedResource*(theId: TCollection_AsciiString): OpenGl_NamedResource {.
    constructor, importcpp: "OpenGl_NamedResource(@)",
    header: "OpenGl_NamedResource.hxx".}
proc ResourceId*(this: OpenGl_NamedResource): TCollection_AsciiString {.
    noSideEffect, importcpp: "ResourceId", header: "OpenGl_NamedResource.hxx".}