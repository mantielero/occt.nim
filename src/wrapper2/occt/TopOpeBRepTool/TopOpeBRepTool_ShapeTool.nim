##  Created on: 1994-02-09
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Dir"
type
  TopOpeBRepTool_ShapeTool* {.importcpp: "TopOpeBRepTool_ShapeTool",
                             header: "TopOpeBRepTool_ShapeTool.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## the
                                                                                  ## tolerance
                                                                                  ## of
                                                                                  ## the
                                                                                  ## shape
                                                                                  ## <S>.
                                                                                  ##
                                                                                  ## !
                                                                                  ## If
                                                                                  ## the
                                                                                  ## shape
                                                                                  ## <S>
                                                                                  ## is
                                                                                  ## Null,
                                                                                  ## returns
                                                                                  ## 0.


proc Tolerance*(S: TopoDS_Shape): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::Tolerance(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Pnt*(S: TopoDS_Shape): gp_Pnt {.importcpp: "TopOpeBRepTool_ShapeTool::Pnt(@)",
                                 header: "TopOpeBRepTool_ShapeTool.hxx".}
proc BASISCURVE*(C: handle[Geom_Curve]): handle[Geom_Curve] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc BASISCURVE*(E: TopoDS_Edge): handle[Geom_Curve] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc BASISSURFACE*(S: handle[Geom_Surface]): handle[Geom_Surface] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc BASISSURFACE*(F: TopoDS_Face): handle[Geom_Surface] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc UVBOUNDS*(S: handle[Geom_Surface]; UPeri: var Standard_Boolean;
              VPeri: var Standard_Boolean; Umin: var Standard_Real;
              Umax: var Standard_Real; Vmin: var Standard_Real;
              Vmax: var Standard_Real) {.importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)",
                                      header: "TopOpeBRepTool_ShapeTool.hxx".}
proc UVBOUNDS*(F: TopoDS_Face; UPeri: var Standard_Boolean;
              VPeri: var Standard_Boolean; Umin: var Standard_Real;
              Umax: var Standard_Real; Vmin: var Standard_Real;
              Vmax: var Standard_Real) {.importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)",
                                      header: "TopOpeBRepTool_ShapeTool.hxx".}
proc AdjustOnPeriodic*(S: TopoDS_Shape; u: var Standard_Real; v: var Standard_Real) {.
    importcpp: "TopOpeBRepTool_ShapeTool::AdjustOnPeriodic(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Closed*(S1: TopoDS_Shape; S2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::Closed(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc PeriodizeParameter*(par: Standard_Real; EE: TopoDS_Shape; FF: TopoDS_Shape): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::PeriodizeParameter(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc ShapesSameOriented*(S1: TopoDS_Shape; S2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::ShapesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc SurfacesSameOriented*(S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::SurfacesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc FacesSameOriented*(F1: TopoDS_Shape; F2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::FacesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc CurvesSameOriented*(C1: BRepAdaptor_Curve; C2: BRepAdaptor_Curve): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::CurvesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc EdgesSameOriented*(E1: TopoDS_Shape; E2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc EdgeData*(BRAC: BRepAdaptor_Curve; P: Standard_Real; T: var gp_Dir; N: var gp_Dir;
              C: var Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc EdgeData*(E: TopoDS_Shape; P: Standard_Real; T: var gp_Dir; N: var gp_Dir;
              C: var Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Resolution3dU*(SU: handle[Geom_Surface]; Tol2d: Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dU(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Resolution3dV*(SU: handle[Geom_Surface]; Tol2d: Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dV(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Resolution3d*(SU: handle[Geom_Surface]; Tol2d: Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc Resolution3d*(F: TopoDS_Face; Tol2d: Standard_Real): Standard_Real {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}