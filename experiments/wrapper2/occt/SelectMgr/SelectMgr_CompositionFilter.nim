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

discard "forward decl of SelectMgr_Filter"
discard "forward decl of SelectMgr_CompositionFilter"
discard "forward decl of SelectMgr_CompositionFilter"
type
  HandleSelectMgrCompositionFilter* = Handle[SelectMgrCompositionFilter]

## ! A framework to define a compound filter composed of
## ! two or more simple filters.

type
  SelectMgrCompositionFilter* {.importcpp: "SelectMgr_CompositionFilter",
                               header: "SelectMgr_CompositionFilter.hxx", bycopy.} = object of SelectMgrFilter ##
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


proc add*(this: var SelectMgrCompositionFilter; afilter: Handle[SelectMgrFilter]) {.
    importcpp: "Add", header: "SelectMgr_CompositionFilter.hxx".}
proc remove*(this: var SelectMgrCompositionFilter; aFilter: Handle[SelectMgrFilter]) {.
    importcpp: "Remove", header: "SelectMgr_CompositionFilter.hxx".}
proc isEmpty*(this: SelectMgrCompositionFilter): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_CompositionFilter.hxx".}
proc isIn*(this: SelectMgrCompositionFilter; aFilter: Handle[SelectMgrFilter]): bool {.
    noSideEffect, importcpp: "IsIn", header: "SelectMgr_CompositionFilter.hxx".}
proc storedFilters*(this: SelectMgrCompositionFilter): SelectMgrListOfFilter {.
    noSideEffect, importcpp: "StoredFilters",
    header: "SelectMgr_CompositionFilter.hxx".}
proc clear*(this: var SelectMgrCompositionFilter) {.importcpp: "Clear",
    header: "SelectMgr_CompositionFilter.hxx".}
proc actsOn*(this: SelectMgrCompositionFilter; aStandardMode: TopAbsShapeEnum): bool {.
    noSideEffect, importcpp: "ActsOn", header: "SelectMgr_CompositionFilter.hxx".}
type
  SelectMgrCompositionFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "SelectMgr_CompositionFilter::get_type_name(@)",
                            header: "SelectMgr_CompositionFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_CompositionFilter::get_type_descriptor(@)",
    header: "SelectMgr_CompositionFilter.hxx".}
proc dynamicType*(this: SelectMgrCompositionFilter): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_CompositionFilter.hxx".}
