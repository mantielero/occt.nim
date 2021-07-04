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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepDS_PDataStructure,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Integer, ../TopTrans/TopTrans_SurfaceTransition,
  ../TopoDS/TopoDS_Shape, ../gp/gp_Pnt, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepDS_FaceInterferenceTool* {.importcpp: "TopOpeBRepDS_FaceInterferenceTool", header: "TopOpeBRepDS_FaceInterferenceTool.hxx",
                                      bycopy.} = object


proc constructTopOpeBRepDS_FaceInterferenceTool*(P: TopOpeBRepDS_PDataStructure): TopOpeBRepDS_FaceInterferenceTool {.
    constructor, importcpp: "TopOpeBRepDS_FaceInterferenceTool(@)",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc Init*(this: var TopOpeBRepDS_FaceInterferenceTool; FI: TopoDS_Shape;
          E: TopoDS_Shape; Eisnew: Standard_Boolean;
          I: handle[TopOpeBRepDS_Interference]) {.importcpp: "Init",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc Add*(this: var TopOpeBRepDS_FaceInterferenceTool; FI: TopoDS_Shape;
         F: TopoDS_Shape; E: TopoDS_Shape; Eisnew: Standard_Boolean;
         I: handle[TopOpeBRepDS_Interference]) {.importcpp: "Add",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc Add*(this: var TopOpeBRepDS_FaceInterferenceTool; E: TopoDS_Shape;
         C: TopOpeBRepDS_Curve; I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Add", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc SetEdgePntPar*(this: var TopOpeBRepDS_FaceInterferenceTool; P: gp_Pnt;
                   par: Standard_Real) {.importcpp: "SetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc GetEdgePntPar*(this: TopOpeBRepDS_FaceInterferenceTool; P: var gp_Pnt;
                   par: var Standard_Real) {.noSideEffect,
    importcpp: "GetEdgePntPar", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc IsEdgePntParDef*(this: TopOpeBRepDS_FaceInterferenceTool): Standard_Boolean {.
    noSideEffect, importcpp: "IsEdgePntParDef",
    header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}
proc Transition*(this: TopOpeBRepDS_FaceInterferenceTool;
                I: handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "Transition", header: "TopOpeBRepDS_FaceInterferenceTool.hxx".}