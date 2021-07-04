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
  OpenGl_GlCore41

## ! OpenGL 4.2 definition.

type
  OpenGl_TmplCore42*[theBaseClass_t] {.importcpp: "OpenGl_TmplCore42<\'0>",
                                      header: "OpenGl_GlCore42.hxx", bycopy.} = object of theBaseClass_t ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_transform_feedback_instanced
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 4.2
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_internalformat_query
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 4.2
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_shader_atomic_counters
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 4.2
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_shader_image_load_store
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 4.2
                                                                                                  ## core)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## GL_ARB_texture_storage
                                                                                                  ## (added
                                                                                                  ## to
                                                                                                  ## OpenGL
                                                                                                  ## 4.2
                                                                                                  ## core)


## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] public : ! @name GL_ARB_base_instance (added to OpenGL 4.2 core) using theBaseClass_t :: glDrawArraysInstancedBaseInstance ;
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

## ! OpenGL 4.2 compatibility profile.

type
  OpenGl_GlCore42Back* = OpenGl_TmplCore42[OpenGl_GlCore41Back]

## ! OpenGL 4.2 core profile.

type
  OpenGl_GlCore42* = OpenGl_TmplCore42[OpenGl_GlCore41]
