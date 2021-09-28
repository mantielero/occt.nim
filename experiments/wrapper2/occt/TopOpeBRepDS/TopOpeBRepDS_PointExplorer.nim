##  Created on: 1995-12-08
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

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Point"
type
  TopOpeBRepDS_PointExplorer* {.importcpp: "TopOpeBRepDS_PointExplorer",
                               header: "TopOpeBRepDS_PointExplorer.hxx", bycopy.} = object


proc constructTopOpeBRepDS_PointExplorer*(): TopOpeBRepDS_PointExplorer {.
    constructor, importcpp: "TopOpeBRepDS_PointExplorer(@)",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc constructTopOpeBRepDS_PointExplorer*(ds: TopOpeBRepDS_DataStructure;
    findOnlyKeep: bool = true): TopOpeBRepDS_PointExplorer {.constructor,
    importcpp: "TopOpeBRepDS_PointExplorer(@)",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc init*(this: var TopOpeBRepDS_PointExplorer; ds: TopOpeBRepDS_DataStructure;
          findOnlyKeep: bool = true) {.importcpp: "Init",
                                   header: "TopOpeBRepDS_PointExplorer.hxx".}
proc more*(this: TopOpeBRepDS_PointExplorer): bool {.noSideEffect, importcpp: "More",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc next*(this: var TopOpeBRepDS_PointExplorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc point*(this: TopOpeBRepDS_PointExplorer): TopOpeBRepDS_Point {.noSideEffect,
    importcpp: "Point", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc isPoint*(this: TopOpeBRepDS_PointExplorer; i: cint): bool {.noSideEffect,
    importcpp: "IsPoint", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc isPointKeep*(this: TopOpeBRepDS_PointExplorer; i: cint): bool {.noSideEffect,
    importcpp: "IsPointKeep", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc point*(this: TopOpeBRepDS_PointExplorer; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc nbPoint*(this: var TopOpeBRepDS_PointExplorer): cint {.importcpp: "NbPoint",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc index*(this: TopOpeBRepDS_PointExplorer): cint {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_PointExplorer.hxx".}

























