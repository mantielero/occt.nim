##  Created on: 2004-06-15
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  BinToolsLocationSet* {.importcpp: "BinTools_LocationSet",
                        header: "BinTools_LocationSet.hxx", bycopy.} = object ## ! Returns an empty set of
                                                                         ## locations.


proc constructBinToolsLocationSet*(): BinToolsLocationSet {.constructor,
    importcpp: "BinTools_LocationSet(@)", header: "BinTools_LocationSet.hxx".}
proc clear*(this: var BinToolsLocationSet) {.importcpp: "Clear",
    header: "BinTools_LocationSet.hxx".}
proc add*(this: var BinToolsLocationSet; L: TopLocLocation): cint {.importcpp: "Add",
    header: "BinTools_LocationSet.hxx".}
proc location*(this: BinToolsLocationSet; i: cint): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "BinTools_LocationSet.hxx".}
proc index*(this: BinToolsLocationSet; L: TopLocLocation): cint {.noSideEffect,
    importcpp: "Index", header: "BinTools_LocationSet.hxx".}
proc nbLocations*(this: BinToolsLocationSet): cint {.noSideEffect,
    importcpp: "NbLocations", header: "BinTools_LocationSet.hxx".}
proc write*(this: BinToolsLocationSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Write", header: "BinTools_LocationSet.hxx".}
proc read*(this: var BinToolsLocationSet; `is`: var StandardIStream) {.
    importcpp: "Read", header: "BinTools_LocationSet.hxx".}

























