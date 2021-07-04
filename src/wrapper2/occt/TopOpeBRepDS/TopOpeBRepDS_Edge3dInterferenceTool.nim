##  Created on: 1997-12-24
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TopTrans/TopTrans_SurfaceTransition, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape, ../gp/gp_Pnt, ../gp/gp_Dir

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_Edge3dInterferenceTool* {.importcpp: "TopOpeBRepDS_Edge3dInterferenceTool", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx",
                                        bycopy.} = object


proc constructTopOpeBRepDS_Edge3dInterferenceTool*(): TopOpeBRepDS_Edge3dInterferenceTool {.
    constructor, importcpp: "TopOpeBRepDS_Edge3dInterferenceTool(@)",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc InitPointVertex*(this: var TopOpeBRepDS_Edge3dInterferenceTool;
                     IsVertex: Standard_Integer; VonOO: TopoDS_Shape) {.
    importcpp: "InitPointVertex",
    header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc Init*(this: var TopOpeBRepDS_Edge3dInterferenceTool; Eref: TopoDS_Shape;
          E: TopoDS_Shape; F: TopoDS_Shape; I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Init", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc Add*(this: var TopOpeBRepDS_Edge3dInterferenceTool; Eref: TopoDS_Shape;
         E: TopoDS_Shape; F: TopoDS_Shape; I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "Add", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}
proc Transition*(this: TopOpeBRepDS_Edge3dInterferenceTool;
                I: handle[TopOpeBRepDS_Interference]) {.noSideEffect,
    importcpp: "Transition", header: "TopOpeBRepDS_Edge3dInterferenceTool.hxx".}