##  Created on: 1993-02-26
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard, ../Standard/Standard_Type, TopLoc_SListOfItemLocation,
  TopLoc_ItemLocation, ../Standard/Standard_Transient

discard "forward decl of TopLoc_ItemLocation"
discard "forward decl of TopLoc_SListOfItemLocation"
discard "forward decl of TopLoc_SListNodeOfItemLocation"
discard "forward decl of TopLoc_SListNodeOfItemLocation"
type
  Handle_TopLoc_SListNodeOfItemLocation* = handle[TopLoc_SListNodeOfItemLocation]
  TopLoc_SListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation", header: "TopLoc_SListNodeOfItemLocation.hxx",
                                   bycopy.} = object of Standard_Transient


proc constructTopLoc_SListNodeOfItemLocation*(I: TopLoc_ItemLocation;
    aTail: TopLoc_SListOfItemLocation): TopLoc_SListNodeOfItemLocation {.
    constructor, importcpp: "TopLoc_SListNodeOfItemLocation(@)",
    header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc Tail*(this: TopLoc_SListNodeOfItemLocation): var TopLoc_SListOfItemLocation {.
    noSideEffect, importcpp: "Tail", header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc Value*(this: TopLoc_SListNodeOfItemLocation): var TopLoc_ItemLocation {.
    noSideEffect, importcpp: "Value", header: "TopLoc_SListNodeOfItemLocation.hxx".}
type
  TopLoc_SListNodeOfItemLocationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopLoc_SListNodeOfItemLocation::get_type_name(@)",
                              header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopLoc_SListNodeOfItemLocation::get_type_descriptor(@)",
    header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc DynamicType*(this: TopLoc_SListNodeOfItemLocation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopLoc_SListNodeOfItemLocation.hxx".}