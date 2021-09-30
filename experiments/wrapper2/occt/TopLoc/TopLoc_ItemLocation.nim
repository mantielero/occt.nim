##  Created on: 1991-01-21
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopLoc_SListOfItemLocation"
type
  TopLocItemLocation* {.importcpp: "TopLoc_ItemLocation",
                       header: "TopLoc_ItemLocation.hxx", bycopy.} = object


proc `new`*(this: var TopLocItemLocation; theSize: csize_t): pointer {.
    importcpp: "TopLoc_ItemLocation::operator new",
    header: "TopLoc_ItemLocation.hxx".}
proc `delete`*(this: var TopLocItemLocation; theAddress: pointer) {.
    importcpp: "TopLoc_ItemLocation::operator delete",
    header: "TopLoc_ItemLocation.hxx".}
proc `new[]`*(this: var TopLocItemLocation; theSize: csize_t): pointer {.
    importcpp: "TopLoc_ItemLocation::operator new[]",
    header: "TopLoc_ItemLocation.hxx".}
proc `delete[]`*(this: var TopLocItemLocation; theAddress: pointer) {.
    importcpp: "TopLoc_ItemLocation::operator delete[]",
    header: "TopLoc_ItemLocation.hxx".}
proc `new`*(this: var TopLocItemLocation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopLoc_ItemLocation::operator new",
    header: "TopLoc_ItemLocation.hxx".}
proc `delete`*(this: var TopLocItemLocation; a2: pointer; a3: pointer) {.
    importcpp: "TopLoc_ItemLocation::operator delete",
    header: "TopLoc_ItemLocation.hxx".}
proc constructTopLocItemLocation*(d: Handle[TopLocDatum3D]; p: int): TopLocItemLocation {.
    constructor, importcpp: "TopLoc_ItemLocation(@)",
    header: "TopLoc_ItemLocation.hxx".}
proc dumpJson*(this: TopLocItemLocation; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopLoc_ItemLocation.hxx".}