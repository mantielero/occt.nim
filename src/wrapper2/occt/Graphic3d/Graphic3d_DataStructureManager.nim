##  Created by: CAL
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of Graphic3d_Camera"
discard "forward decl of Graphic3d_DataStructureManager"
discard "forward decl of Graphic3d_DataStructureManager"
type
  Handle_Graphic3d_DataStructureManager* = handle[Graphic3d_DataStructureManager]

## ! This class allows the definition of a manager to
## ! which the graphic objects are associated.
## ! It allows them to be globally manipulated.
## ! It defines the global attributes.

type
  Graphic3d_DataStructureManager* {.importcpp: "Graphic3d_DataStructureManager", header: "Graphic3d_DataStructureManager.hxx",
                                   bycopy.} = object of Standard_Transient ## !
                                                                      ## Initializes the manager <me>.

  Graphic3d_DataStructureManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_DataStructureManager::get_type_name(@)",
                              header: "Graphic3d_DataStructureManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_DataStructureManager::get_type_descriptor(@)",
    header: "Graphic3d_DataStructureManager.hxx".}
proc DynamicType*(this: Graphic3d_DataStructureManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_DataStructureManager.hxx".}