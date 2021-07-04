##  Created on: 1996-10-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Address, ../Standard/Standard_Boolean, TopOpeBRepDS_Surface

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Surface"
type
  TopOpeBRepDS_SurfaceExplorer* {.importcpp: "TopOpeBRepDS_SurfaceExplorer",
                                 header: "TopOpeBRepDS_SurfaceExplorer.hxx",
                                 bycopy.} = object


proc constructTopOpeBRepDS_SurfaceExplorer*(): TopOpeBRepDS_SurfaceExplorer {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceExplorer(@)",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc constructTopOpeBRepDS_SurfaceExplorer*(DS: TopOpeBRepDS_DataStructure;
    FindOnlyKeep: Standard_Boolean = Standard_True): TopOpeBRepDS_SurfaceExplorer {.
    constructor, importcpp: "TopOpeBRepDS_SurfaceExplorer(@)",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc Init*(this: var TopOpeBRepDS_SurfaceExplorer; DS: TopOpeBRepDS_DataStructure;
          FindOnlyKeep: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc More*(this: TopOpeBRepDS_SurfaceExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc Next*(this: var TopOpeBRepDS_SurfaceExplorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc Surface*(this: TopOpeBRepDS_SurfaceExplorer): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc IsSurface*(this: TopOpeBRepDS_SurfaceExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSurface",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc IsSurfaceKeep*(this: TopOpeBRepDS_SurfaceExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSurfaceKeep",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc Surface*(this: TopOpeBRepDS_SurfaceExplorer; I: Standard_Integer): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc NbSurface*(this: var TopOpeBRepDS_SurfaceExplorer): Standard_Integer {.
    importcpp: "NbSurface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc Index*(this: TopOpeBRepDS_SurfaceExplorer): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}