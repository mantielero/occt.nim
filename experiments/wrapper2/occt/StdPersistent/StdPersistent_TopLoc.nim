##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StdPersistentTopLoc* {.importcpp: "StdPersistent_TopLoc",
                        header: "StdPersistent_TopLoc.hxx", bycopy.} = object

  StdPersistentTopLocDatum3D* {.importcpp: "StdPersistent_TopLoc::Datum3D",
                               header: "StdPersistent_TopLoc.hxx", bycopy.} = object of SharedBase[
      TopLocDatum3D]          ## ! Read persistent data from a file.


proc read*(this: var StdPersistentTopLocDatum3D; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdPersistent_TopLoc.hxx".}
proc write*(this: StdPersistentTopLocDatum3D; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_TopLoc.hxx".}
proc pChildren*(this: StdPersistentTopLocDatum3D; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdPersistent_TopLoc.hxx".}
proc pName*(this: StdPersistentTopLocDatum3D): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_TopLoc.hxx".}
type
  StdPersistentTopLocItemLocation* {.importcpp: "StdPersistent_TopLoc::ItemLocation",
                                    header: "StdPersistent_TopLoc.hxx", bycopy.} = object of StdObjMgtPersistent ##
                                                                                                          ## !
                                                                                                          ## Read
                                                                                                          ## persistent
                                                                                                          ## data
                                                                                                          ## from
                                                                                                          ## a
                                                                                                          ## file.


proc read*(this: var StdPersistentTopLocItemLocation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdPersistent_TopLoc.hxx".}
proc write*(this: StdPersistentTopLocItemLocation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "StdPersistent_TopLoc.hxx".}
proc pChildren*(this: StdPersistentTopLocItemLocation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_TopLoc.hxx".}
proc pName*(this: StdPersistentTopLocItemLocation): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_TopLoc.hxx".}
proc `import`*(this: StdPersistentTopLocItemLocation): TopLocLocation {.
    noSideEffect, importcpp: "Import", header: "StdPersistent_TopLoc.hxx".}
proc translate*(theLoc: TopLocLocation; theMap: var StdObjMgtTransientPersistentMap): Handle[
    StdPersistentTopLocItemLocation] {.importcpp: "StdPersistent_TopLoc::Translate(@)",
                                      header: "StdPersistent_TopLoc.hxx".}
proc translate*(theDatum: Handle[TopLocDatum3D];
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    StdPersistentTopLocDatum3D] {.importcpp: "StdPersistent_TopLoc::Translate(@)",
                                 header: "StdPersistent_TopLoc.hxx".}
