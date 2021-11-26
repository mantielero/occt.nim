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


proc tolerance*(s: TopoDS_Shape): cfloat {.cdecl, importcpp: "TopOpeBRepTool_ShapeTool::Tolerance(@)",
                                       dynlib: tkbool.}
proc pnt*(s: TopoDS_Shape): Pnt {.cdecl,
                              importcpp: "TopOpeBRepTool_ShapeTool::Pnt(@)",
                              dynlib: tkbool.}
proc basiscurve*(c: Handle[GeomCurve]): Handle[GeomCurve] {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)", dynlib: tkbool.}
proc basiscurve*(e: TopoDS_Edge): Handle[GeomCurve] {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::BASISCURVE(@)", dynlib: tkbool.}
proc basissurface*(s: Handle[GeomSurface]): Handle[GeomSurface] {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)", dynlib: tkbool.}
proc basissurface*(f: TopoDS_Face): Handle[GeomSurface] {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::BASISSURFACE(@)", dynlib: tkbool.}
proc uvbounds*(s: Handle[GeomSurface]; uPeri: var bool; vPeri: var bool;
              umin: var cfloat; umax: var cfloat; vmin: var cfloat; vmax: var cfloat) {.
    cdecl, importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)", dynlib: tkbool.}
proc uvbounds*(f: TopoDS_Face; uPeri: var bool; vPeri: var bool; umin: var cfloat;
              umax: var cfloat; vmin: var cfloat; vmax: var cfloat) {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::UVBOUNDS(@)", dynlib: tkbool.}
proc adjustOnPeriodic*(s: TopoDS_Shape; u: var cfloat; v: var cfloat) {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::AdjustOnPeriodic(@)", dynlib: tkbool.}
proc closed*(s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::Closed(@)", dynlib: tkbool.}
proc periodizeParameter*(par: cfloat; ee: TopoDS_Shape; ff: TopoDS_Shape): cfloat {.
    cdecl, importcpp: "TopOpeBRepTool_ShapeTool::PeriodizeParameter(@)",
    dynlib: tkbool.}
proc shapesSameOriented*(s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::ShapesSameOriented(@)", dynlib: tkbool.}
proc surfacesSameOriented*(s1: BRepAdaptorSurface; s2: BRepAdaptorSurface): bool {.
    cdecl, importcpp: "TopOpeBRepTool_ShapeTool::SurfacesSameOriented(@)",
    dynlib: tkbool.}
proc facesSameOriented*(f1: TopoDS_Shape; f2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::FacesSameOriented(@)", dynlib: tkbool.}
proc curvesSameOriented*(c1: BRepAdaptorCurve; c2: BRepAdaptorCurve): bool {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::CurvesSameOriented(@)", dynlib: tkbool.}
proc edgesSameOriented*(e1: TopoDS_Shape; e2: TopoDS_Shape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::EdgesSameOriented(@)", dynlib: tkbool.}
proc edgeData*(brac: BRepAdaptorCurve; p: cfloat; t: var Dir; n: var Dir; c: var cfloat): cfloat {.
    cdecl, importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)", dynlib: tkbool.}
proc edgeData*(e: TopoDS_Shape; p: cfloat; t: var Dir; n: var Dir; c: var cfloat): cfloat {.
    cdecl, importcpp: "TopOpeBRepTool_ShapeTool::EdgeData(@)", dynlib: tkbool.}
proc resolution3dU*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dU(@)", dynlib: tkbool.}
proc resolution3dV*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3dV(@)", dynlib: tkbool.}
proc resolution3d*(su: Handle[GeomSurface]; tol2d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)", dynlib: tkbool.}
proc resolution3d*(f: TopoDS_Face; tol2d: cfloat): cfloat {.cdecl,
    importcpp: "TopOpeBRepTool_ShapeTool::Resolution3d(@)", dynlib: tkbool.}