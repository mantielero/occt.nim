import ../standard/standard_types
import ../graphic3d/graphic3d_types
import opengl_types



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



proc newOpenGlFrameStatsPrs*(): OpenGlFrameStatsPrs {.cdecl, constructor,
    importcpp: "OpenGl_FrameStatsPrs(@)", header: "OpenGl_FrameStatsPrs.hxx".}
proc destroyOpenGlFrameStatsPrs*(this: var OpenGlFrameStatsPrs) {.cdecl,
    importcpp: "#.~OpenGl_FrameStatsPrs()", header: "OpenGl_FrameStatsPrs.hxx".}
proc render*(this: OpenGlFrameStatsPrs; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_FrameStatsPrs.hxx".}
proc release*(this: var OpenGlFrameStatsPrs; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_FrameStatsPrs.hxx".}
proc update*(this: var OpenGlFrameStatsPrs; theWorkspace: Handle[OpenGlWorkspace]) {.
    cdecl, importcpp: "Update", header: "OpenGl_FrameStatsPrs.hxx".}
proc setTextAspect*(this: var OpenGlFrameStatsPrs;
                   theAspect: Handle[Graphic3dAspectText3d]) {.cdecl,
    importcpp: "SetTextAspect", header: "OpenGl_FrameStatsPrs.hxx".}
proc dumpJson*(this: OpenGlFrameStatsPrs; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_FrameStatsPrs.hxx".}

