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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopLoc/TopLoc_IndexedMapOfLocation,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Message/Message_ProgressRange

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopLoc_Location"
type
  TopTools_LocationSet* {.importcpp: "TopTools_LocationSet",
                         header: "TopTools_LocationSet.hxx", bycopy.} = object ## !
                                                                          ## Returns an empty set of
                                                                          ## locations.


proc constructTopTools_LocationSet*(): TopTools_LocationSet {.constructor,
    importcpp: "TopTools_LocationSet(@)", header: "TopTools_LocationSet.hxx".}
proc Clear*(this: var TopTools_LocationSet) {.importcpp: "Clear",
    header: "TopTools_LocationSet.hxx".}
proc Add*(this: var TopTools_LocationSet; L: TopLoc_Location): Standard_Integer {.
    importcpp: "Add", header: "TopTools_LocationSet.hxx".}
proc Location*(this: TopTools_LocationSet; I: Standard_Integer): TopLoc_Location {.
    noSideEffect, importcpp: "Location", header: "TopTools_LocationSet.hxx".}
proc Index*(this: TopTools_LocationSet; L: TopLoc_Location): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "TopTools_LocationSet.hxx".}
proc Dump*(this: TopTools_LocationSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TopTools_LocationSet.hxx".}
proc Write*(this: TopTools_LocationSet; OS: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "TopTools_LocationSet.hxx".}
proc Read*(this: var TopTools_LocationSet; IS: var Standard_IStream;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "TopTools_LocationSet.hxx".}