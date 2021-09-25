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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepDS_FaceInterferenceTool* {.importcpp: "TopOpeBRepDS_FaceInterferenceTool", header: "TopOpeBRepDS_FaceInterferenceTool.hxx",
                                      bycopy.} = object


proc constructTopOpeBRepDS_FaceInterferenceTool*(p: TopOpeBRepDS_PDataStructure): TopOpeBRepDS_FaceInterferenceTool {.
    constructor, importcpp: "TopOpeBRepDS_FaceInterferenceTool(@)",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc init*(this: var TopOpeBRepDS_FaceInterferenceTool; fi: TopoDS_Shape;
          e: TopoDS_Shape; eisnew: bool; i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Init", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_FaceInterferenceTool; fi: TopoDS_Shape;
         f: TopoDS_Shape; e: TopoDS_Shape; eisnew: bool;
         i: Handle[TopOpeBRepDS_Interference]) {.importcpp: "Add",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc add*(this: var TopOpeBRepDS_FaceInterferenceTool; e: TopoDS_Shape;
         c: TopOpeBRepDS_Curve; i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Add", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc setEdgePntPar*(this: var TopOpeBRepDS_FaceInterferenceTool; p: Pnt; par: float) {.
    importcpp: "SetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc getEdgePntPar*(this: TopOpeBRepDS_FaceInterferenceTool; p: var Pnt;
                   par: var float) {.noSideEffect, importcpp: "GetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc isEdgePntParDef*(this: TopOpeBRepDS_FaceInterferenceTool): bool {.noSideEffect,
    importcpp: "IsEdgePntParDef", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc transition*(this: TopOpeBRepDS_FaceInterferenceTool;
                i: Handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "Transition", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
