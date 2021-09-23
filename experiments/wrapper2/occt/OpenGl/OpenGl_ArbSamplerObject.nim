##  Copyright (c) 2017 OPEN CASCADE SAS
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
  OpenGl_GlFunctions

## ! Provide Sampler Object functionality (texture parameters stored independently from texture itself).
## ! Available since OpenGL 3.3+ (GL_ARB_sampler_objects extension) and OpenGL ES 3.0+.

type
  OpenGl_ArbSamplerObject* {.importcpp: "OpenGl_ArbSamplerObject",
                            header: "OpenGl_ArbSamplerObject.hxx", bycopy.} = object of OpenGl_GlFunctions


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

when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard
when not defined(GL_ES_VERSION_2_0):
  discard