##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESBasic_Hierarchy"
discard "forward decl of IGESBasic_Hierarchy"
type
  Handle_IGESBasic_Hierarchy* = handle[IGESBasic_Hierarchy]

## ! defines Hierarchy, Type <406> Form <10>
## ! in package IGESBasic
## ! Provides ability to control the hierarchy of each
## ! directory entry attribute.

type
  IGESBasic_Hierarchy* {.importcpp: "IGESBasic_Hierarchy",
                        header: "IGESBasic_Hierarchy.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_Hierarchy*(): IGESBasic_Hierarchy {.constructor,
    importcpp: "IGESBasic_Hierarchy(@)", header: "IGESBasic_Hierarchy.hxx".}
proc Init*(this: var IGESBasic_Hierarchy; nbPropVal: Standard_Integer;
          aLineFont: Standard_Integer; aView: Standard_Integer;
          anEntityLevel: Standard_Integer; aBlankStatus: Standard_Integer;
          aLineWt: Standard_Integer; aColorNum: Standard_Integer) {.
    importcpp: "Init", header: "IGESBasic_Hierarchy.hxx".}
proc NbPropertyValues*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESBasic_Hierarchy.hxx".}
proc NewLineFont*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewLineFont", header: "IGESBasic_Hierarchy.hxx".}
proc NewView*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewView", header: "IGESBasic_Hierarchy.hxx".}
proc NewEntityLevel*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewEntityLevel", header: "IGESBasic_Hierarchy.hxx".}
proc NewBlankStatus*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewBlankStatus", header: "IGESBasic_Hierarchy.hxx".}
proc NewLineWeight*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewLineWeight", header: "IGESBasic_Hierarchy.hxx".}
proc NewColorNum*(this: IGESBasic_Hierarchy): Standard_Integer {.noSideEffect,
    importcpp: "NewColorNum", header: "IGESBasic_Hierarchy.hxx".}
type
  IGESBasic_Hierarchybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_Hierarchy::get_type_name(@)",
                              header: "IGESBasic_Hierarchy.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_Hierarchy::get_type_descriptor(@)",
    header: "IGESBasic_Hierarchy.hxx".}
proc DynamicType*(this: IGESBasic_Hierarchy): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Hierarchy.hxx".}