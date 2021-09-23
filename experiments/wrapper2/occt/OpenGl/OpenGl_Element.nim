##  Created on: 2011-08-05
##  Created by: Sergey ZERCHANINOV
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
  OpenGl_RenderFilter, ../Standard/Standard_Type

discard "forward decl of Graphic3d_FrameStatsDataTmp"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_Context"
type
  OpenGl_Element* {.importcpp: "OpenGl_Element", header: "OpenGl_Element.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Return
                                                                                         ## TRUE
                                                                                         ## if
                                                                                         ## primitive
                                                                                         ## type
                                                                                         ## generates
                                                                                         ## shaded
                                                                                         ## triangulation
                                                                                         ## (to
                                                                                         ## be
                                                                                         ## used
                                                                                         ## in
                                                                                         ## filters).


proc constructOpenGl_Element*(): OpenGl_Element {.constructor,
    importcpp: "OpenGl_Element(@)", header: "OpenGl_Element.hxx".}
proc Render*(this: OpenGl_Element; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Element.hxx".}
proc Release*(this: var OpenGl_Element; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Element.hxx".}
proc Destroy*[theResource_t](theContext: ptr OpenGl_Context;
                            theElement: ptr theResource_t) {.
    importcpp: "OpenGl_Element::Destroy(@)", header: "OpenGl_Element.hxx".}
proc IsFillDrawMode*(this: OpenGl_Element): Standard_Boolean {.noSideEffect,
    importcpp: "IsFillDrawMode", header: "OpenGl_Element.hxx".}
proc EstimatedDataSize*(this: OpenGl_Element): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Element.hxx".}
proc UpdateMemStats*(this: OpenGl_Element;
                    theStats: var Graphic3d_FrameStatsDataTmp) {.noSideEffect,
    importcpp: "UpdateMemStats", header: "OpenGl_Element.hxx".}
proc UpdateDrawStats*(this: OpenGl_Element;
                     theStats: var Graphic3d_FrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, importcpp: "UpdateDrawStats", header: "OpenGl_Element.hxx".}
proc SynchronizeAspects*(this: var OpenGl_Element) {.
    importcpp: "SynchronizeAspects", header: "OpenGl_Element.hxx".}
proc DumpJson*(this: OpenGl_Element; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Element.hxx".}