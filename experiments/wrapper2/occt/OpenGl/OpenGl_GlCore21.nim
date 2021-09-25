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

## ! OpenGL 2.1 core based on 2.0 version.

type
  OpenGlTmplCore21*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore21<\'0>",
                                    header: "OpenGl_GlCore21.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 2.1
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 2.0


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
# when not defined(gl_Es_Version_20):
#   discard
## ! OpenGL 2.1 core based on 2.0 version.

type
  OpenGlGlCore21* = OpenGlTmplCore21[OpenGlGlCore20]

## ! OpenGL 2.1 without deprecated entry points.

type
  OpenGlGlCore21Fwd* = OpenGlTmplCore21[OpenGlGlCore20Fwd]

