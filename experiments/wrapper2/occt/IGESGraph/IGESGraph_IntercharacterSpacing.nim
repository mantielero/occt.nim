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
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESGraph_IntercharacterSpacing"
discard "forward decl of IGESGraph_IntercharacterSpacing"
type
  Handle_IGESGraph_IntercharacterSpacing* = handle[IGESGraph_IntercharacterSpacing]

## ! defines IGESIntercharacterSpacing, Type <406> Form <18>
## ! in package IGESGraph
## !
## ! Specifies the gap between letters when fixed-pitch
## ! spacing is used

type
  IGESGraph_IntercharacterSpacing* {.importcpp: "IGESGraph_IntercharacterSpacing", header: "IGESGraph_IntercharacterSpacing.hxx",
                                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_IntercharacterSpacing*(): IGESGraph_IntercharacterSpacing {.
    constructor, importcpp: "IGESGraph_IntercharacterSpacing(@)",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc Init*(this: var IGESGraph_IntercharacterSpacing; nbProps: Standard_Integer;
          anISpace: Standard_Real) {.importcpp: "Init", header: "IGESGraph_IntercharacterSpacing.hxx".}
proc NbPropertyValues*(this: IGESGraph_IntercharacterSpacing): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc ISpace*(this: IGESGraph_IntercharacterSpacing): Standard_Real {.noSideEffect,
    importcpp: "ISpace", header: "IGESGraph_IntercharacterSpacing.hxx".}
type
  IGESGraph_IntercharacterSpacingbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_IntercharacterSpacing::get_type_name(@)",
                              header: "IGESGraph_IntercharacterSpacing.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_IntercharacterSpacing::get_type_descriptor(@)",
    header: "IGESGraph_IntercharacterSpacing.hxx".}
proc DynamicType*(this: IGESGraph_IntercharacterSpacing): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_IntercharacterSpacing.hxx".}