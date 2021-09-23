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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Macro,
  ../Standard/Standard_Handle

discard "forward decl of StdStorage_HeaderData"
discard "forward decl of StdStorage_TypeData"
discard "forward decl of StdStorage_RootData"
type
  StdStorage_Data* {.importcpp: "StdStorage_Data", header: "StdStorage_Data.hxx",
                    bycopy.} = object of Standard_Transient ## ! Creates an empty set of data.
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


proc constructStdStorage_Data*(): StdStorage_Data {.constructor,
    importcpp: "StdStorage_Data(@)", header: "StdStorage_Data.hxx".}
proc Clear*(this: var StdStorage_Data) {.importcpp: "Clear",
                                     header: "StdStorage_Data.hxx".}
proc HeaderData*(this: var StdStorage_Data): handle[StdStorage_HeaderData] {.
    importcpp: "HeaderData", header: "StdStorage_Data.hxx".}
proc TypeData*(this: var StdStorage_Data): handle[StdStorage_TypeData] {.
    importcpp: "TypeData", header: "StdStorage_Data.hxx".}
proc RootData*(this: var StdStorage_Data): handle[StdStorage_RootData] {.
    importcpp: "RootData", header: "StdStorage_Data.hxx".}