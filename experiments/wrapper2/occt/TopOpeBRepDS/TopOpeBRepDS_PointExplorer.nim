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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean, TopOpeBRepDS_Point

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Point"
type
  TopOpeBRepDS_PointExplorer* {.importcpp: "TopOpeBRepDS_PointExplorer",
                               header: "TopOpeBRepDS_PointExplorer.hxx", bycopy.} = object


proc constructTopOpeBRepDS_PointExplorer*(): TopOpeBRepDS_PointExplorer {.
    constructor, importcpp: "TopOpeBRepDS_PointExplorer(@)",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc constructTopOpeBRepDS_PointExplorer*(DS: TopOpeBRepDS_DataStructure;
    FindOnlyKeep: Standard_Boolean = Standard_True): TopOpeBRepDS_PointExplorer {.
    constructor, importcpp: "TopOpeBRepDS_PointExplorer(@)",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc Init*(this: var TopOpeBRepDS_PointExplorer; DS: TopOpeBRepDS_DataStructure;
          FindOnlyKeep: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc More*(this: TopOpeBRepDS_PointExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc Next*(this: var TopOpeBRepDS_PointExplorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc Point*(this: TopOpeBRepDS_PointExplorer): TopOpeBRepDS_Point {.noSideEffect,
    importcpp: "Point", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc IsPoint*(this: TopOpeBRepDS_PointExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPoint", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc IsPointKeep*(this: TopOpeBRepDS_PointExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPointKeep",
    header: "TopOpeBRepDS_PointExplorer.hxx".}
proc Point*(this: TopOpeBRepDS_PointExplorer; I: Standard_Integer): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc NbPoint*(this: var TopOpeBRepDS_PointExplorer): Standard_Integer {.
    importcpp: "NbPoint", header: "TopOpeBRepDS_PointExplorer.hxx".}
proc Index*(this: TopOpeBRepDS_PointExplorer): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_PointExplorer.hxx".}