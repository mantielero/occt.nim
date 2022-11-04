import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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



proc newOpenGlElement*(): OpenGlElement {.cdecl, constructor,
                                       importcpp: "OpenGl_Element(@)",
                                       header: "OpenGl_Element.hxx".}
proc render*(this: OpenGlElement; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_Element.hxx".}
proc release*(this: var OpenGlElement; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Element.hxx".}
proc destroy*[TheResourceT](theContext: ptr OpenGlContext;
                           theElement: ptr TheResourceT) {.cdecl,
    importcpp: "OpenGl_Element::Destroy(@)", header: "OpenGl_Element.hxx".}
proc isFillDrawMode*(this: OpenGlElement): bool {.noSideEffect, cdecl,
    importcpp: "IsFillDrawMode", header: "OpenGl_Element.hxx".}
proc estimatedDataSize*(this: OpenGlElement): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Element.hxx".}
proc updateMemStats*(this: OpenGlElement; theStats: var Graphic3dFrameStatsDataTmp) {.
    noSideEffect, cdecl, importcpp: "UpdateMemStats", header: "OpenGl_Element.hxx".}
proc updateDrawStats*(this: OpenGlElement;
                     theStats: var Graphic3dFrameStatsDataTmp; theIsDetailed: bool) {.
    noSideEffect, cdecl, importcpp: "UpdateDrawStats", header: "OpenGl_Element.hxx".}
proc synchronizeAspects*(this: var OpenGlElement) {.cdecl,
    importcpp: "SynchronizeAspects", header: "OpenGl_Element.hxx".}
proc dumpJson*(this: OpenGlElement; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Element.hxx".}

