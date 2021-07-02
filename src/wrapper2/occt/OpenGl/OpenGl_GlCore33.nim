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

## ! OpenGL 3.3 definition.

type
  OpenGlTmplCore33*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore33<\'0>",
                                    header: "OpenGl_GlCore33.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_sampler_objects
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.3
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_timer_query
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.3
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## GL_ARB_vertex_type_2_10_10_10_rev
                                                                                               ## (added
                                                                                               ## to
                                                                                               ## OpenGL
                                                                                               ## 3.3
                                                                                               ## core)
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 3.3
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 3.2


## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] public : ! @name GL_ARB_blend_func_extended (added to OpenGL 3.3 core) using theBaseClass_t :: glBindFragDataLocationIndexed ;
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

## ! OpenGL 3.3 compatibility profile.

type
  OpenGlGlCore33Back* = OpenGlTmplCore33[OpenGlGlCore32Back]

## ! OpenGL 3.3 core profile.

type
  OpenGlGlCore33* = OpenGlTmplCore33[OpenGlGlCore32]


