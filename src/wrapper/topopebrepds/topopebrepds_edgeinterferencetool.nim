import topopebrepds_types
import ../standard/standard_types
import ../topods/topods_types





##  Created on: 1994-11-08
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newTopOpeBRepDS_EdgeInterferenceTool*(): TopOpeBRepDS_EdgeInterferenceTool {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_EdgeInterferenceTool(@)",
    header: "TopOpeBRepDS_EdgeInterferenceTool.hxx".}
proc init*(this: var TopOpeBRepDS_EdgeInterferenceTool; e: TopoDS_Shape;
          i: Handle[TopOpeBRepDS_Interference]) {.cdecl, importcpp: "Init",
    header: "TopOpeBRepDS_EdgeInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_EdgeInterferenceTool; e: TopoDS_Shape;
         v: TopoDS_Shape; i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "Add", header: "TopOpeBRepDS_EdgeInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_EdgeInterferenceTool; e: TopoDS_Shape;
         p: TopOpeBRepDS_Point; i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "Add", header: "TopOpeBRepDS_EdgeInterferenceTool.hxx".}
proc transition*(this: TopOpeBRepDS_EdgeInterferenceTool;
                i: Handle[TopOpeBRepDS_Interference]) {.noSideEffect, cdecl,
    importcpp: "Transition", header: "TopOpeBRepDS_EdgeInterferenceTool.hxx".}


