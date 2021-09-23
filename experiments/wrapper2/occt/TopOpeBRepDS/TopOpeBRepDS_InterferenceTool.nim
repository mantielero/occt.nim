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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepDS_Kind, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, TopOpeBRepDS_Config

discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of Geom2d_Curve"
type
  TopOpeBRepDS_InterferenceTool* {.importcpp: "TopOpeBRepDS_InterferenceTool",
                                  header: "TopOpeBRepDS_InterferenceTool.hxx",
                                  bycopy.} = object


proc MakeEdgeInterference*(T: TopOpeBRepDS_Transition; SK: TopOpeBRepDS_Kind;
                          SI: Standard_Integer; GK: TopOpeBRepDS_Kind;
                          GI: Standard_Integer; P: Standard_Real): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc MakeCurveInterference*(T: TopOpeBRepDS_Transition; SK: TopOpeBRepDS_Kind;
                           SI: Standard_Integer; GK: TopOpeBRepDS_Kind;
                           GI: Standard_Integer; P: Standard_Real): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc DuplicateCurvePointInterference*(I: handle[TopOpeBRepDS_Interference]): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::DuplicateCurvePointInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc MakeFaceCurveInterference*(Transition: TopOpeBRepDS_Transition;
                               FaceI: Standard_Integer; CurveI: Standard_Integer;
                               PC: handle[Geom2d_Curve]): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceCurveInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc MakeSolidSurfaceInterference*(Transition: TopOpeBRepDS_Transition;
                                  SolidI: Standard_Integer;
                                  SurfaceI: Standard_Integer): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeSolidSurfaceInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc MakeEdgeVertexInterference*(Transition: TopOpeBRepDS_Transition;
                                EdgeI: Standard_Integer;
                                VertexI: Standard_Integer;
                                VertexIsBound: Standard_Boolean;
                                Config: TopOpeBRepDS_Config; param: Standard_Real): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeEdgeVertexInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc MakeFaceEdgeInterference*(Transition: TopOpeBRepDS_Transition;
                              FaceI: Standard_Integer; EdgeI: Standard_Integer;
                              EdgeIsBound: Standard_Boolean;
                              Config: TopOpeBRepDS_Config): handle[
    TopOpeBRepDS_Interference] {.importcpp: "TopOpeBRepDS_InterferenceTool::MakeFaceEdgeInterference(@)",
                                header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc Parameter*(CPI: handle[TopOpeBRepDS_Interference]): Standard_Real {.
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}
proc Parameter*(CPI: handle[TopOpeBRepDS_Interference]; Par: Standard_Real) {.
    importcpp: "TopOpeBRepDS_InterferenceTool::Parameter(@)",
    header: "TopOpeBRepDS_InterferenceTool.hxx".}