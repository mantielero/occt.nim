##  Created on: 2014-09-01
##  Created by: Ivan SAZONOV
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

## ! Dummy structure which just redirects to groups of another structure.

type
  OpenGlStructureShadow* {.importcpp: "OpenGl_StructureShadow",
                          header: "OpenGl_StructureShadow.hxx", bycopy.} = object of OpenGlStructure ##
                                                                                              ## !
                                                                                              ## Create
                                                                                              ## empty
                                                                                              ## structure
                                                                                              ##
                                                                                              ## !
                                                                                              ## Raise
                                                                                              ## exception
                                                                                              ## on
                                                                                              ## API
                                                                                              ## misuse.
                                                                                              ##
                                                                                              ## Type
                                                                                              ## definition


proc newOpenGlStructureShadow*(theManager: Handle[Graphic3dStructureManager];
                              theStructure: Handle[OpenGlStructure]): OpenGlStructureShadow {.
    cdecl, constructor, importcpp: "OpenGl_StructureShadow(@)", dynlib: tkkxbase.}
proc connect*(this: var OpenGlStructureShadow; a2: var Graphic3dCStructure) {.cdecl,
    importcpp: "Connect", dynlib: tkkxbase.}
proc disconnect*(this: var OpenGlStructureShadow; a2: var Graphic3dCStructure) {.cdecl,
    importcpp: "Disconnect", dynlib: tkkxbase.}
type
  HandleOpenGlStructureShadow* = Handle[OpenGlStructureShadow]
