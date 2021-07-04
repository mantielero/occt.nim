##  Copyright (c) 2020 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Graphic3d/Graphic3d_NMapOfTransient, ../Standard/Standard_Boolean,
  SelectMgr_CompositionFilter, SelectMgr_FilterType

discard "forward decl of SelectMgr_AndOrFilter"
type
  Handle_SelectMgr_AndOrFilter* = handle[SelectMgr_AndOrFilter]

## ! A framework to define an OR or AND selection filter.
## ! To use an AND selection filter call SetUseOrFilter with False parameter.
## ! By default the OR selection filter is used.

type
  SelectMgr_AndOrFilter* {.importcpp: "SelectMgr_AndOrFilter",
                          header: "SelectMgr_AndOrFilter.hxx", bycopy.} = object of SelectMgr_CompositionFilter ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## selection
                                                                                                         ## filter.
    ## !< disabled objects.
    ## !  Selection isn't applied to these objects.
    ## !< selection filter type. SelectMgr_TypeFilter_OR by default.


proc constructSelectMgr_AndOrFilter*(theFilterType: SelectMgr_FilterType): SelectMgr_AndOrFilter {.
    constructor, importcpp: "SelectMgr_AndOrFilter(@)",
    header: "SelectMgr_AndOrFilter.hxx".}
proc IsOk*(this: SelectMgr_AndOrFilter; theObj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_AndOrFilter.hxx".}
proc SetDisabledObjects*(this: var SelectMgr_AndOrFilter;
                        theObjects: handle[Graphic3d_NMapOfTransient]) {.
    importcpp: "SetDisabledObjects", header: "SelectMgr_AndOrFilter.hxx".}
proc FilterType*(this: SelectMgr_AndOrFilter): SelectMgr_FilterType {.noSideEffect,
    importcpp: "FilterType", header: "SelectMgr_AndOrFilter.hxx".}
proc SetFilterType*(this: var SelectMgr_AndOrFilter;
                   theFilterType: SelectMgr_FilterType) {.
    importcpp: "SetFilterType", header: "SelectMgr_AndOrFilter.hxx".}
type
  SelectMgr_AndOrFilterbase_type* = SelectMgr_CompositionFilter

proc get_type_name*(): cstring {.importcpp: "SelectMgr_AndOrFilter::get_type_name(@)",
                              header: "SelectMgr_AndOrFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_AndOrFilter::get_type_descriptor(@)",
    header: "SelectMgr_AndOrFilter.hxx".}
proc DynamicType*(this: SelectMgr_AndOrFilter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_AndOrFilter.hxx".}