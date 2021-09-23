##  Created on: 1993-06-14
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
  ../Standard/Standard_Handle, TopOpeBRepBuild_PBuilder, TopOpeBRepBuild_PGTopo,
  ../TopOpeBRepTool/TopOpeBRepTool_Plos, TopOpeBRepBuild_PWireEdgeSet,
  ../TopoDS/TopoDS_Shape, ../TopOpeBRepDS/TopOpeBRepDS_ListOfInterference,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepBuild_BuilderON* {.importcpp: "TopOpeBRepBuild_BuilderON",
                              header: "TopOpeBRepBuild_BuilderON.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_BuilderON*(): TopOpeBRepBuild_BuilderON {.
    constructor, importcpp: "TopOpeBRepBuild_BuilderON(@)",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc constructTopOpeBRepBuild_BuilderON*(PB: TopOpeBRepBuild_PBuilder;
                                        F: TopoDS_Shape;
                                        PG: TopOpeBRepBuild_PGTopo;
                                        PLSclass: TopOpeBRepTool_Plos;
                                        PWES: TopOpeBRepBuild_PWireEdgeSet): TopOpeBRepBuild_BuilderON {.
    constructor, importcpp: "TopOpeBRepBuild_BuilderON(@)",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc Perform*(this: var TopOpeBRepBuild_BuilderON; PB: TopOpeBRepBuild_PBuilder;
             F: TopoDS_Shape; PG: TopOpeBRepBuild_PGTopo;
             PLSclass: TopOpeBRepTool_Plos; PWES: TopOpeBRepBuild_PWireEdgeSet) {.
    importcpp: "Perform", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc GFillONCheckI*(this: TopOpeBRepBuild_BuilderON;
                   I: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "GFillONCheckI",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc GFillONPartsWES1*(this: var TopOpeBRepBuild_BuilderON;
                      I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "GFillONPartsWES1", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc GFillONPartsWES2*(this: var TopOpeBRepBuild_BuilderON;
                      I: handle[TopOpeBRepDS_Interference]; EspON: TopoDS_Shape) {.
    importcpp: "GFillONPartsWES2", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc Perform2d*(this: var TopOpeBRepBuild_BuilderON; PB: TopOpeBRepBuild_PBuilder;
               F: TopoDS_Shape; PG: TopOpeBRepBuild_PGTopo;
               PLSclass: TopOpeBRepTool_Plos; PWES: TopOpeBRepBuild_PWireEdgeSet) {.
    importcpp: "Perform2d", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc GFillONParts2dWES2*(this: var TopOpeBRepBuild_BuilderON;
                        I: handle[TopOpeBRepDS_Interference]; EspON: TopoDS_Shape) {.
    importcpp: "GFillONParts2dWES2", header: "TopOpeBRepBuild_BuilderON.hxx".}