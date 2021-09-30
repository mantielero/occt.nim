##  Created on: 1993-06-24
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

discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_InterferenceTool* {.importcpp: "TopOpeBRepDS_InterferenceTool",
                                  header: "TopOpeBRepDS_InterferenceTool.hxx",
                                  bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_InterferenceTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator new",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc `delete`*(this: var TopOpeBRepDS_InterferenceTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator delete",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_InterferenceTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator new[]",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_InterferenceTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator delete[]",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc `new`*(this: var TopOpeBRepDS_InterferenceTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator new",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc `delete`*(this: var TopOpeBRepDS_InterferenceTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_InterferenceTool::operator delete",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeEdgeInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                          si: int; gk: TopOpeBRepDS_Kind; gi: int; p: StandardReal): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeCurveInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                           si: int; gk: TopOpeBRepDS_Kind; gi: int; p: StandardReal): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc duplicateCurvePointInterference*(i: Handle[TopOpeBRepDS_Interference]): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeFaceCurveInterference*(transition: TopOpeBRepDS_Transition; faceI: int;
                               curveI: int; pc: Handle[Geom2dCurve]): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeSolidSurfaceInterference*(transition: TopOpeBRepDS_Transition;
                                  solidI: int; surfaceI: int): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeEdgeVertexInterference*(transition: TopOpeBRepDS_Transition; edgeI: int;
                                vertexI: int; vertexIsBound: StandardBoolean;
                                config: TopOpeBRepDS_Config; param: StandardReal): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeFaceEdgeInterference*(transition: TopOpeBRepDS_Transition; faceI: int;
                              edgeI: int; edgeIsBound: StandardBoolean;
                              config: TopOpeBRepDS_Config): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]): StandardReal {.
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]; par: StandardReal) {.
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}