##  Created by: Peter KURNEV
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
  ../Standard/Standard_Handle, BOPAlgo_Builder,
  ../NCollection/NCollection_BaseAllocator, ../TopTools/TopTools_ListOfShape

discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_Section* {.importcpp: "BOPAlgo_Section", header: "BOPAlgo_Section.hxx",
                    bycopy.} = object of BOPAlgo_Builder ## ! Empty constructor
                                                    ## ! Checks the data before performing the operation


proc constructBOPAlgo_Section*(): BOPAlgo_Section {.constructor,
    importcpp: "BOPAlgo_Section(@)", header: "BOPAlgo_Section.hxx".}
proc destroyBOPAlgo_Section*(this: var BOPAlgo_Section) {.
    importcpp: "#.~BOPAlgo_Section()", header: "BOPAlgo_Section.hxx".}
proc constructBOPAlgo_Section*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_Section {.
    constructor, importcpp: "BOPAlgo_Section(@)", header: "BOPAlgo_Section.hxx".}