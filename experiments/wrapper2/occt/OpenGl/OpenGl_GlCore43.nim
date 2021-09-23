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
  OpenGl_GlCore42

## ! OpenGL 4.3 definition.

type
  OpenGl_TmplCore43*[theBaseClass_t] {.importcpp: "OpenGl_TmplCore43<\'0>",
                                      header: "OpenGl_GlCore43.hxx", bycopy.} = object of theBaseClass_t ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## OpenGL
                                                                                                  ## 4.3
                                                                                                  ## additives
                                                                                                  ## to
                                                                                                  ## 4.2


when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
## ! OpenGL 4.3 compatibility profile.

type
  OpenGl_GlCore43Back* = OpenGl_TmplCore43[OpenGl_GlCore42Back]

## ! OpenGL 4.3 core profile.

type
  OpenGl_GlCore43* = OpenGl_TmplCore43[OpenGl_GlCore42]
