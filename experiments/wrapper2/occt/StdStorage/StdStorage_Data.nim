##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of StdStorage_HeaderData"
discard "forward decl of StdStorage_TypeData"
discard "forward decl of StdStorage_RootData"
type
  StdStorageData* {.importcpp: "StdStorage_Data", header: "StdStorage_Data.hxx",
                   bycopy.} = object of StandardTransient ## ! Creates an empty set of data.
                                                     ## ! You explicitly create a StdStorage_Data object
                                                     ## ! when preparing the set of objects to be stored
                                                     ## ! together in a container (for example, in a file).
                                                     ## ! Then use the function StdStorage_RootData's AddRoot
                                                     ## ! to add persistent objects to the set of data.
                                                     ## ! A StdStorage_Data object is also returned by the
                                                     ## ! Read function of a StdStorage algorithm. Use the
                                                     ## ! StdStorage_RootData's functions NumberOfRoots and
                                                     ## ! Roots to find the roots which were stored in the
                                                     ## ! read container.


proc constructStdStorageData*(): StdStorageData {.constructor,
    importcpp: "StdStorage_Data(@)", header: "StdStorage_Data.hxx".}
proc clear*(this: var StdStorageData) {.importcpp: "Clear",
                                    header: "StdStorage_Data.hxx".}
proc headerData*(this: var StdStorageData): Handle[StdStorageHeaderData] {.
    importcpp: "HeaderData", header: "StdStorage_Data.hxx".}
proc typeData*(this: var StdStorageData): Handle[StdStorageTypeData] {.
    importcpp: "TypeData", header: "StdStorage_Data.hxx".}
proc rootData*(this: var StdStorageData): Handle[StdStorageRootData] {.
    importcpp: "RootData", header: "StdStorage_Data.hxx".}
