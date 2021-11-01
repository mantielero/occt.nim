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

discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopOpeBRepBuild_PaveClassifier"
discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuildEdgeBuilder* {.importcpp: "TopOpeBRepBuild_EdgeBuilder",
                               header: "TopOpeBRepBuild_EdgeBuilder.hxx", bycopy.} = object of TopOpeBRepBuildArea1dBuilder


proc newTopOpeBRepBuildEdgeBuilder*(): TopOpeBRepBuildEdgeBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_EdgeBuilder(@)", dynlib: tkbool.}
proc newTopOpeBRepBuildEdgeBuilder*(ls: var TopOpeBRepBuildPaveSet;
                                   lc: var TopOpeBRepBuildPaveClassifier;
                                   forceClass: bool = false): TopOpeBRepBuildEdgeBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_EdgeBuilder(@)", dynlib: tkbool.}
proc initEdgeBuilder*(this: var TopOpeBRepBuildEdgeBuilder;
                     ls: var TopOpeBRepBuildLoopSet;
                     lc: var TopOpeBRepBuildLoopClassifier;
                     forceClass: bool = false) {.cdecl, importcpp: "InitEdgeBuilder",
    dynlib: tkbool.}
proc initEdge*(this: var TopOpeBRepBuildEdgeBuilder) {.cdecl, importcpp: "InitEdge",
    dynlib: tkbool.}
proc moreEdge*(this: TopOpeBRepBuildEdgeBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreEdge", dynlib: tkbool.}
proc nextEdge*(this: var TopOpeBRepBuildEdgeBuilder) {.cdecl, importcpp: "NextEdge",
    dynlib: tkbool.}
proc initVertex*(this: var TopOpeBRepBuildEdgeBuilder) {.cdecl,
    importcpp: "InitVertex", dynlib: tkbool.}
proc moreVertex*(this: TopOpeBRepBuildEdgeBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreVertex", dynlib: tkbool.}
proc nextVertex*(this: var TopOpeBRepBuildEdgeBuilder) {.cdecl,
    importcpp: "NextVertex", dynlib: tkbool.}
proc vertex*(this: TopOpeBRepBuildEdgeBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Vertex", dynlib: tkbool.}
proc parameter*(this: TopOpeBRepBuildEdgeBuilder): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkbool.}