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

discard "forward decl of OpenGl_View"
type
  OpenGlGraduatedTrihedron* {.importcpp: "OpenGl_GraduatedTrihedron",
                             header: "OpenGl_GraduatedTrihedron.hxx", bycopy.} = object of OpenGlElement ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Axis
                                                                                                  ## of
                                                                                                  ## trihedron.
                                                                                                  ## It
                                                                                                  ## incapsulates
                                                                                                  ## geometry
                                                                                                  ## and
                                                                                                  ## style.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Struct
                                                                                                  ## for
                                                                                                  ## triple
                                                                                                  ## of
                                                                                                  ## orthonormal
                                                                                                  ## vectors
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## origin
                                                                                                  ## point,
                                                                                                  ## and
                                                                                                  ## axes
                                                                                                  ## for
                                                                                                  ## tickmarks.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## may
                                                                                                  ## be
                                                                                                  ## not
                                                                                                  ## a
                                                                                                  ## right
                                                                                                  ## or
                                                                                                  ## left
                                                                                                  ## coordinate
                                                                                                  ## system.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Initialize
                                                                                                  ## or
                                                                                                  ## update
                                                                                                  ## GL
                                                                                                  ## resources
                                                                                                  ## for
                                                                                                  ## rendering
                                                                                                  ## trihedron.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theContext
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## GL
                                                                                                  ## context.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Scene
                                                                                                  ## bounding
                                                                                                  ## box
                                                                                                  ## values
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Labels
                                                                                                  ## properties
    ## !< Axes for trihedron
    ## !< Color grid properties


proc newOpenGlGraduatedTrihedron*(): OpenGlGraduatedTrihedron {.cdecl, constructor,
    importcpp: "OpenGl_GraduatedTrihedron(@)", dynlib: tkkxbase.}
proc destroyOpenGlGraduatedTrihedron*(this: var OpenGlGraduatedTrihedron) {.cdecl,
    importcpp: "#.~OpenGl_GraduatedTrihedron()", dynlib: tkkxbase.}
proc render*(this: OpenGlGraduatedTrihedron; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlGraduatedTrihedron; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc setValues*(this: var OpenGlGraduatedTrihedron;
               theData: Graphic3dGraduatedTrihedron) {.cdecl,
    importcpp: "SetValues", dynlib: tkkxbase.}
proc setMinMax*(this: var OpenGlGraduatedTrihedron; theMin: OpenGlVec3;
               theMax: OpenGlVec3) {.cdecl, importcpp: "SetMinMax", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlGraduatedTrihedron; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}