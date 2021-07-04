##  Created on: 1995-12-21
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopOpeBRepBuild_Area1dBuilder,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_PaveClassifier"
discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuild_EdgeBuilder* {.importcpp: "TopOpeBRepBuild_EdgeBuilder",
                                header: "TopOpeBRepBuild_EdgeBuilder.hxx", bycopy.} = object of TopOpeBRepBuild_Area1dBuilder


proc constructTopOpeBRepBuild_EdgeBuilder*(): TopOpeBRepBuild_EdgeBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_EdgeBuilder(@)",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc constructTopOpeBRepBuild_EdgeBuilder*(LS: var TopOpeBRepBuild_PaveSet;
    LC: var TopOpeBRepBuild_PaveClassifier;
    ForceClass: Standard_Boolean = Standard_False): TopOpeBRepBuild_EdgeBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_EdgeBuilder(@)",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc InitEdgeBuilder*(this: var TopOpeBRepBuild_EdgeBuilder;
                     LS: var TopOpeBRepBuild_LoopSet;
                     LC: var TopOpeBRepBuild_LoopClassifier;
                     ForceClass: Standard_Boolean = Standard_False) {.
    importcpp: "InitEdgeBuilder", header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc InitEdge*(this: var TopOpeBRepBuild_EdgeBuilder) {.importcpp: "InitEdge",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc MoreEdge*(this: TopOpeBRepBuild_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdge", header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc NextEdge*(this: var TopOpeBRepBuild_EdgeBuilder) {.importcpp: "NextEdge",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc InitVertex*(this: var TopOpeBRepBuild_EdgeBuilder) {.importcpp: "InitVertex",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc MoreVertex*(this: TopOpeBRepBuild_EdgeBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "MoreVertex",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc NextVertex*(this: var TopOpeBRepBuild_EdgeBuilder) {.importcpp: "NextVertex",
    header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc Vertex*(this: TopOpeBRepBuild_EdgeBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepBuild_EdgeBuilder.hxx".}
proc Parameter*(this: TopOpeBRepBuild_EdgeBuilder): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepBuild_EdgeBuilder.hxx".}