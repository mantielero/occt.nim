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


proc newTopOpeBRepBuildWireEdgeClassifier*(f: TopoDS_Shape;
    bb: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildWireEdgeClassifier {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_WireEdgeClassifier(@)",
    dynlib: tkfillet.}
proc compare*(this: var TopOpeBRepBuildWireEdgeClassifier;
             l1: Handle[TopOpeBRepBuildLoop]; l2: Handle[TopOpeBRepBuildLoop]): TopAbsState {.
    cdecl, importcpp: "Compare", dynlib: tkfillet.}
proc loopToShape*(this: var TopOpeBRepBuildWireEdgeClassifier;
                 L: Handle[TopOpeBRepBuildLoop]): TopoDS_Shape {.cdecl,
    importcpp: "LoopToShape", dynlib: tkfillet.}
proc compareShapes*(this: var TopOpeBRepBuildWireEdgeClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareShapes", dynlib: tkfillet.}
proc compareElementToShape*(this: var TopOpeBRepBuildWireEdgeClassifier;
                           e: TopoDS_Shape; b: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareElementToShape", dynlib: tkfillet.}
proc resetShape*(this: var TopOpeBRepBuildWireEdgeClassifier; b: TopoDS_Shape) {.
    cdecl, importcpp: "ResetShape", dynlib: tkfillet.}
proc resetElement*(this: var TopOpeBRepBuildWireEdgeClassifier; e: TopoDS_Shape) {.
    cdecl, importcpp: "ResetElement", dynlib: tkfillet.}
proc compareElement*(this: var TopOpeBRepBuildWireEdgeClassifier; e: TopoDS_Shape): bool {.
    cdecl, importcpp: "CompareElement", dynlib: tkfillet.}
proc state*(this: var TopOpeBRepBuildWireEdgeClassifier): TopAbsState {.cdecl,
    importcpp: "State", dynlib: tkfillet.}