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

## ! OpenGL 1.2 core based on 1.1 version.

type
  OpenGlTmplCore12*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore12<\'0>",
                                    header: "OpenGl_GlCore12.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 1.2
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 1.1


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
## ! OpenGL 1.2 core based on 1.1 version.

type
  OpenGlGlCore12* = OpenGlTmplCore12[OpenGlGlCore11]

## ! OpenGL 1.2 without deprecated entry points.

type
  OpenGlGlCore12Fwd* = OpenGlTmplCore12[OpenGlGlCore11Fwd]

