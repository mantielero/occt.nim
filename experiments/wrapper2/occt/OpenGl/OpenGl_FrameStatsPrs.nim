##  Copyright (c) 2017 OPEN CASCADE SAS
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
  OpenGl_FrameStats, OpenGl_Text

discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Graphic3d_TransformPers"
discard "forward decl of OpenGl_IndexBuffer"
discard "forward decl of OpenGl_VertexBuffer"
type
  OpenGl_FrameStatsPrs* {.importcpp: "OpenGl_FrameStatsPrs",
                         header: "OpenGl_FrameStatsPrs.hxx", bycopy.} = object of OpenGl_Element ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Update
                                                                                          ## chart
                                                                                          ## presentation.
    ## !< currently displayed stats
    ## !< transformation persistence for counters presentation
    ## !< counters presentation
    ## !< text aspect
    ## !< transformation persistence for chart presentation
    ## !< array of chart triangles
    ## !< VBO with chart triangles
    ## !< VBO with chart triangle indexes
    ## !< array of chart lines
    ## !< chart labels


proc constructOpenGl_FrameStatsPrs*(): OpenGl_FrameStatsPrs {.constructor,
    importcpp: "OpenGl_FrameStatsPrs(@)", header: "OpenGl_FrameStatsPrs.hxx".}
proc destroyOpenGl_FrameStatsPrs*(this: var OpenGl_FrameStatsPrs) {.
    importcpp: "#.~OpenGl_FrameStatsPrs()", header: "OpenGl_FrameStatsPrs.hxx".}
proc Render*(this: OpenGl_FrameStatsPrs; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_FrameStatsPrs.hxx".}
proc Release*(this: var OpenGl_FrameStatsPrs; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_FrameStatsPrs.hxx".}
proc Update*(this: var OpenGl_FrameStatsPrs; theWorkspace: handle[OpenGl_Workspace]) {.
    importcpp: "Update", header: "OpenGl_FrameStatsPrs.hxx".}
proc SetTextAspect*(this: var OpenGl_FrameStatsPrs;
                   theAspect: handle[Graphic3d_AspectText3d]) {.
    importcpp: "SetTextAspect", header: "OpenGl_FrameStatsPrs.hxx".}
proc DumpJson*(this: OpenGl_FrameStatsPrs; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_FrameStatsPrs.hxx".}