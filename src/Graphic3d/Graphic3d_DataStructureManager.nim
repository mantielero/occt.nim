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

discard "forward decl of Graphic3d_Camera"
discard "forward decl of Graphic3d_DataStructureManager"
discard "forward decl of Graphic3d_DataStructureManager"
type
  HandleC1C1* = Handle[Graphic3dDataStructureManager]

## ! This class allows the definition of a manager to
## ! which the graphic objects are associated.
## ! It allows them to be globally manipulated.
## ! It defines the global attributes.

type
  Graphic3dDataStructureManager* {.importcpp: "Graphic3d_DataStructureManager",
                                  header: "Graphic3d_DataStructureManager.hxx",
                                  bycopy.} = object of StandardTransient ## ! Initializes the manager <me>.

  Graphic3dDataStructureManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_DataStructureManager::get_type_name(@)",
                            header: "Graphic3d_DataStructureManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_DataStructureManager::get_type_descriptor(@)",
    header: "Graphic3d_DataStructureManager.hxx".}
proc dynamicType*(this: Graphic3dDataStructureManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_DataStructureManager.hxx".}

























