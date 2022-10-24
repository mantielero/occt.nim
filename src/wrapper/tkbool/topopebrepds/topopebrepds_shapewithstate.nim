import topopebrepds_types

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


proc newTopOpeBRepDS_ShapeWithState*(): TopOpeBRepDS_ShapeWithState {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_ShapeWithState(@)", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc part*(this: TopOpeBRepDS_ShapeWithState; aState: TopAbsState): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "Part", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc addPart*(this: var TopOpeBRepDS_ShapeWithState; aShape: TopoDS_Shape;
             aState: TopAbsState) {.cdecl, importcpp: "AddPart", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc addParts*(this: var TopOpeBRepDS_ShapeWithState;
              aListOfShape: TopToolsListOfShape; aState: TopAbsState) {.cdecl,
    importcpp: "AddParts", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc setState*(this: var TopOpeBRepDS_ShapeWithState; aState: TopAbsState) {.cdecl,
    importcpp: "SetState", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc state*(this: TopOpeBRepDS_ShapeWithState): TopAbsState {.noSideEffect, cdecl,
    importcpp: "State", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc setIsSplitted*(this: var TopOpeBRepDS_ShapeWithState; anIsSplitted: bool) {.
    cdecl, importcpp: "SetIsSplitted", header: "TopOpeBRepDS_ShapeWithState.hxx".}
proc isSplitted*(this: TopOpeBRepDS_ShapeWithState): bool {.noSideEffect, cdecl,
    importcpp: "IsSplitted", header: "TopOpeBRepDS_ShapeWithState.hxx".}
