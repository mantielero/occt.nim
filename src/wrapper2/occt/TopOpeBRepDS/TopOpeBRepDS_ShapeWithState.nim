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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_ShapeWithState* {.importcpp: "TopOpeBRepDS_ShapeWithState",
                                header: "TopOpeBRepDS_ShapeWithState.hxx", bycopy.} = object


proc constructTopOpeBRepDS_ShapeWithState*(): TopOpeBRepDS_ShapeWithState {.
    constructor, importcpp: "TopOpeBRepDS_ShapeWithState(@)",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc Part*(this: TopOpeBRepDS_ShapeWithState; aState: TopAbs_State): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Part", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc AddPart*(this: var TopOpeBRepDS_ShapeWithState; aShape: TopoDS_Shape;
             aState: TopAbs_State) {.importcpp: "AddPart",
                                   header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc AddParts*(this: var TopOpeBRepDS_ShapeWithState;
              aListOfShape: TopTools_ListOfShape; aState: TopAbs_State) {.
    importcpp: "AddParts", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc SetState*(this: var TopOpeBRepDS_ShapeWithState; aState: TopAbs_State) {.
    importcpp: "SetState", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc State*(this: TopOpeBRepDS_ShapeWithState): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc SetIsSplitted*(this: var TopOpeBRepDS_ShapeWithState;
                   anIsSplitted: Standard_Boolean) {.importcpp: "SetIsSplitted",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc IsSplitted*(this: TopOpeBRepDS_ShapeWithState): Standard_Boolean {.
    noSideEffect, importcpp: "IsSplitted",
    header: "TopOpeBRepDS_ShapeWithState.hxx".}