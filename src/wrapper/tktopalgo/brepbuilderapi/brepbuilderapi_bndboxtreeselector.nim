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

type
  BRepBuilderAPI_BndBoxTree* = NCollectionUBTree[cint, BndBox]

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


proc newBRepBuilderAPI_BndBoxTreeSelector*(): BRepBuilderAPI_BndBoxTreeSelector {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_BndBoxTreeSelector(@)",
    dynlib: tktopalgo.}
proc reject*(this: BRepBuilderAPI_BndBoxTreeSelector; theBox: BndBox): bool {.
    noSideEffect, cdecl, importcpp: "Reject", dynlib: tktopalgo.}
proc accept*(this: var BRepBuilderAPI_BndBoxTreeSelector; theObj: cint): bool {.cdecl,
    importcpp: "Accept", dynlib: tktopalgo.}
proc clearResList*(this: var BRepBuilderAPI_BndBoxTreeSelector) {.cdecl,
    importcpp: "ClearResList", dynlib: tktopalgo.}
proc setCurrent*(this: var BRepBuilderAPI_BndBoxTreeSelector; theBox: BndBox) {.cdecl,
    importcpp: "SetCurrent", dynlib: tktopalgo.}
proc resInd*(this: var BRepBuilderAPI_BndBoxTreeSelector): TColStdListOfInteger {.
    cdecl, importcpp: "ResInd", dynlib: tktopalgo.}