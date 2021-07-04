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

import
  ../Graphic3d/Graphic3d_GraduatedTrihedron, ../gp/gp_Ax1, ../gp/gp_Pnt,
  ../gp/gp_Dir, ../NCollection/NCollection_Array1, OpenGl_Aspects, OpenGl_Element,
  OpenGl_PrimitiveArray, OpenGl_Text

discard "forward decl of OpenGl_View"
type
  OpenGl_GraduatedTrihedron* {.importcpp: "OpenGl_GraduatedTrihedron",
                              header: "OpenGl_GraduatedTrihedron.hxx", bycopy.} = object of OpenGl_Element ##
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


proc constructOpenGl_GraduatedTrihedron*(): OpenGl_GraduatedTrihedron {.
    constructor, importcpp: "OpenGl_GraduatedTrihedron(@)",
    header: "OpenGl_GraduatedTrihedron.hxx".}
proc destroyOpenGl_GraduatedTrihedron*(this: var OpenGl_GraduatedTrihedron) {.
    importcpp: "#.~OpenGl_GraduatedTrihedron()",
    header: "OpenGl_GraduatedTrihedron.hxx".}
proc Render*(this: OpenGl_GraduatedTrihedron;
            theWorkspace: handle[OpenGl_Workspace]) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_GraduatedTrihedron.hxx".}
proc Release*(this: var OpenGl_GraduatedTrihedron; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_GraduatedTrihedron.hxx".}
proc SetValues*(this: var OpenGl_GraduatedTrihedron;
               theData: Graphic3d_GraduatedTrihedron) {.importcpp: "SetValues",
    header: "OpenGl_GraduatedTrihedron.hxx".}
proc SetMinMax*(this: var OpenGl_GraduatedTrihedron; theMin: OpenGl_Vec3;
               theMax: OpenGl_Vec3) {.importcpp: "SetMinMax",
                                    header: "OpenGl_GraduatedTrihedron.hxx".}
proc DumpJson*(this: OpenGl_GraduatedTrihedron; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_GraduatedTrihedron.hxx".}