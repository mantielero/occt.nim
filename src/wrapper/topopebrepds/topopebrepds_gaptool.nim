import topopebrepds_types
import ../standard/standard_types
import ../topods/topods_types





##  Created on: 1998-08-20
##  Created by: Yves FRICAUD
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newTopOpeBRepDS_GapTool*(): TopOpeBRepDS_GapTool {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_GapTool(@)", header: "TopOpeBRepDS_GapTool.hxx".}
proc newTopOpeBRepDS_GapTool*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_GapTool {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_GapTool(@)", header: "TopOpeBRepDS_GapTool.hxx".}
proc init*(this: var TopOpeBRepDS_GapTool; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    cdecl, importcpp: "Init", header: "TopOpeBRepDS_GapTool.hxx".}
proc interferences*(this: TopOpeBRepDS_GapTool; indexPoint: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "Interferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc sameInterferences*(this: TopOpeBRepDS_GapTool;
                       i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "SameInterferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc changeSameInterferences*(this: var TopOpeBRepDS_GapTool;
                             i: Handle[TopOpeBRepDS_Interference]): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeSameInterferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc curve*(this: TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
           c: var TopOpeBRepDS_Curve): bool {.noSideEffect, cdecl, importcpp: "Curve",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc edgeSupport*(this: TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
                 e: var TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "EdgeSupport", header: "TopOpeBRepDS_GapTool.hxx".}
proc facesSupport*(this: TopOpeBRepDS_GapTool;
                  i: Handle[TopOpeBRepDS_Interference]; f1: var TopoDS_Shape;
                  f2: var TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "FacesSupport", header: "TopOpeBRepDS_GapTool.hxx".}
proc parameterOnEdge*(this: TopOpeBRepDS_GapTool;
                     i: Handle[TopOpeBRepDS_Interference]; e: TopoDS_Shape;
                     u: var cfloat): bool {.noSideEffect, cdecl,
                                        importcpp: "ParameterOnEdge",
                                        header: "TopOpeBRepDS_GapTool.hxx".}
proc setPoint*(this: var TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
              indexPoint: cint) {.cdecl, importcpp: "SetPoint", header: "TopOpeBRepDS_GapTool.hxx".}
proc setParameterOnEdge*(this: var TopOpeBRepDS_GapTool;
                        i: Handle[TopOpeBRepDS_Interference]; e: TopoDS_Shape;
                        u: cfloat) {.cdecl, importcpp: "SetParameterOnEdge",
                                   header: "TopOpeBRepDS_GapTool.hxx".}


