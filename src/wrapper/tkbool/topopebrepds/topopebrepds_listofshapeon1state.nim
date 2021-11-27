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

## ! represent a list of shape

type
  TopOpeBRepDS_ListOfShapeOn1State* {.importcpp: "TopOpeBRepDS_ListOfShapeOn1State", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx",
                                     bycopy.} = object


proc newTopOpeBRepDS_ListOfShapeOn1State*(): TopOpeBRepDS_ListOfShapeOn1State {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_ListOfShapeOn1State(@)",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc listOnState*(this: TopOpeBRepDS_ListOfShapeOn1State): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ListOnState", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc changeListOnState*(this: var TopOpeBRepDS_ListOfShapeOn1State): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeListOnState", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc isSplit*(this: TopOpeBRepDS_ListOfShapeOn1State): bool {.noSideEffect, cdecl,
    importcpp: "IsSplit", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc split*(this: var TopOpeBRepDS_ListOfShapeOn1State; b: bool = true) {.cdecl,
    importcpp: "Split", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc clear*(this: var TopOpeBRepDS_ListOfShapeOn1State) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}