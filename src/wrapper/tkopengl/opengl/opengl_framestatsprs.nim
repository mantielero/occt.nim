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

discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Graphic3d_TransformPers"
discard "forward decl of OpenGl_IndexBuffer"
discard "forward decl of OpenGl_VertexBuffer"
type
  OpenGlFrameStatsPrs* {.importcpp: "OpenGl_FrameStatsPrs",
                        header: "OpenGl_FrameStatsPrs.hxx", bycopy.} = object of OpenGlElement ##
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


proc newOpenGlFrameStatsPrs*(): OpenGlFrameStatsPrs {.cdecl, constructor,
    importcpp: "OpenGl_FrameStatsPrs(@)", dynlib: tkkxbase.}
proc destroyOpenGlFrameStatsPrs*(this: var OpenGlFrameStatsPrs) {.cdecl,
    importcpp: "#.~OpenGl_FrameStatsPrs()", dynlib: tkkxbase.}
proc render*(this: OpenGlFrameStatsPrs; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlFrameStatsPrs; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc update*(this: var OpenGlFrameStatsPrs; theWorkspace: Handle[OpenGlWorkspace]) {.
    cdecl, importcpp: "Update", dynlib: tkkxbase.}
proc setTextAspect*(this: var OpenGlFrameStatsPrs;
                   theAspect: Handle[Graphic3dAspectText3d]) {.cdecl,
    importcpp: "SetTextAspect", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlFrameStatsPrs; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}