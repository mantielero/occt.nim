##  Created on: 2011-11-29
##  Created by: ANNA MASALSKAYA
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_ListOfInteger, ../Bnd/Bnd_Box,
  ../NCollection/NCollection_UBTree

type
  BRepBuilderAPI_BndBoxTree* = NCollection_UBTree[Standard_Integer, Bnd_Box]

## =======================================================================
## ! Class BRepBuilderAPI_BndBoxTreeSelector
## !   derived from UBTree::Selector
## !   This class is used to select overlapping boxes, stored in
## !   NCollection::UBTree; contains methods to maintain the selection
## !   condition and to retrieve selected objects after search.
## =======================================================================

type
  BRepBuilderAPI_BndBoxTreeSelector* {.importcpp: "BRepBuilderAPI_BndBoxTreeSelector", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx",
                                      bycopy.} = object of Selector ## ! Constructor; calls the base class constructor


proc constructBRepBuilderAPI_BndBoxTreeSelector*(): BRepBuilderAPI_BndBoxTreeSelector {.
    constructor, importcpp: "BRepBuilderAPI_BndBoxTreeSelector(@)",
    header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}
proc Reject*(this: BRepBuilderAPI_BndBoxTreeSelector; theBox: Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "Reject",
    header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}
proc Accept*(this: var BRepBuilderAPI_BndBoxTreeSelector; theObj: Standard_Integer): Standard_Boolean {.
    importcpp: "Accept", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}
proc ClearResList*(this: var BRepBuilderAPI_BndBoxTreeSelector) {.
    importcpp: "ClearResList", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}
proc SetCurrent*(this: var BRepBuilderAPI_BndBoxTreeSelector; theBox: Bnd_Box) {.
    importcpp: "SetCurrent", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}
proc ResInd*(this: var BRepBuilderAPI_BndBoxTreeSelector): TColStd_ListOfInteger {.
    importcpp: "ResInd", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx".}