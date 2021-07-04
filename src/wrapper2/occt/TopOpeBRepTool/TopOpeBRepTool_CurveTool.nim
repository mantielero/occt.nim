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
  ../Standard/Standard_Handle, TopOpeBRepTool_GeomTool,
  TopOpeBRepTool_OutCurveType, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d

discard "forward decl of TopOpeBRepTool_GeomTool"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepTool_CurveTool* {.importcpp: "TopOpeBRepTool_CurveTool",
                             header: "TopOpeBRepTool_CurveTool.hxx", bycopy.} = object


proc constructTopOpeBRepTool_CurveTool*(): TopOpeBRepTool_CurveTool {.constructor,
    importcpp: "TopOpeBRepTool_CurveTool(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc constructTopOpeBRepTool_CurveTool*(OCT: TopOpeBRepTool_OutCurveType): TopOpeBRepTool_CurveTool {.
    constructor, importcpp: "TopOpeBRepTool_CurveTool(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc constructTopOpeBRepTool_CurveTool*(GT: TopOpeBRepTool_GeomTool): TopOpeBRepTool_CurveTool {.
    constructor, importcpp: "TopOpeBRepTool_CurveTool(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc ChangeGeomTool*(this: var TopOpeBRepTool_CurveTool): var TopOpeBRepTool_GeomTool {.
    importcpp: "ChangeGeomTool", header: "TopOpeBRepTool_CurveTool.hxx".}
proc GetGeomTool*(this: TopOpeBRepTool_CurveTool): TopOpeBRepTool_GeomTool {.
    noSideEffect, importcpp: "GetGeomTool", header: "TopOpeBRepTool_CurveTool.hxx".}
proc SetGeomTool*(this: var TopOpeBRepTool_CurveTool; GT: TopOpeBRepTool_GeomTool) {.
    importcpp: "SetGeomTool", header: "TopOpeBRepTool_CurveTool.hxx".}
proc MakeCurves*(this: TopOpeBRepTool_CurveTool; min: Standard_Real;
                max: Standard_Real; C3D: handle[Geom_Curve];
                PC1: handle[Geom2d_Curve]; PC2: handle[Geom2d_Curve];
                S1: TopoDS_Shape; S2: TopoDS_Shape; C3DN: var handle[Geom_Curve];
                PC1N: var handle[Geom2d_Curve]; PC2N: var handle[Geom2d_Curve];
                Tol3d: var Standard_Real; Tol2d: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "MakeCurves", header: "TopOpeBRepTool_CurveTool.hxx".}
proc MakeBSpline1fromPnt*(P: TColgp_Array1OfPnt): handle[Geom_Curve] {.
    importcpp: "TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc MakeBSpline1fromPnt2d*(P: TColgp_Array1OfPnt2d): handle[Geom2d_Curve] {.
    importcpp: "TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt2d(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc IsProjectable*(S: TopoDS_Shape; C: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_CurveTool::IsProjectable(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}
proc MakePCurveOnFace*(S: TopoDS_Shape; C: handle[Geom_Curve];
                      TolReached2d: var Standard_Real; first: Standard_Real = 0.0;
                      last: Standard_Real = 0.0): handle[Geom2d_Curve] {.
    importcpp: "TopOpeBRepTool_CurveTool::MakePCurveOnFace(@)",
    header: "TopOpeBRepTool_CurveTool.hxx".}