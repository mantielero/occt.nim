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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildWireEdgeClassifier* {.importcpp: "TopOpeBRepBuild_WireEdgeClassifier", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx",
                                      bycopy.} = object of TopOpeBRepBuildCompositeClassifier ##
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


proc constructTopOpeBRepBuildWireEdgeClassifier*(f: TopoDS_Shape;
    bb: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildWireEdgeClassifier {.
    constructor, importcpp: "TopOpeBRepBuild_WireEdgeClassifier(@)",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc compare*(this: var TopOpeBRepBuildWireEdgeClassifier;
             l1: Handle[TopOpeBRepBuildLoop]; l2: Handle[TopOpeBRepBuildLoop]): TopAbsState {.
    importcpp: "Compare", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc loopToShape*(this: var TopOpeBRepBuildWireEdgeClassifier;
                 L: Handle[TopOpeBRepBuildLoop]): TopoDS_Shape {.
    importcpp: "LoopToShape", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc compareShapes*(this: var TopOpeBRepBuildWireEdgeClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc compareElementToShape*(this: var TopOpeBRepBuildWireEdgeClassifier;
                           e: TopoDS_Shape; b: TopoDS_Shape): TopAbsState {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc resetShape*(this: var TopOpeBRepBuildWireEdgeClassifier; b: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc resetElement*(this: var TopOpeBRepBuildWireEdgeClassifier; e: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc compareElement*(this: var TopOpeBRepBuildWireEdgeClassifier; e: TopoDS_Shape): bool {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}
proc state*(this: var TopOpeBRepBuildWireEdgeClassifier): TopAbsState {.
    importcpp: "State", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx".}

























