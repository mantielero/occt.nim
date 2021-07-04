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

import
  ../StdObjMgt/StdObjMgt_SharedObject, ../StdObjMgt/StdObjMgt_Persistent,
  ../StdObject/StdObject_Location, ../StdObjMgt/StdObjMgt_TransientPersistentMap,
  ../TopLoc/TopLoc_Datum3D, ../TopLoc/TopLoc_Location

type
  StdPersistent_TopLoc* {.importcpp: "StdPersistent_TopLoc",
                         header: "StdPersistent_TopLoc.hxx", bycopy.} = object

  StdPersistent_TopLocDatum3D* {.importcpp: "StdPersistent_TopLoc::Datum3D",
                                header: "StdPersistent_TopLoc.hxx", bycopy.} = object of SharedBase[
      TopLoc_Datum3D]         ## ! Read persistent data from a file.


proc Read*(this: var StdPersistent_TopLocDatum3D;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_TopLoc.hxx".}
proc Write*(this: StdPersistent_TopLocDatum3D;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "StdPersistent_TopLoc.hxx".}
proc PChildren*(this: StdPersistent_TopLocDatum3D; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdPersistent_TopLoc.hxx".}
proc PName*(this: StdPersistent_TopLocDatum3D): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_TopLoc.hxx".}
type
  StdPersistent_TopLocItemLocation* {.importcpp: "StdPersistent_TopLoc::ItemLocation",
                                     header: "StdPersistent_TopLoc.hxx", bycopy.} = object of StdObjMgt_Persistent ##
                                                                                                            ## !
                                                                                                            ## Read
                                                                                                            ## persistent
                                                                                                            ## data
                                                                                                            ## from
                                                                                                            ## a
                                                                                                            ## file.


proc Read*(this: var StdPersistent_TopLocItemLocation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_TopLoc.hxx".}
proc Write*(this: StdPersistent_TopLocItemLocation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "StdPersistent_TopLoc.hxx".}
proc PChildren*(this: StdPersistent_TopLocItemLocation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_TopLoc.hxx".}
proc PName*(this: StdPersistent_TopLocItemLocation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "StdPersistent_TopLoc.hxx".}
proc Import*(this: StdPersistent_TopLocItemLocation): TopLoc_Location {.
    noSideEffect, importcpp: "Import", header: "StdPersistent_TopLoc.hxx".}
proc Translate*(theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    StdPersistent_TopLocItemLocation] {.importcpp: "StdPersistent_TopLoc::Translate(@)",
                                       header: "StdPersistent_TopLoc.hxx".}
proc Translate*(theDatum: handle[TopLoc_Datum3D];
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    StdPersistent_TopLocDatum3D] {.importcpp: "StdPersistent_TopLoc::Translate(@)",
                                  header: "StdPersistent_TopLoc.hxx".}