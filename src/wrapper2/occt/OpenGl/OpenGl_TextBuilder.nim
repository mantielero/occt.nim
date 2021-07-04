##  Created on: 2015-06-18
##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  OpenGl_Context, OpenGl_Font, OpenGl_VertexBuffer, OpenGl_VertexBufferEditor,
  OpenGl_Vec, ../NCollection/NCollection_Vector, ../NCollection/NCollection_Handle

discard "forward decl of Font_TextFormatter"
type
  OpenGl_TextBuilder* {.importcpp: "OpenGl_TextBuilder",
                       header: "OpenGl_TextBuilder.hxx", bycopy.} = object ## ! Creates empty object.
                                                                      ## ! @name class auxillary methods
                                                                      ## ! @name class auxillary fields


proc constructOpenGl_TextBuilder*(): OpenGl_TextBuilder {.constructor,
    importcpp: "OpenGl_TextBuilder(@)", header: "OpenGl_TextBuilder.hxx".}
proc Perform*(this: var OpenGl_TextBuilder;
             theFormatter: handle[Font_TextFormatter];
             theContext: handle[OpenGl_Context]; theFont: var OpenGl_Font;
             theTextures: var NCollection_Vector[GLuint]; theVertsPerTexture: var NCollection_Vector[
    handle[OpenGl_VertexBuffer]]; theTCrdsPerTexture: var NCollection_Vector[
    handle[OpenGl_VertexBuffer]]) {.importcpp: "Perform",
                                   header: "OpenGl_TextBuilder.hxx".}