##  Created on: 2012-03-06
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  OpenGl_GlCore14

## *
##  OpenGL 1.5 core based on 1.4 version.
##

type
  OpenGl_TmplCore15*[theBaseClass_t] {.importcpp: "OpenGl_TmplCore15<\'0>",
                                      header: "OpenGl_GlCore15.hxx", bycopy.} = object of theBaseClass_t ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## OpenGL
                                                                                                  ## 1.5
                                                                                                  ## additives
                                                                                                  ## to
                                                                                                  ## 1.4


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
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## ! OpenGL 1.5 core based on 1.4 version.

type
  OpenGl_GlCore15* = OpenGl_TmplCore15[OpenGl_GlCore14]

## ! OpenGL 1.5 without deprecated entry points.

type
  OpenGl_GlCore15Fwd* = OpenGl_TmplCore15[OpenGl_GlCore14Fwd]
