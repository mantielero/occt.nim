##  Created on: 1993-07-16
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopLoc_Location"
type
  TopToolsLocationSet* {.importcpp: "TopTools_LocationSet",
                        header: "TopTools_LocationSet.hxx", bycopy.} = object ## ! Returns an empty set of
                                                                         ## locations.


proc constructTopToolsLocationSet*(): TopToolsLocationSet {.constructor,
    importcpp: "TopTools_LocationSet(@)", header: "TopTools_LocationSet.hxx".}
proc clear*(this: var TopToolsLocationSet) {.importcpp: "Clear",
    header: "TopTools_LocationSet.hxx".}
proc add*(this: var TopToolsLocationSet; L: TopLocLocation): cint {.importcpp: "Add",
    header: "TopTools_LocationSet.hxx".}
proc location*(this: TopToolsLocationSet; i: cint): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "TopTools_LocationSet.hxx".}
proc index*(this: TopToolsLocationSet; L: TopLocLocation): cint {.noSideEffect,
    importcpp: "Index", header: "TopTools_LocationSet.hxx".}
proc dump*(this: TopToolsLocationSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "TopTools_LocationSet.hxx".}
proc write*(this: TopToolsLocationSet; os: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "TopTools_LocationSet.hxx".}
proc read*(this: var TopToolsLocationSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "TopTools_LocationSet.hxx".}

























