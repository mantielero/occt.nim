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
discard "forward decl of SelectMgr_AndFilter"
discard "forward decl of SelectMgr_AndFilter"
type
  HandleC1C1* = Handle[SelectMgrAndFilter]

## ! A framework to define a selection filter for two or
## ! more types of entity.

type
  SelectMgrAndFilter* {.importcpp: "SelectMgr_AndFilter",
                       header: "SelectMgr_AndFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## an
                                                                                                   ## empty
                                                                                                   ## selection
                                                                                                   ## filter
                                                                                                   ## object
                                                                                                   ## for
                                                                                                   ## two
                                                                                                   ## or
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## more
                                                                                                   ## types
                                                                                                   ## of
                                                                                                   ## entity.


proc constructSelectMgrAndFilter*(): SelectMgrAndFilter {.constructor,
    importcpp: "SelectMgr_AndFilter(@)", header: "SelectMgr_AndFilter.hxx".}
proc isOk*(this: SelectMgrAndFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_AndFilter.hxx".}
type
  SelectMgrAndFilterbaseType* = SelectMgrCompositionFilter

proc getTypeName*(): cstring {.importcpp: "SelectMgr_AndFilter::get_type_name(@)",
                            header: "SelectMgr_AndFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_AndFilter::get_type_descriptor(@)",
    header: "SelectMgr_AndFilter.hxx".}
proc dynamicType*(this: SelectMgrAndFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_AndFilter.hxx".}

























