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

## ! Named resource object.

type
  OpenGlNamedResource* {.importcpp: "OpenGl_NamedResource",
                        header: "OpenGl_NamedResource.hxx", bycopy.} = object of OpenGlResource ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< resource name


proc newOpenGlNamedResource*(theId: TCollectionAsciiString): OpenGlNamedResource {.
    cdecl, constructor, importcpp: "OpenGl_NamedResource(@)", dynlib: tkkxbase.}
proc resourceId*(this: OpenGlNamedResource): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "ResourceId", dynlib: tkkxbase.}