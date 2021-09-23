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
  OpenGl_Element, OpenGl_Vec

discard "forward decl of gp_Ax2"
type
  OpenGl_Flipper* {.importcpp: "OpenGl_Flipper", header: "OpenGl_Flipper.hxx", bycopy.} = object of OpenGl_Element ##
                                                                                                         ## !
                                                                                                         ## Construct
                                                                                                         ## rendering
                                                                                                         ## element
                                                                                                         ## to
                                                                                                         ## flip
                                                                                                         ## model-view
                                                                                                         ## matrix
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## along
                                                                                                         ## the
                                                                                                         ## reference
                                                                                                         ## system
                                                                                                         ## to
                                                                                                         ## ensure
                                                                                                         ## up-Y,
                                                                                                         ## right-X
                                                                                                         ## orientation.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theReferenceSystem
                                                                                                         ## [in]
                                                                                                         ## the
                                                                                                         ## reference
                                                                                                         ## coordinate
                                                                                                         ## system.


proc constructOpenGl_Flipper*(theReferenceSystem: gp_Ax2): OpenGl_Flipper {.
    constructor, importcpp: "OpenGl_Flipper(@)", header: "OpenGl_Flipper.hxx".}
proc SetOptions*(this: var OpenGl_Flipper; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetOptions", header: "OpenGl_Flipper.hxx".}
proc Render*(this: OpenGl_Flipper; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Flipper.hxx".}
proc Release*(this: var OpenGl_Flipper; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Flipper.hxx".}
proc DumpJson*(this: OpenGl_Flipper; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Flipper.hxx".}