import toptools_types

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


proc newTopToolsLocationSet*(): TopToolsLocationSet {.cdecl, constructor,
    importcpp: "TopTools_LocationSet(@)", header: "TopTools_LocationSet.hxx".}
proc clear*(this: var TopToolsLocationSet) {.cdecl, importcpp: "Clear", header: "TopTools_LocationSet.hxx".}
proc add*(this: var TopToolsLocationSet; L: TopLocLocation): cint {.cdecl,
    importcpp: "Add", header: "TopTools_LocationSet.hxx".}
proc location*(this: TopToolsLocationSet; i: cint): TopLocLocation {.noSideEffect,
    cdecl, importcpp: "Location", header: "TopTools_LocationSet.hxx".}
proc index*(this: TopToolsLocationSet; L: TopLocLocation): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "TopTools_LocationSet.hxx".}
proc dump*(this: TopToolsLocationSet; os: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "TopTools_LocationSet.hxx".}
proc write*(this: TopToolsLocationSet; os: var StandardOStream;
           theProgress: MessageProgressRange = newMessageProgressRange()) {.
    noSideEffect, cdecl, importcpp: "Write", header: "TopTools_LocationSet.hxx".}
proc read*(this: var TopToolsLocationSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Read", header: "TopTools_LocationSet.hxx".}
