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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, TopOpeBRepBuild_ListOfPave,
  TopOpeBRepBuild_ListIteratorOfListOfPave, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, TopOpeBRepBuild_LoopSet

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Pave"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepBuild_PaveSet* {.importcpp: "TopOpeBRepBuild_PaveSet",
                            header: "TopOpeBRepBuild_PaveSet.hxx", bycopy.} = object of TopOpeBRepBuild_LoopSet ##
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


proc constructTopOpeBRepBuild_PaveSet*(E: TopoDS_Shape): TopOpeBRepBuild_PaveSet {.
    constructor, importcpp: "TopOpeBRepBuild_PaveSet(@)",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc RemovePV*(this: var TopOpeBRepBuild_PaveSet; B: Standard_Boolean) {.
    importcpp: "RemovePV", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc Append*(this: var TopOpeBRepBuild_PaveSet; PV: handle[TopOpeBRepBuild_Pave]) {.
    importcpp: "Append", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc InitLoop*(this: var TopOpeBRepBuild_PaveSet) {.importcpp: "InitLoop",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc MoreLoop*(this: TopOpeBRepBuild_PaveSet): Standard_Boolean {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc NextLoop*(this: var TopOpeBRepBuild_PaveSet) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_PaveSet.hxx".}
proc Loop*(this: TopOpeBRepBuild_PaveSet): handle[TopOpeBRepBuild_Loop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc Edge*(this: TopOpeBRepBuild_PaveSet): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc HasEqualParameters*(this: var TopOpeBRepBuild_PaveSet): Standard_Boolean {.
    importcpp: "HasEqualParameters", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc EqualParameters*(this: TopOpeBRepBuild_PaveSet): Standard_Real {.noSideEffect,
    importcpp: "EqualParameters", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc ClosedVertices*(this: var TopOpeBRepBuild_PaveSet): Standard_Boolean {.
    importcpp: "ClosedVertices", header: "TopOpeBRepBuild_PaveSet.hxx".}
proc SortPave*(Lin: TopOpeBRepBuild_ListOfPave;
              Lout: var TopOpeBRepBuild_ListOfPave) {.
    importcpp: "TopOpeBRepBuild_PaveSet::SortPave(@)",
    header: "TopOpeBRepBuild_PaveSet.hxx".}