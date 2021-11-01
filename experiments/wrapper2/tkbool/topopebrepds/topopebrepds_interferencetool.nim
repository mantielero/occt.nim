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


proc makeEdgeInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                          si: cint; gk: TopOpeBRepDS_Kind; gi: cint; p: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeInterference(@)",
                                dynlib: tkbool.}
proc makeCurveInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                           si: cint; gk: TopOpeBRepDS_Kind; gi: cint; p: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeCurveInterference(@)",
                                dynlib: tkbool.}
proc duplicateCurvePointInterference*(i: Handle[TopOpeBRepDS_Interference]): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference(@)",
                                dynlib: tkbool.}
proc makeFaceCurveInterference*(transition: TopOpeBRepDS_Transition; faceI: cint;
                               curveI: cint; pc: Handle[Geom2dCurve]): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference(@)",
                                dynlib: tkbool.}
proc makeSolidSurfaceInterference*(transition: TopOpeBRepDS_Transition;
                                  solidI: cint; surfaceI: cint): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference(@)",
                                dynlib: tkbool.}
proc makeEdgeVertexInterference*(transition: TopOpeBRepDS_Transition; edgeI: cint;
                                vertexI: cint; vertexIsBound: bool;
                                config: TopOpeBRepDS_Config; param: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference(@)",
                                dynlib: tkbool.}
proc makeFaceEdgeInterference*(transition: TopOpeBRepDS_Transition; faceI: cint;
                              edgeI: cint; edgeIsBound: bool;
                              config: TopOpeBRepDS_Config): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference(@)",
                                dynlib: tkbool.}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]): cfloat {.cdecl,
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)", dynlib: tkbool.}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]; par: cfloat) {.cdecl,
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)", dynlib: tkbool.}