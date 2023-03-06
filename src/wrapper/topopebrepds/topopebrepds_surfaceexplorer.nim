import topopebrepds_types





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



proc newTopOpeBRepDS_SurfaceExplorer*(): TopOpeBRepDS_SurfaceExplorer {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_SurfaceExplorer(@)", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc newTopOpeBRepDS_SurfaceExplorer*(ds: TopOpeBRepDS_DataStructure;
                                     findOnlyKeep: bool = true): TopOpeBRepDS_SurfaceExplorer {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_SurfaceExplorer(@)", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc init*(this: var TopOpeBRepDS_SurfaceExplorer; ds: TopOpeBRepDS_DataStructure;
          findOnlyKeep: bool = true) {.cdecl, importcpp: "Init", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc more*(this: TopOpeBRepDS_SurfaceExplorer): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc next*(this: var TopOpeBRepDS_SurfaceExplorer) {.cdecl, importcpp: "Next",
    header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc surface*(this: TopOpeBRepDS_SurfaceExplorer): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc isSurface*(this: TopOpeBRepDS_SurfaceExplorer; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsSurface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc isSurfaceKeep*(this: TopOpeBRepDS_SurfaceExplorer; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsSurfaceKeep", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc surface*(this: TopOpeBRepDS_SurfaceExplorer; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc nbSurface*(this: var TopOpeBRepDS_SurfaceExplorer): cint {.cdecl,
    importcpp: "NbSurface", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}
proc index*(this: TopOpeBRepDS_SurfaceExplorer): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "TopOpeBRepDS_SurfaceExplorer.hxx".}


