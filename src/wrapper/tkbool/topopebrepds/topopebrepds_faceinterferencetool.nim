import topopebrepds_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types





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



proc newTopOpeBRepDS_FaceInterferenceTool*(p: TopOpeBRepDS_PDataStructure): TopOpeBRepDS_FaceInterferenceTool {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_FaceInterferenceTool(@)",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc init*(this: var TopOpeBRepDS_FaceInterferenceTool; fi: TopoDS_Shape;
          e: TopoDS_Shape; eisnew: bool; i: Handle[TopOpeBRepDS_Interference]) {.
    cdecl, importcpp: "Init", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_FaceInterferenceTool; fi: TopoDS_Shape;
         f: TopoDS_Shape; e: TopoDS_Shape; eisnew: bool;
         i: Handle[TopOpeBRepDS_Interference]) {.cdecl, importcpp: "Add",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_FaceInterferenceTool; e: TopoDS_Shape;
         c: TopOpeBRepDS_Curve; i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "Add", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc setEdgePntPar*(this: var TopOpeBRepDS_FaceInterferenceTool; p: PntObj; par: cfloat) {.
    cdecl, importcpp: "SetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc getEdgePntPar*(this: TopOpeBRepDS_FaceInterferenceTool; p: var PntObj;
                   par: var cfloat) {.noSideEffect, cdecl,
                                   importcpp: "GetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc isEdgePntParDef*(this: TopOpeBRepDS_FaceInterferenceTool): bool {.noSideEffect,
    cdecl, importcpp: "IsEdgePntParDef", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc transition*(this: TopOpeBRepDS_FaceInterferenceTool;
                i: Handle[TopOpeBRepDS_Interference]) {.noSideEffect, cdecl,
    importcpp: "Transition", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}


