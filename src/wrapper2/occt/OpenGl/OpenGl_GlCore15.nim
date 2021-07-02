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

## *
##  OpenGL 1.5 core based on 1.4 version.
##

type
  OpenGlTmplCore15*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore15<\'0>",
                                    header: "OpenGl_GlCore15.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 1.5
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 1.4


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
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## ! OpenGL 1.5 core based on 1.4 version.

type
  OpenGlGlCore15* = OpenGlTmplCore15[OpenGlGlCore14]

## ! OpenGL 1.5 without deprecated entry points.

type
  OpenGlGlCore15Fwd* = OpenGlTmplCore15[OpenGlGlCore14Fwd]


