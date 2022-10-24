import toploc_types

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

discard "forward decl of TopLoc_SListNodeOfItemLocation"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopLoc_ItemLocation"


proc newTopLocSListOfItemLocation*(): TopLocSListOfItemLocation {.cdecl,
    constructor, importcpp: "TopLoc_SListOfItemLocation(@)", header: "TopLoc_SListOfItemLocation.hxx".}
proc newTopLocSListOfItemLocation*(anItem: TopLocItemLocation;
                                  aTail: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    cdecl, constructor, importcpp: "TopLoc_SListOfItemLocation(@)", header: "TopLoc_SListOfItemLocation.hxx".}
proc newTopLocSListOfItemLocation*(other: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    cdecl, constructor, importcpp: "TopLoc_SListOfItemLocation(@)", header: "TopLoc_SListOfItemLocation.hxx".}
proc assign*(this: var TopLocSListOfItemLocation; other: TopLocSListOfItemLocation): var TopLocSListOfItemLocation {.
    cdecl, importcpp: "Assign", header: "TopLoc_SListOfItemLocation.hxx".}
proc isEmpty*(this: TopLocSListOfItemLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TopLoc_SListOfItemLocation.hxx".}
proc clear*(this: var TopLocSListOfItemLocation) {.cdecl, importcpp: "Clear",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc destroyTopLocSListOfItemLocation*(this: var TopLocSListOfItemLocation) {.cdecl,
    importcpp: "#.~TopLoc_SListOfItemLocation()", header: "TopLoc_SListOfItemLocation.hxx".}
proc value*(this: TopLocSListOfItemLocation): TopLocItemLocation {.noSideEffect,
    cdecl, importcpp: "Value", header: "TopLoc_SListOfItemLocation.hxx".}
proc tail*(this: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    noSideEffect, cdecl, importcpp: "Tail", header: "TopLoc_SListOfItemLocation.hxx".}
proc construct*(this: var TopLocSListOfItemLocation; anItem: TopLocItemLocation) {.
    cdecl, importcpp: "Construct", header: "TopLoc_SListOfItemLocation.hxx".}
proc toTail*(this: var TopLocSListOfItemLocation) {.cdecl, importcpp: "ToTail",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc more*(this: TopLocSListOfItemLocation): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "TopLoc_SListOfItemLocation.hxx".}
proc next*(this: var TopLocSListOfItemLocation) {.cdecl, importcpp: "Next",
    header: "TopLoc_SListOfItemLocation.hxx".}
