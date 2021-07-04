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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopLoc/TopLoc_IndexedMapOfLocation,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopLoc_Location"
type
  BinTools_LocationSet* {.importcpp: "BinTools_LocationSet",
                         header: "BinTools_LocationSet.hxx", bycopy.} = object ## !
                                                                          ## Returns an empty set of
                                                                          ## locations.


proc constructBinTools_LocationSet*(): BinTools_LocationSet {.constructor,
    importcpp: "BinTools_LocationSet(@)", header: "BinTools_LocationSet.hxx".}
proc Clear*(this: var BinTools_LocationSet) {.importcpp: "Clear",
    header: "BinTools_LocationSet.hxx".}
proc Add*(this: var BinTools_LocationSet; L: TopLoc_Location): Standard_Integer {.
    importcpp: "Add", header: "BinTools_LocationSet.hxx".}
proc Location*(this: BinTools_LocationSet; I: Standard_Integer): TopLoc_Location {.
    noSideEffect, importcpp: "Location", header: "BinTools_LocationSet.hxx".}
proc Index*(this: BinTools_LocationSet; L: TopLoc_Location): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BinTools_LocationSet.hxx".}
proc NbLocations*(this: BinTools_LocationSet): Standard_Integer {.noSideEffect,
    importcpp: "NbLocations", header: "BinTools_LocationSet.hxx".}
proc Write*(this: BinTools_LocationSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Write", header: "BinTools_LocationSet.hxx".}
proc Read*(this: var BinTools_LocationSet; IS: var Standard_IStream) {.
    importcpp: "Read", header: "BinTools_LocationSet.hxx".}