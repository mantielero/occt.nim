import topopebrepds_types
import ../../tkernel/standard/standard_types
import ../../tkg2d/geom2d/geom2d_types



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



proc makeEdgeInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                          si: cint; gk: TopOpeBRepDS_Kind; gi: cint; p: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeCurveInterference*(t: TopOpeBRepDS_Transition; sk: TopOpeBRepDS_Kind;
                           si: cint; gk: TopOpeBRepDS_Kind; gi: cint; p: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc duplicateCurvePointInterference*(i: Handle[TopOpeBRepDS_Interference]): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeFaceCurveInterference*(transition: TopOpeBRepDS_Transition; faceI: cint;
                               curveI: cint; pc: Handle[Geom2dCurve]): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeSolidSurfaceInterference*(transition: TopOpeBRepDS_Transition;
                                  solidI: cint; surfaceI: cint): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeEdgeVertexInterference*(transition: TopOpeBRepDS_Transition; edgeI: cint;
                                vertexI: cint; vertexIsBound: bool;
                                config: TopOpeBRepDS_Config; param: cfloat): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc makeFaceEdgeInterference*(transition: TopOpeBRepDS_Transition; faceI: cint;
                              edgeI: cint; edgeIsBound: bool;
                              config: TopOpeBRepDS_Config): Handle[
    TopOpeBRepDS_Interference] {.cdecl, importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]): cfloat {.cdecl,
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)", header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc parameter*(cpi: Handle[TopOpeBRepDS_Interference]; par: cfloat) {.cdecl,
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)", header: "TopOpeBRepDS_InterferenceTool.hxx".}

