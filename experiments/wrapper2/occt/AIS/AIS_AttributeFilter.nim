##  Created on: 1997-03-04
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Quantity/Quantity_NameOfColor, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../SelectMgr/SelectMgr_Filter

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_AttributeFilter"
discard "forward decl of AIS_AttributeFilter"
type
  Handle_AIS_AttributeFilter* = handle[AIS_AttributeFilter]

## ! Selects Interactive Objects, which have the desired width or color.
## ! The filter questions each Interactive Object in local
## ! context to determine whether it has an non-null
## ! owner, and if so, whether it has the required color
## ! and width attributes. If the object returns true in each
## ! case, it is kept. If not, it is rejected.
## ! This filter is used only in an open local context.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects, which answer positively to the
## ! filters, which are in position when a local context is open.

type
  AIS_AttributeFilter* {.importcpp: "AIS_AttributeFilter",
                        header: "AIS_AttributeFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## attribute
                                                                                          ## filter
                                                                                          ## object.
                                                                                          ##
                                                                                          ## !
                                                                                          ## This
                                                                                          ## filter
                                                                                          ## object
                                                                                          ## determines
                                                                                          ## whether
                                                                                          ## selectable
                                                                                          ##
                                                                                          ## !
                                                                                          ## interactive
                                                                                          ## objects
                                                                                          ## have
                                                                                          ## a
                                                                                          ## non-null
                                                                                          ## owner.


proc constructAIS_AttributeFilter*(): AIS_AttributeFilter {.constructor,
    importcpp: "AIS_AttributeFilter(@)", header: "AIS_AttributeFilter.hxx".}
proc constructAIS_AttributeFilter*(aCol: Quantity_NameOfColor): AIS_AttributeFilter {.
    constructor, importcpp: "AIS_AttributeFilter(@)",
    header: "AIS_AttributeFilter.hxx".}
proc constructAIS_AttributeFilter*(aWidth: Standard_Real): AIS_AttributeFilter {.
    constructor, importcpp: "AIS_AttributeFilter(@)",
    header: "AIS_AttributeFilter.hxx".}
proc HasColor*(this: AIS_AttributeFilter): Standard_Boolean {.noSideEffect,
    importcpp: "HasColor", header: "AIS_AttributeFilter.hxx".}
proc HasWidth*(this: AIS_AttributeFilter): Standard_Boolean {.noSideEffect,
    importcpp: "HasWidth", header: "AIS_AttributeFilter.hxx".}
proc SetColor*(this: var AIS_AttributeFilter; aCol: Quantity_NameOfColor) {.
    importcpp: "SetColor", header: "AIS_AttributeFilter.hxx".}
proc SetWidth*(this: var AIS_AttributeFilter; aWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "AIS_AttributeFilter.hxx".}
proc UnsetColor*(this: var AIS_AttributeFilter) {.importcpp: "UnsetColor",
    header: "AIS_AttributeFilter.hxx".}
proc UnsetWidth*(this: var AIS_AttributeFilter) {.importcpp: "UnsetWidth",
    header: "AIS_AttributeFilter.hxx".}
proc IsOk*(this: AIS_AttributeFilter; anObj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "AIS_AttributeFilter.hxx".}
type
  AIS_AttributeFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "AIS_AttributeFilter::get_type_name(@)",
                              header: "AIS_AttributeFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_AttributeFilter::get_type_descriptor(@)",
    header: "AIS_AttributeFilter.hxx".}
proc DynamicType*(this: AIS_AttributeFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_AttributeFilter.hxx".}