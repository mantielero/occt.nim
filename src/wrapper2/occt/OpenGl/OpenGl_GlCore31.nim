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

import
  OpenGl_GlCore30

## ! OpenGL 3.1 definition.

type
  OpenGl_TmplCore31*[theBaseClass_t] {.importcpp: "OpenGl_TmplCore31<\'0>",
                                      header: "OpenGl_GlCore31.hxx", bycopy.} = object of theBaseClass_t ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_uniform_buffer_object
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 3.1
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_copy_buffer
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 3.1
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## OpenGL
                                                                                                  ## 3.1
                                                                                                  ## additives
                                                                                                  ## to
                                                                                                  ## 3.0


## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] using theBaseClass_t :: glGetActiveUniformName ;
## Error: identifier expected, but got:  undefined in OpenGL ES!!!

## using statement

## using statement

## using statement

## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] using theBaseClass_t :: glTexBuffer ;
## Error: identifier expected, but got:  added in OpenGL ES 3.2!!!

## using statement

## ! OpenGL 3.1 compatibility profile.

type
  OpenGl_GlCore31Back* = OpenGl_TmplCore31[OpenGl_GlCore30]

## ! OpenGL 3.1 core profile (without removed entry points marked as deprecated in 3.0).
## ! Notice that GLSL versions 1.10 and 1.20 also removed in 3.1!

type
  OpenGl_GlCore31* = OpenGl_TmplCore31[OpenGl_GlCore30Fwd]
