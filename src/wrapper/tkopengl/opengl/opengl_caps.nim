import opengl_types



##  Created on: 2013-08-25
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

## ! Class to define graphic driver capabilities.
## ! Notice that these options will be ignored if particular functionality does not provided by GL driver



proc newOpenGlCaps*(): OpenGlCaps {.cdecl, constructor, importcpp: "OpenGl_Caps(@)",
                                 header: "OpenGl_Caps.hxx".}
proc destroyOpenGlCaps*(this: var OpenGlCaps) {.cdecl, importcpp: "#.~OpenGl_Caps()",
    header: "OpenGl_Caps.hxx".}


