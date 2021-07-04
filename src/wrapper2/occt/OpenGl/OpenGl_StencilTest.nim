##  Created on: 2013-09-26
##  Created by: Dmitry BOBYLEV
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

import
  OpenGl_Element

type
  OpenGl_StencilTest* {.importcpp: "OpenGl_StencilTest",
                       header: "OpenGl_StencilTest.hxx", bycopy.} = object of OpenGl_Element ##
                                                                                      ## !
                                                                                      ## Default
                                                                                      ## constructor
                                                                                      ##
                                                                                      ## !
                                                                                      ## Destructor


proc constructOpenGl_StencilTest*(): OpenGl_StencilTest {.constructor,
    importcpp: "OpenGl_StencilTest(@)", header: "OpenGl_StencilTest.hxx".}
proc Render*(this: OpenGl_StencilTest; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_StencilTest.hxx".}
proc Release*(this: var OpenGl_StencilTest; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_StencilTest.hxx".}
proc SetOptions*(this: var OpenGl_StencilTest; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetOptions", header: "OpenGl_StencilTest.hxx".}
proc DumpJson*(this: OpenGl_StencilTest; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_StencilTest.hxx".}