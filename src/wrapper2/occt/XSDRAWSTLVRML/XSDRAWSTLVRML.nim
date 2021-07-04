##  Created on: 2000-05-30
##  Created by: Sergey MOZOKHIN
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

discard "forward decl of XSDRAWSTLVRML_DataSource"
discard "forward decl of XSDRAWSTLVRML_DataSource3D"
discard "forward decl of XSDRAWSTLVRML_DrawableMesh"
type
  XSDRAWSTLVRML* {.importcpp: "XSDRAWSTLVRML", header: "XSDRAWSTLVRML.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Inits
                                                                                      ## commands
                                                                                      ## for
                                                                                      ## writing
                                                                                      ## to
                                                                                      ## STL
                                                                                      ## and
                                                                                      ## VRML
                                                                                      ## formats


proc InitCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "XSDRAWSTLVRML::InitCommands(@)", header: "XSDRAWSTLVRML.hxx".}
proc Factory*(theDI: var Draw_Interpretor) {.importcpp: "XSDRAWSTLVRML::Factory(@)",
    header: "XSDRAWSTLVRML.hxx".}