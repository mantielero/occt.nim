##  Created on: 1993-06-15
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
discard "forward decl of TopOpeBRepBuild_Pave"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepBuildPaveSet* {.importcpp: "TopOpeBRepBuild_PaveSet",
                           header: "TopOpeBRepBuild_PaveSet.hxx", bycopy.} = object of TopOpeBRepBuildLoopSet ##
                                                                                                       ## !
                                                                                                       ## Create
                                                                                                       ## a
                                                                                                       ## Pave
                                                                                                       ## set
                                                                                                       ## on
                                                                                                       ## edge
                                                                                                       ## <E>.
                                                                                                       ## It
                                                                                                       ## contains
                                                                                                       ## <E>
                                                                                                       ## vertices.


proc constructTopOpeBRepBuildPaveSet*(e: TopoDS_Shape): TopOpeBRepBuildPaveSet {.
    constructor, importcpp: "TopOpeBRepBuild_PaveSet(@)",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc removePV*(this: var TopOpeBRepBuildPaveSet; b: bool) {.importcpp: "RemovePV",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc append*(this: var TopOpeBRepBuildPaveSet; pv: Handle[TopOpeBRepBuildPave]) {.
    importcpp: "Append", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc initLoop*(this: var TopOpeBRepBuildPaveSet) {.importcpp: "InitLoop",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc moreLoop*(this: TopOpeBRepBuildPaveSet): bool {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc nextLoop*(this: var TopOpeBRepBuildPaveSet) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc loop*(this: TopOpeBRepBuildPaveSet): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc edge*(this: TopOpeBRepBuildPaveSet): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc hasEqualParameters*(this: var TopOpeBRepBuildPaveSet): bool {.
    importcpp: "HasEqualParameters", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc equalParameters*(this: TopOpeBRepBuildPaveSet): float {.noSideEffect,
    importcpp: "EqualParameters", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc closedVertices*(this: var TopOpeBRepBuildPaveSet): bool {.
    importcpp: "ClosedVertices", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc sortPave*(lin: TopOpeBRepBuildListOfPave; lout: var TopOpeBRepBuildListOfPave) {.
    importcpp: "TopOpeBRepBuild_PaveSet::SortPave(@)",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
