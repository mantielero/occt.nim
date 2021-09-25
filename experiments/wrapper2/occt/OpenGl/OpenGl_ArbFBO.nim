##  Created on: 2012-01-26
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

## ! FBO is available on OpenGL 2.0+ hardware

type
  OpenGlArbFBO* {.importcpp: "OpenGl_ArbFBO", header: "OpenGl_ArbFBO.hxx", bycopy.} = object of OpenGlGlFunctions


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
# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
## ! FBO blit is available in OpenGL 3.0+.
## ! Moved out from OpenGl_ArbFBO since it is unavailable in OpenGL ES 2.0.

type
  OpenGlArbFBOBlit* {.importcpp: "OpenGl_ArbFBOBlit", header: "OpenGl_ArbFBO.hxx",
                     bycopy.} = object of OpenGlGlFunctions


## using statement

