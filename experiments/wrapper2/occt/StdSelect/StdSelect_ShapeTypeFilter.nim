##  Created on: 1996-09-17
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TopAbs/TopAbs_ShapeEnum, ../SelectMgr/SelectMgr_Filter

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_ShapeTypeFilter"
type
  Handle_StdSelect_ShapeTypeFilter* = handle[StdSelect_ShapeTypeFilter]

## ! A filter framework which allows you to define a filter for a specific shape type.

type
  StdSelect_ShapeTypeFilter* {.importcpp: "StdSelect_ShapeTypeFilter",
                              header: "StdSelect_ShapeTypeFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
                                                                                                      ## !
                                                                                                      ## Constructs
                                                                                                      ## a
                                                                                                      ## filter
                                                                                                      ## object
                                                                                                      ## defined
                                                                                                      ## by
                                                                                                      ## the
                                                                                                      ## shape
                                                                                                      ## type
                                                                                                      ## aType.

  StdSelect_ShapeTypeFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "StdSelect_ShapeTypeFilter::get_type_name(@)",
                              header: "StdSelect_ShapeTypeFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdSelect_ShapeTypeFilter::get_type_descriptor(@)",
    header: "StdSelect_ShapeTypeFilter.hxx".}
proc DynamicType*(this: StdSelect_ShapeTypeFilter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StdSelect_ShapeTypeFilter.hxx".}
proc constructStdSelect_ShapeTypeFilter*(aType: TopAbs_ShapeEnum): StdSelect_ShapeTypeFilter {.
    constructor, importcpp: "StdSelect_ShapeTypeFilter(@)",
    header: "StdSelect_ShapeTypeFilter.hxx".}
proc Type*(this: StdSelect_ShapeTypeFilter): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "Type", header: "StdSelect_ShapeTypeFilter.hxx".}
proc IsOk*(this: StdSelect_ShapeTypeFilter; anobj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_ShapeTypeFilter.hxx".}
proc ActsOn*(this: StdSelect_ShapeTypeFilter; aStandardMode: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_ShapeTypeFilter.hxx".}