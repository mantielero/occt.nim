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
  OpenGl_GlCore11

## ! OpenGL 1.2 core based on 1.1 version.

type
  OpenGl_TmplCore12*[theBaseClass_t] {.importcpp: "OpenGl_TmplCore12<\'0>",
                                      header: "OpenGl_GlCore12.hxx", bycopy.} = object of theBaseClass_t ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## OpenGL
                                                                                                  ## 1.2
                                                                                                  ## additives
                                                                                                  ## to
                                                                                                  ## 1.1


## using statement

## using statement

when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
## ! OpenGL 1.2 core based on 1.1 version.

type
  OpenGl_GlCore12* = OpenGl_TmplCore12[OpenGl_GlCore11]

## ! OpenGL 1.2 without deprecated entry points.

type
  OpenGl_GlCore12Fwd* = OpenGl_TmplCore12[OpenGl_GlCore11Fwd]
