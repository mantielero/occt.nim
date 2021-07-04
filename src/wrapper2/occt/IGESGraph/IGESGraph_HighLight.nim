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

discard "forward decl of IGESGraph_HighLight"
discard "forward decl of IGESGraph_HighLight"
type
  Handle_IGESGraph_HighLight* = handle[IGESGraph_HighLight]

## ! defines IGESHighLight, Type <406> Form <20>
## ! in package IGESGraph
## !
## ! Attaches information that an entity is to be
## ! displayed in some system dependent manner

type
  IGESGraph_HighLight* {.importcpp: "IGESGraph_HighLight",
                        header: "IGESGraph_HighLight.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_HighLight*(): IGESGraph_HighLight {.constructor,
    importcpp: "IGESGraph_HighLight(@)", header: "IGESGraph_HighLight.hxx".}
proc Init*(this: var IGESGraph_HighLight; nbProps: Standard_Integer;
          aHighLightStatus: Standard_Integer) {.importcpp: "Init",
    header: "IGESGraph_HighLight.hxx".}
proc NbPropertyValues*(this: IGESGraph_HighLight): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_HighLight.hxx".}
proc HighLightStatus*(this: IGESGraph_HighLight): Standard_Integer {.noSideEffect,
    importcpp: "HighLightStatus", header: "IGESGraph_HighLight.hxx".}
proc IsHighLighted*(this: IGESGraph_HighLight): Standard_Boolean {.noSideEffect,
    importcpp: "IsHighLighted", header: "IGESGraph_HighLight.hxx".}
type
  IGESGraph_HighLightbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_HighLight::get_type_name(@)",
                              header: "IGESGraph_HighLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_HighLight::get_type_descriptor(@)",
    header: "IGESGraph_HighLight.hxx".}
proc DynamicType*(this: IGESGraph_HighLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_HighLight.hxx".}