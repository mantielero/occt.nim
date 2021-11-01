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

discard "forward decl of TopOpeBRepTool_GeomTool"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepToolCurveTool* {.importcpp: "TopOpeBRepTool_CurveTool",
                            header: "TopOpeBRepTool_CurveTool.hxx", bycopy.} = object


proc newTopOpeBRepToolCurveTool*(): TopOpeBRepToolCurveTool {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_CurveTool(@)", dynlib: tkbool.}
proc newTopOpeBRepToolCurveTool*(oct: TopOpeBRepToolOutCurveType): TopOpeBRepToolCurveTool {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_CurveTool(@)", dynlib: tkbool.}
proc newTopOpeBRepToolCurveTool*(gt: TopOpeBRepToolGeomTool): TopOpeBRepToolCurveTool {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_CurveTool(@)", dynlib: tkbool.}
proc changeGeomTool*(this: var TopOpeBRepToolCurveTool): var TopOpeBRepToolGeomTool {.
    cdecl, importcpp: "ChangeGeomTool", dynlib: tkbool.}
proc getGeomTool*(this: TopOpeBRepToolCurveTool): TopOpeBRepToolGeomTool {.
    noSideEffect, cdecl, importcpp: "GetGeomTool", dynlib: tkbool.}
proc setGeomTool*(this: var TopOpeBRepToolCurveTool; gt: TopOpeBRepToolGeomTool) {.
    cdecl, importcpp: "SetGeomTool", dynlib: tkbool.}
proc makeCurves*(this: TopOpeBRepToolCurveTool; min: cfloat; max: cfloat;
                c3d: Handle[GeomCurve]; pc1: Handle[Geom2dCurve];
                pc2: Handle[Geom2dCurve]; s1: TopoDS_Shape; s2: TopoDS_Shape;
                c3dn: var Handle[GeomCurve]; pc1n: var Handle[Geom2dCurve];
                pc2n: var Handle[Geom2dCurve]; tol3d: var cfloat; tol2d: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "MakeCurves", dynlib: tkbool.}
proc makeBSpline1fromPnt*(p: TColgpArray1OfPnt): Handle[GeomCurve] {.cdecl,
    importcpp: "TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt(@)", dynlib: tkbool.}
proc makeBSpline1fromPnt2d*(p: TColgpArray1OfPnt2d): Handle[Geom2dCurve] {.cdecl,
    importcpp: "TopOpeBRepTool_CurveTool::MakeBSpline1fromPnt2d(@)",
    dynlib: tkbool.}
proc isProjectable*(s: TopoDS_Shape; c: Handle[GeomCurve]): bool {.cdecl,
    importcpp: "TopOpeBRepTool_CurveTool::IsProjectable(@)", dynlib: tkbool.}
proc makePCurveOnFace*(s: TopoDS_Shape; c: Handle[GeomCurve];
                      tolReached2d: var cfloat; first: cfloat = 0.0; last: cfloat = 0.0): Handle[
    Geom2dCurve] {.cdecl,
                  importcpp: "TopOpeBRepTool_CurveTool::MakePCurveOnFace(@)",
                  dynlib: tkbool.}