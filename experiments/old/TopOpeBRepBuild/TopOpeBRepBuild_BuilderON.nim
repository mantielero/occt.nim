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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepBuildBuilderON* {.importcpp: "TopOpeBRepBuild_BuilderON",
                             header: "TopOpeBRepBuild_BuilderON.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildBuilderON; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator new",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBuilderON; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator delete",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildBuilderON; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator new[]",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildBuilderON; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator delete[]",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc `new`*(this: var TopOpeBRepBuildBuilderON; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator new",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBuilderON; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_BuilderON::operator delete",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc constructTopOpeBRepBuildBuilderON*(): TopOpeBRepBuildBuilderON {.constructor,
    importcpp: "TopOpeBRepBuild_BuilderON(@)",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc constructTopOpeBRepBuildBuilderON*(pb: TopOpeBRepBuildPBuilder;
                                       f: TopoDS_Shape; pg: TopOpeBRepBuildPGTopo;
                                       pLSclass: TopOpeBRepToolPlos;
                                       pwes: TopOpeBRepBuildPWireEdgeSet): TopOpeBRepBuildBuilderON {.
    constructor, importcpp: "TopOpeBRepBuild_BuilderON(@)",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilderON; pb: TopOpeBRepBuildPBuilder;
             f: TopoDS_Shape; pg: TopOpeBRepBuildPGTopo;
             pLSclass: TopOpeBRepToolPlos; pwes: TopOpeBRepBuildPWireEdgeSet) {.
    importcpp: "Perform", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc gFillONCheckI*(this: TopOpeBRepBuildBuilderON;
                   i: Handle[TopOpeBRepDS_Interference]): StandardBoolean {.
    noSideEffect, importcpp: "GFillONCheckI",
    header: "TopOpeBRepBuild_BuilderON.hxx".}
proc gFillONPartsWES1*(this: var TopOpeBRepBuildBuilderON;
                      i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "GFillONPartsWES1", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc gFillONPartsWES2*(this: var TopOpeBRepBuildBuilderON;
                      i: Handle[TopOpeBRepDS_Interference]; espON: TopoDS_Shape) {.
    importcpp: "GFillONPartsWES2", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc perform2d*(this: var TopOpeBRepBuildBuilderON; pb: TopOpeBRepBuildPBuilder;
               f: TopoDS_Shape; pg: TopOpeBRepBuildPGTopo;
               pLSclass: TopOpeBRepToolPlos; pwes: TopOpeBRepBuildPWireEdgeSet) {.
    importcpp: "Perform2d", header: "TopOpeBRepBuild_BuilderON.hxx".}
proc gFillONParts2dWES2*(this: var TopOpeBRepBuildBuilderON;
                        i: Handle[TopOpeBRepDS_Interference]; espON: TopoDS_Shape) {.
    importcpp: "GFillONParts2dWES2", header: "TopOpeBRepBuild_BuilderON.hxx".}