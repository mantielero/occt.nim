##  Created on: 2014-03-17
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! OpenGL 3.0 core.
## ! This is first version with deprecation model introduced
## ! - a lot of functionality regarding to fixed pipeline were marked deprecated.
## ! Notice that nothing were actually removed in this version (unless Forward context loaded)!

type
  OpenGlTmplCore30*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore30<\'0>",
                                    header: "OpenGl_GlCore30.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_framebuffer_object
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.0
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_vertex_array_object
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.0
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_map_buffer_range
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.0
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 3.0
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 2.1


## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
## using statement

## using statement

## using statement

## using statement

# when not defined(__EMSCRIPTEN__):
#   discard
# when not defined(__EMSCRIPTEN__):
#   discard
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine]  the following have been added only in OpenGL ES 3.2 using theBaseClass_t :: glColorMaski ;
## Error: identifier expected, but got:  the following have been added only in OpenGL ES 3.2!!!

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine]  the following are defined only on desktop OpenGL using theBaseClass_t :: glClampColor ;
## Error: identifier expected, but got:  the following are defined only on desktop OpenGL!!!

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## !!!Ignored construct:  # defined ( GL_ES_VERSION_2_0 ) [NewLine]  the following functions from OpenGL 1.5 have been added only in OpenGL ES 3.0 using theBaseClass_t :: glGenQueries ;
## Error: identifier expected, but got:  the following functions from OpenGL 1.5 have been added only in OpenGL ES 3.0!!!

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

# when not defined(__EMSCRIPTEN__):
#   discard
## ! OpenGL 3.0 core based on 2.1 version.

type
  OpenGlGlCore30* = OpenGlTmplCore30[OpenGlGlCore21]

## ! OpenGL 3.0 without deprecated entry points.
## ! Notice that this doesn't actually corresponds to GL3.0 forward profile!

type
  OpenGlGlCore30Fwd* = OpenGlTmplCore30[OpenGlGlCore21Fwd]

