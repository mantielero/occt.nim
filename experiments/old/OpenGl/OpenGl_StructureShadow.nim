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


proc constructOpenGlStructureShadow*(theManager: Handle[Graphic3dStructureManager];
                                    theStructure: Handle[OpenGlStructure]): OpenGlStructureShadow {.
    constructor, importcpp: "OpenGl_StructureShadow(@)",
    header: "OpenGl_StructureShadow.hxx".}
proc connect*(this: var OpenGlStructureShadow; a2: var Graphic3dCStructure) {.
    importcpp: "Connect", header: "OpenGl_StructureShadow.hxx".}
proc disconnect*(this: var OpenGlStructureShadow; a2: var Graphic3dCStructure) {.
    importcpp: "Disconnect", header: "OpenGl_StructureShadow.hxx".}
type
  OpenGlStructureShadowbaseType* = OpenGlStructure

proc getTypeName*(): cstring {.importcpp: "OpenGl_StructureShadow::get_type_name(@)",
                            header: "OpenGl_StructureShadow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_StructureShadow::get_type_descriptor(@)",
    header: "OpenGl_StructureShadow.hxx".}
proc dynamicType*(this: OpenGlStructureShadow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_StructureShadow.hxx".}
discard "forward decl of OpenGl_StructureShadow"
type
  HandleC1C1* = Handle[OpenGlStructureShadow]


























