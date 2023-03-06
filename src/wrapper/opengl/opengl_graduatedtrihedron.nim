import ../standard/standard_types
import ../graphic3d/graphic3d_types
import opengl_types



##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2013 OPEN CASCADE SAS
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



proc newOpenGlGraduatedTrihedron*(): OpenGlGraduatedTrihedron {.cdecl, constructor,
    importcpp: "OpenGl_GraduatedTrihedron(@)", header: "OpenGl_Graduatedtrihedron.hxx".}
proc destroyOpenGlGraduatedTrihedron*(this: var OpenGlGraduatedTrihedron) {.cdecl,
    importcpp: "#.~OpenGl_GraduatedTrihedron()", header: "OpenGl_Graduatedtrihedron.hxx".}
proc render*(this: OpenGlGraduatedTrihedron; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_Graduatedtrihedron.hxx".}
proc release*(this: var OpenGlGraduatedTrihedron; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Graduatedtrihedron.hxx".}
proc setValues*(this: var OpenGlGraduatedTrihedron;
               theData: Graphic3dGraduatedTrihedron) {.cdecl,
    importcpp: "SetValues", header: "OpenGl_Graduatedtrihedron.hxx".}
proc setMinMax*(this: var OpenGlGraduatedTrihedron; theMin: OpenGlVec3;
               theMax: OpenGlVec3) {.cdecl, importcpp: "SetMinMax", header: "OpenGl_Graduatedtrihedron.hxx".}
proc dumpJson*(this: OpenGlGraduatedTrihedron; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Graduatedtrihedron.hxx".}

