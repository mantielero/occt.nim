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


proc newTopOpeBRepBuildPaveSet*(e: TopoDS_Shape): TopOpeBRepBuildPaveSet {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_PaveSet(@)", dynlib: tkbool.}
proc removePV*(this: var TopOpeBRepBuildPaveSet; b: bool) {.cdecl,
    importcpp: "RemovePV", dynlib: tkbool.}
proc append*(this: var TopOpeBRepBuildPaveSet; pv: Handle[TopOpeBRepBuildPave]) {.
    cdecl, importcpp: "Append", dynlib: tkbool.}
proc initLoop*(this: var TopOpeBRepBuildPaveSet) {.cdecl, importcpp: "InitLoop",
    dynlib: tkbool.}
proc moreLoop*(this: TopOpeBRepBuildPaveSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreLoop", dynlib: tkbool.}
proc nextLoop*(this: var TopOpeBRepBuildPaveSet) {.cdecl, importcpp: "NextLoop",
    dynlib: tkbool.}
proc loop*(this: TopOpeBRepBuildPaveSet): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, cdecl, importcpp: "Loop", dynlib: tkbool.}
proc edge*(this: TopOpeBRepBuildPaveSet): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkbool.}
proc hasEqualParameters*(this: var TopOpeBRepBuildPaveSet): bool {.cdecl,
    importcpp: "HasEqualParameters", dynlib: tkbool.}
proc equalParameters*(this: TopOpeBRepBuildPaveSet): cfloat {.noSideEffect, cdecl,
    importcpp: "EqualParameters", dynlib: tkbool.}
proc closedVertices*(this: var TopOpeBRepBuildPaveSet): bool {.cdecl,
    importcpp: "ClosedVertices", dynlib: tkbool.}
proc sortPave*(lin: TopOpeBRepBuildListOfPave; lout: var TopOpeBRepBuildListOfPave) {.
    cdecl, importcpp: "TopOpeBRepBuild_PaveSet::SortPave(@)", dynlib: tkbool.}