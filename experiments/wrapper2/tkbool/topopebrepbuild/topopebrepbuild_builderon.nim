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


proc newTopOpeBRepBuildBuilderON*(): TopOpeBRepBuildBuilderON {.cdecl, constructor,
    importcpp: "TopOpeBRepBuild_BuilderON(@)", dynlib: tkfillet.}
proc newTopOpeBRepBuildBuilderON*(pb: TopOpeBRepBuildPBuilder; f: TopoDS_Shape;
                                 pg: TopOpeBRepBuildPGTopo;
                                 pLSclass: TopOpeBRepToolPlos;
                                 pwes: TopOpeBRepBuildPWireEdgeSet): TopOpeBRepBuildBuilderON {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_BuilderON(@)", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildBuilderON; pb: TopOpeBRepBuildPBuilder;
             f: TopoDS_Shape; pg: TopOpeBRepBuildPGTopo;
             pLSclass: TopOpeBRepToolPlos; pwes: TopOpeBRepBuildPWireEdgeSet) {.
    cdecl, importcpp: "Perform", dynlib: tkfillet.}
proc gFillONCheckI*(this: TopOpeBRepBuildBuilderON;
                   i: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "GFillONCheckI", dynlib: tkfillet.}
proc gFillONPartsWES1*(this: var TopOpeBRepBuildBuilderON;
                      i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "GFillONPartsWES1", dynlib: tkfillet.}
proc gFillONPartsWES2*(this: var TopOpeBRepBuildBuilderON;
                      i: Handle[TopOpeBRepDS_Interference]; espON: TopoDS_Shape) {.
    cdecl, importcpp: "GFillONPartsWES2", dynlib: tkfillet.}
proc perform2d*(this: var TopOpeBRepBuildBuilderON; pb: TopOpeBRepBuildPBuilder;
               f: TopoDS_Shape; pg: TopOpeBRepBuildPGTopo;
               pLSclass: TopOpeBRepToolPlos; pwes: TopOpeBRepBuildPWireEdgeSet) {.
    cdecl, importcpp: "Perform2d", dynlib: tkfillet.}
proc gFillONParts2dWES2*(this: var TopOpeBRepBuildBuilderON;
                        i: Handle[TopOpeBRepDS_Interference]; espON: TopoDS_Shape) {.
    cdecl, importcpp: "GFillONParts2dWES2", dynlib: tkfillet.}