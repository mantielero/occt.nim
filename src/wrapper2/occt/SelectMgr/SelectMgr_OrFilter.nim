##  Created on: 1995-12-04
##  Created by: Stephane MORTAUD
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

import
  ../Standard/Standard, ../Standard/Standard_Type, SelectMgr_CompositionFilter,
  ../Standard/Standard_Boolean

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of SelectMgr_OrFilter"
discard "forward decl of SelectMgr_OrFilter"
type
  Handle_SelectMgr_OrFilter* = handle[SelectMgr_OrFilter]

## ! A framework to define an or selection filter.
## ! This selects one or another type of sensitive entity.

type
  SelectMgr_OrFilter* {.importcpp: "SelectMgr_OrFilter",
                       header: "SelectMgr_OrFilter.hxx", bycopy.} = object of SelectMgr_CompositionFilter ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## an
                                                                                                   ## empty
                                                                                                   ## or
                                                                                                   ## selection
                                                                                                   ## filter.


proc constructSelectMgr_OrFilter*(): SelectMgr_OrFilter {.constructor,
    importcpp: "SelectMgr_OrFilter(@)", header: "SelectMgr_OrFilter.hxx".}
proc IsOk*(this: SelectMgr_OrFilter; anobj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_OrFilter.hxx".}
type
  SelectMgr_OrFilterbase_type* = SelectMgr_CompositionFilter

proc get_type_name*(): cstring {.importcpp: "SelectMgr_OrFilter::get_type_name(@)",
                              header: "SelectMgr_OrFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_OrFilter::get_type_descriptor(@)",
    header: "SelectMgr_OrFilter.hxx".}
proc DynamicType*(this: SelectMgr_OrFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_OrFilter.hxx".}