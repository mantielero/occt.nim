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

## ! OpenGL 1.3 without deprecated entry points.

type
  OpenGlGlCore13Fwd* {.importcpp: "OpenGl_GlCore13Fwd",
                      header: "OpenGl_GlCore13.hxx", bycopy.} = object of OpenGlGlCore12Fwd ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## OpenGL
                                                                                     ## 1.3
                                                                                     ## additives
                                                                                     ## to
                                                                                     ## 1.2


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
## using statement

## using statement

## using statement

## using statement

## ! OpenGL 1.3 core based on 1.2 version.

type
  OpenGlGlCore13* {.importcpp: "OpenGl_GlCore13", header: "OpenGl_GlCore13.hxx",
                   bycopy.} = object of OpenGlGlCore12 ## ! @name OpenGL 1.3 additives to 1.2
                                                  ## ! @name Matrix operations (removed since 3.1)


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
## using statement

## using statement

## using statement

## using statement

## !!!Ignored construct:  # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] public : ! @name Begin/End primitive specification (removed since 3.1) using OpenGl_GlFunctions :: glMultiTexCoord1d ;
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

