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

discard "forward decl of Graphic3d_FrameStatsDataTmp"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_Context"
type
  OpenGlElement* {.importcpp: "OpenGl_Element", header: "OpenGl_Element.hxx", bycopy.} = object ##
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


proc newOpenGlElement*(): OpenGlElement {.cdecl, constructor,
                                       importcpp: "OpenGl_Element(@)",
                                       dynlib: tkkxbase.}
proc render*(this: OpenGlElement; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlElement; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc destroy*[TheResourceT](theContext: ptr OpenGlContext;
                           theElement: ptr TheResourceT) {.cdecl,
    importcpp: "OpenGl_Element::Destroy(@)", dynlib: tkkxbase.}
proc isFillDrawMode*(this: OpenGlElement): bool {.noSideEffect, cdecl,
    importcpp: "IsFillDrawMode", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlElement): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc updateMemStats*(this: OpenGlElement; theStats: var Graphic3dFrameStatsDataTmp) {.
    noSideEffect, cdecl, importcpp: "UpdateMemStats", dynlib: tkkxbase.}
proc updateDrawStats*(this: OpenGlElement;
                     theStats: var Graphic3dFrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, cdecl, importcpp: "UpdateDrawStats", dynlib: tkkxbase.}
proc synchronizeAspects*(this: var OpenGlElement) {.cdecl,
    importcpp: "SynchronizeAspects", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlElement; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}