##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Pnt2d,
  ../BRepClass/BRepClass_Edge, ../BRepClass/BRepClass_FacePassiveClassifier,
  ../TopoDS/TopoDS_Shape, TopOpeBRepBuild_CompositeClassifier,
  ../TopAbs/TopAbs_State

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_WireEdgeClassifier* {.importcpp: "TopOpeBRepBuild_WireEdgeClassifier", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuild_CompositeClassifier ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## classifier
                                                                                           ## on
                                                                                           ## edge
                                                                                           ## <F>.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Used
                                                                                           ## to
                                                                                           ## compare
                                                                                           ## edges
                                                                                           ## and
                                                                                           ## wires
                                                                                           ## on
                                                                                           ## the
                                                                                           ## edge
                                                                                           ## <F>.


proc constructTopOpeBRepBuild_WireEdgeClassifier*(F: TopoDS_Shape;
    BB: TopOpeBRepBuild_BlockBuilder): TopOpeBRepBuild_WireEdgeClassifier {.
    constructor, importcpp: "TopOpeBRepBuild_WireEdgeClassifier(@)",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc Compare*(this: var TopOpeBRepBuild_WireEdgeClassifier;
             L1: handle[TopOpeBRepBuild_Loop]; L2: handle[TopOpeBRepBuild_Loop]): TopAbs_State {.
    importcpp: "Compare", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc LoopToShape*(this: var TopOpeBRepBuild_WireEdgeClassifier;
                 L: handle[TopOpeBRepBuild_Loop]): TopoDS_Shape {.
    importcpp: "LoopToShape", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc CompareShapes*(this: var TopOpeBRepBuild_WireEdgeClassifier; B1: TopoDS_Shape;
                   B2: TopoDS_Shape): TopAbs_State {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc CompareElementToShape*(this: var TopOpeBRepBuild_WireEdgeClassifier;
                           E: TopoDS_Shape; B: TopoDS_Shape): TopAbs_State {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc ResetShape*(this: var TopOpeBRepBuild_WireEdgeClassifier; B: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc ResetElement*(this: var TopOpeBRepBuild_WireEdgeClassifier; E: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc CompareElement*(this: var TopOpeBRepBuild_WireEdgeClassifier; E: TopoDS_Shape): Standard_Boolean {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc State*(this: var TopOpeBRepBuild_WireEdgeClassifier): TopAbs_State {.
    importcpp: "State", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}