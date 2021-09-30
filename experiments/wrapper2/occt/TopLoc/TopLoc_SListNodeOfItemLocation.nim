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

discard "forward decl of TopLoc_ItemLocation"
discard "forward decl of TopLoc_SListOfItemLocation"
discard "forward decl of TopLoc_SListNodeOfItemLocation"
discard "forward decl of TopLoc_SListNodeOfItemLocation"
type
  TopLocSListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation",
                                  header: "TopLoc_SListNodeOfItemLocation.hxx",
                                  bycopy.} = object of StandardTransient


  HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]
type
  TopLocSListNodeOfItemLocationbaseType* = StandardTransient

proc constructTopLocSListNodeOfItemLocation*(i: TopLocItemLocation;
    aTail: TopLocSListOfItemLocation): TopLocSListNodeOfItemLocation {.constructor,
    importcpp: "TopLoc_SListNodeOfItemLocation(@)",
    header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc tail*(this: TopLocSListNodeOfItemLocation): var TopLocSListOfItemLocation {.
    noSideEffect, importcpp: "Tail", header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc value*(this: TopLocSListNodeOfItemLocation): var TopLocItemLocation {.
    noSideEffect, importcpp: "Value", header: "TopLoc_SListNodeOfItemLocation.hxx".}

#[ proc getTypeName*(): cstring {.importcpp: "TopLoc_SListNodeOfItemLocation::get_type_name(@)",
                            header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopLoc_SListNodeOfItemLocation::get_type_descriptor(@)",
    header: "TopLoc_SListNodeOfItemLocation.hxx".}
proc dynamicType*(this: TopLocSListNodeOfItemLocation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopLoc_SListNodeOfItemLocation.hxx".} ]#