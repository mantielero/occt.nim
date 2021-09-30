##  Created on: 1999-09-20
##  Created by: Peter KURNEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_ShapeWithState* {.importcpp: "TopOpeBRepDS_ShapeWithState",
                                header: "TopOpeBRepDS_ShapeWithState.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_ShapeWithState; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator new",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ShapeWithState; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator delete",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_ShapeWithState; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator new[]",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_ShapeWithState; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator delete[]",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc `new`*(this: var TopOpeBRepDS_ShapeWithState; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator new",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc `delete`*(this: var TopOpeBRepDS_ShapeWithState; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_ShapeWithState::operator delete",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc constructTopOpeBRepDS_ShapeWithState*(): TopOpeBRepDS_ShapeWithState {.
    constructor, importcpp: "TopOpeBRepDS_ShapeWithState(@)",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc part*(this: TopOpeBRepDS_ShapeWithState; aState: TopAbsState): TopToolsListOfShape {.
    noSideEffect, importcpp: "Part", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc addPart*(this: var TopOpeBRepDS_ShapeWithState; aShape: TopoDS_Shape;
             aState: TopAbsState) {.importcpp: "AddPart",
                                  header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc addParts*(this: var TopOpeBRepDS_ShapeWithState;
              aListOfShape: TopToolsListOfShape; aState: TopAbsState) {.
    importcpp: "AddParts", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc setState*(this: var TopOpeBRepDS_ShapeWithState; aState: TopAbsState) {.
    importcpp: "SetState", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc state*(this: TopOpeBRepDS_ShapeWithState): TopAbsState {.noSideEffect,
    importcpp: "State", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc setIsSplitted*(this: var TopOpeBRepDS_ShapeWithState;
                   anIsSplitted: StandardBoolean) {.importcpp: "SetIsSplitted",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc isSplitted*(this: TopOpeBRepDS_ShapeWithState): StandardBoolean {.noSideEffect,
    importcpp: "IsSplitted", header: "TopOpeBRepDS_ShapeWithState.hxx".}