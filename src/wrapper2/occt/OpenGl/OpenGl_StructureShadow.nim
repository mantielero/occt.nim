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

import
  OpenGl_Structure

## ! Dummy structure which just redirects to groups of another structure.

type
  OpenGl_StructureShadow* {.importcpp: "OpenGl_StructureShadow",
                           header: "OpenGl_StructureShadow.hxx", bycopy.} = object of OpenGl_Structure ##
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


proc constructOpenGl_StructureShadow*(theManager: handle[
    Graphic3d_StructureManager]; theStructure: handle[OpenGl_Structure]): OpenGl_StructureShadow {.
    constructor, importcpp: "OpenGl_StructureShadow(@)",
    header: "OpenGl_StructureShadow.hxx".}
proc Connect*(this: var OpenGl_StructureShadow; a2: var Graphic3d_CStructure) {.
    importcpp: "Connect", header: "OpenGl_StructureShadow.hxx".}
proc Disconnect*(this: var OpenGl_StructureShadow; a2: var Graphic3d_CStructure) {.
    importcpp: "Disconnect", header: "OpenGl_StructureShadow.hxx".}
type
  OpenGl_StructureShadowbase_type* = OpenGl_Structure

proc get_type_name*(): cstring {.importcpp: "OpenGl_StructureShadow::get_type_name(@)",
                              header: "OpenGl_StructureShadow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_StructureShadow::get_type_descriptor(@)",
    header: "OpenGl_StructureShadow.hxx".}
proc DynamicType*(this: OpenGl_StructureShadow): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_StructureShadow.hxx".}
discard "forward decl of OpenGl_StructureShadow"
type
  Handle_OpenGl_StructureShadow* = handle[OpenGl_StructureShadow]
