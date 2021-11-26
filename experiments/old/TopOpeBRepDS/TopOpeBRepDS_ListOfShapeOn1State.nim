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


proc `new`*(this: var TopOpeBRepDS_ListOfShapeOn1State; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator new",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ListOfShapeOn1State; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator delete",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_ListOfShapeOn1State; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator new[]",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_ListOfShapeOn1State; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator delete[]",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc `new`*(this: var TopOpeBRepDS_ListOfShapeOn1State; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator new", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ListOfShapeOn1State; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_ListOfShapeOn1State::operator delete",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc constructTopOpeBRepDS_ListOfShapeOn1State*(): TopOpeBRepDS_ListOfShapeOn1State {.
    constructor, importcpp: "TopOpeBRepDS_ListOfShapeOn1State(@)",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc listOnState*(this: TopOpeBRepDS_ListOfShapeOn1State): TopToolsListOfShape {.
    noSideEffect, importcpp: "ListOnState",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc changeListOnState*(this: var TopOpeBRepDS_ListOfShapeOn1State): var TopToolsListOfShape {.
    importcpp: "ChangeListOnState", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc isSplit*(this: TopOpeBRepDS_ListOfShapeOn1State): StandardBoolean {.
    noSideEffect, importcpp: "IsSplit",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc split*(this: var TopOpeBRepDS_ListOfShapeOn1State; b: StandardBoolean = true) {.
    importcpp: "Split", header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}
proc clear*(this: var TopOpeBRepDS_ListOfShapeOn1State) {.importcpp: "Clear",
    header: "TopOpeBRepDS_ListOfShapeOn1State.hxx".}