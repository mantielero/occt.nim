##  Created on: 1996-01-29
##  Created by: Robert COUBLANC
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
  ../Standard/Standard, ../Standard/Standard_Type, SelectMgr_ListOfFilter,
  SelectMgr_Filter, ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of SelectMgr_Filter"
discard "forward decl of SelectMgr_CompositionFilter"
discard "forward decl of SelectMgr_CompositionFilter"
type
  Handle_SelectMgr_CompositionFilter* = handle[SelectMgr_CompositionFilter]

## ! A framework to define a compound filter composed of
## ! two or more simple filters.

type
  SelectMgr_CompositionFilter* {.importcpp: "SelectMgr_CompositionFilter",
                                header: "SelectMgr_CompositionFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
                                                                                                          ## !
                                                                                                          ## Adds
                                                                                                          ## the
                                                                                                          ## filter
                                                                                                          ## afilter
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## filter
                                                                                                          ## object
                                                                                                          ## created
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## filter
                                                                                                          ## class
                                                                                                          ## inheriting
                                                                                                          ## this
                                                                                                          ## framework.


proc Add*(this: var SelectMgr_CompositionFilter; afilter: handle[SelectMgr_Filter]) {.
    importcpp: "Add", header: "SelectMgr_CompositionFilter.hxx".}
proc Remove*(this: var SelectMgr_CompositionFilter;
            aFilter: handle[SelectMgr_Filter]) {.importcpp: "Remove",
    header: "SelectMgr_CompositionFilter.hxx".}
proc IsEmpty*(this: SelectMgr_CompositionFilter): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_CompositionFilter.hxx".}
proc IsIn*(this: SelectMgr_CompositionFilter; aFilter: handle[SelectMgr_Filter]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIn", header: "SelectMgr_CompositionFilter.hxx".}
proc StoredFilters*(this: SelectMgr_CompositionFilter): SelectMgr_ListOfFilter {.
    noSideEffect, importcpp: "StoredFilters",
    header: "SelectMgr_CompositionFilter.hxx".}
proc Clear*(this: var SelectMgr_CompositionFilter) {.importcpp: "Clear",
    header: "SelectMgr_CompositionFilter.hxx".}
proc ActsOn*(this: SelectMgr_CompositionFilter; aStandardMode: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "SelectMgr_CompositionFilter.hxx".}
type
  SelectMgr_CompositionFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "SelectMgr_CompositionFilter::get_type_name(@)",
                              header: "SelectMgr_CompositionFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_CompositionFilter::get_type_descriptor(@)",
    header: "SelectMgr_CompositionFilter.hxx".}
proc DynamicType*(this: SelectMgr_CompositionFilter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_CompositionFilter.hxx".}