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
  TopOpeBRepToolShapeTool* {.importcpp: "TopOpeBRepTool_ShapeTool",
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


proc tolerance*(s: TopoDS_Shape): cfloat {.importcpp: "TopOpeBRepTool_ShapeTool::Tolerance(@)",
                                       header: "TopOpeBRepTool_ShapeTool.hxx".}
proc pnt*(s: TopoDS_Shape): Pnt {.importcpp: "TopOpeBRepTool_ShapeTool::Pnt(@)",
                              header: "TopOpeBRepTool_ShapeTool.hxx".}
proc basiscurve*(c: Handle[GeomCurve]): Handle[GeomCurve] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc basiscurve*(e: TopoDS_Edge): Handle[GeomCurve] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc basissurface*(s: Handle[GeomSurface]): Handle[GeomSurface] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc basissurface*(f: TopoDS_Face): Handle[GeomSurface] {.
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc uvbounds*(s: Handle[GeomSurface]; uPeri: var bool; vPeri: var bool;
              umin: var cfloat; umax: var cfloat; vmin: var cfloat; vmax: var cfloat) {.
    importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc uvbounds*(f: TopoDS_Face; uPeri: var bool; vPeri: var bool; umin: var cfloat;
              umax: var cfloat; vmin: var cfloat; vmax: var cfloat) {.
    importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc adjustOnPeriodic*(s: TopoDS_Shape; u: var cfloat; v: var cfloat) {.
    importcpp: "TopOpeBRepTool_ShapeTool::AdjustOnPeriodic(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc closed*(s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::Closed(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc periodizeParameter*(par: cfloat; ee: TopoDS_Shape; ff: TopoDS_Shape): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::PeriodizeParameter(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc shapesSameOriented*(s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::ShapesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc surfacesSameOriented*(s1: BRepAdaptorSurface; s2: BRepAdaptorSurface): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::SurfacesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc facesSameOriented*(f1: TopoDS_Shape; f2: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::FacesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc curvesSameOriented*(c1: BRepAdaptorCurve; c2: BRepAdaptorCurve): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::CurvesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc edgesSameOriented*(e1: TopoDS_Shape; e2: TopoDS_Shape): bool {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgesSameOriented(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc edgeData*(brac: BRepAdaptorCurve; p: cfloat; t: var Dir; n: var Dir; c: var cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc edgeData*(e: TopoDS_Shape; p: cfloat; t: var Dir; n: var Dir; c: var cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc resolution3dU*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dU(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc resolution3dV*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dV(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc resolution3d*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}
proc resolution3d*(f: TopoDS_Face; tol2d: cfloat): cfloat {.
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)",
    header: "TopOpeBRepTool_ShapeTool.hxx".}

























