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

## ! OpenGL 3.2 definition.

type
  OpenGlTmplCore32*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore32<\'0>",
                                    header: "OpenGl_GlCore32.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_provoking_vertex
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.2
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_sync
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.2
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_texture_multisample
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.2
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 3.2
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 3.1


## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] public : ! @name GL_ARB_draw_elements_base_vertex (added to OpenGL 3.2 core) using theBaseClass_t :: glDrawElementsBaseVertex ;
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

## ! OpenGL 3.2 compatibility profile.

type
  OpenGlGlCore32Back* = OpenGlTmplCore32[OpenGlGlCore31Back]

## ! OpenGL 3.2 core profile.

type
  OpenGlGlCore32* = OpenGlTmplCore32[OpenGlGlCore31]


