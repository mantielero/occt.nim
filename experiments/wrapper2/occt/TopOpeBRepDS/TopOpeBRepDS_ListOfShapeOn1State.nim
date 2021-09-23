##  Created on: 1995-06-12
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

## ! represent a list of shape

type
  TopOpeBRepDS_ListOfShapeOn1State* {.importcpp: "TopOpeBRepDS_ListOfShapeOn1State", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx",
                                     bycopy.} = object


proc constructTopOpeBRepDS_ListOfShapeOn1State*(): TopOpeBRepDS_ListOfShapeOn1State {.
    constructor, importcpp: "TopOpeBRepDS_ListOfShapeOn1State(@)",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc ListOnState*(this: TopOpeBRepDS_ListOfShapeOn1State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ListOnState",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc ChangeListOnState*(this: var TopOpeBRepDS_ListOfShapeOn1State): var TopTools_ListOfShape {.
    importcpp: "ChangeListOnState", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc IsSplit*(this: TopOpeBRepDS_ListOfShapeOn1State): Standard_Boolean {.
    noSideEffect, importcpp: "IsSplit",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc Split*(this: var TopOpeBRepDS_ListOfShapeOn1State;
           B: Standard_Boolean = Standard_True) {.importcpp: "Split",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc Clear*(this: var TopOpeBRepDS_ListOfShapeOn1State) {.importcpp: "Clear",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}