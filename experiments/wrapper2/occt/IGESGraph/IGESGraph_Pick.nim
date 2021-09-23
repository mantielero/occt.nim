##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESGraph_Pick"
discard "forward decl of IGESGraph_Pick"
type
  Handle_IGESGraph_Pick* = handle[IGESGraph_Pick]

## ! defines IGESPick, Type <406> Form <21>
## ! in package IGESGraph
## !
## ! Attaches information that an entity may be picked
## ! by whatever pick device is used in the receiving
## ! system

type
  IGESGraph_Pick* {.importcpp: "IGESGraph_Pick", header: "IGESGraph_Pick.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_Pick*(): IGESGraph_Pick {.constructor,
    importcpp: "IGESGraph_Pick(@)", header: "IGESGraph_Pick.hxx".}
proc Init*(this: var IGESGraph_Pick; nbProps: Standard_Integer;
          aPickStatus: Standard_Integer) {.importcpp: "Init",
    header: "IGESGraph_Pick.hxx".}
proc NbPropertyValues*(this: IGESGraph_Pick): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_Pick.hxx".}
proc PickFlag*(this: IGESGraph_Pick): Standard_Integer {.noSideEffect,
    importcpp: "PickFlag", header: "IGESGraph_Pick.hxx".}
proc IsPickable*(this: IGESGraph_Pick): Standard_Boolean {.noSideEffect,
    importcpp: "IsPickable", header: "IGESGraph_Pick.hxx".}
type
  IGESGraph_Pickbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_Pick::get_type_name(@)",
                              header: "IGESGraph_Pick.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_Pick::get_type_descriptor(@)",
    header: "IGESGraph_Pick.hxx".}
proc DynamicType*(this: IGESGraph_Pick): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_Pick.hxx".}