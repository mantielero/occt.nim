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

## ! OpenGL 4.1 definition.

type
  OpenGlTmplCore41*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore41<\'0>",
                                    header: "OpenGl_GlCore41.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_get_program_binary
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 4.1
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_separate_shader_objects
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 4.1
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_vertex_attrib_64bit
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 4.1
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_viewport_array
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 4.1
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 4.1
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 4.0


## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] public : ! @name GL_ARB_ES2_compatibility (added to OpenGL 4.1 core) using theBaseClass_t :: glReleaseShaderCompiler ;
## Error: identifier expected, but got: :!!!

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

## ! OpenGL 4.1 compatibility profile.

type
  OpenGlGlCore41Back* = OpenGlTmplCore41[OpenGlGlCore40Back]

## ! OpenGL 4.1 core profile.

type
  OpenGlGlCore41* = OpenGlTmplCore41[OpenGlGlCore40]














































