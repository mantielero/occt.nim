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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of SelectMgr_OrFilter"
discard "forward decl of SelectMgr_OrFilter"
type
  HandleSelectMgrOrFilter* = Handle[SelectMgrOrFilter]

## ! A framework to define an or selection filter.
## ! This selects one or another type of sensitive entity.

type
  SelectMgrOrFilter* {.importcpp: "SelectMgr_OrFilter",
                      header: "SelectMgr_OrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## empty
                                                                                                 ## or
                                                                                                 ## selection
                                                                                                 ## filter.


proc constructSelectMgrOrFilter*(): SelectMgrOrFilter {.constructor,
    importcpp: "SelectMgr_OrFilter(@)", header: "SelectMgr_OrFilter.hxx".}
proc isOk*(this: SelectMgrOrFilter; anobj: Handle[SelectMgrEntityOwner]): StandardBoolean {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_OrFilter.hxx".}
type
  SelectMgrOrFilterbaseType* = SelectMgrCompositionFilter

proc getTypeName*(): cstring {.importcpp: "SelectMgr_OrFilter::get_type_name(@)",
                            header: "SelectMgr_OrFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_OrFilter::get_type_descriptor(@)",
    header: "SelectMgr_OrFilter.hxx".}
proc dynamicType*(this: SelectMgrOrFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_OrFilter.hxx".}

