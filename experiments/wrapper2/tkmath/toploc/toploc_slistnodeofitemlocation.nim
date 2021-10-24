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
type
  HandleTopLocSListNodeOfItemLocation* = Handle[TopLocSListNodeOfItemLocation]
  TopLocSListNodeOfItemLocation* {.importcpp: "TopLoc_SListNodeOfItemLocation",
                                  header: "TopLoc_SListNodeOfItemLocation.hxx",
                                  bycopy.} = object of StandardTransient


proc newTopLocSListNodeOfItemLocation*(i: TopLocItemLocation;
                                      aTail: TopLocSListOfItemLocation): TopLocSListNodeOfItemLocation {.
    cdecl, constructor, importcpp: "TopLoc_SListNodeOfItemLocation(@)",
    dynlib: tkmath.}
proc tail*(this: TopLocSListNodeOfItemLocation): var TopLocSListOfItemLocation {.
    noSideEffect, cdecl, importcpp: "Tail", dynlib: tkmath.}
proc value*(this: TopLocSListNodeOfItemLocation): var TopLocItemLocation {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkmath.}