##  Created on: 1998-03-23
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1998-1999 Matra Datavision
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

proc fC2D_Prepare*(s1: TopoDS_Shape; s2: TopoDS_Shape): int {.
    importcpp: "FC2D_Prepare(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasC3D*(e: TopoDS_Edge): bool {.importcpp: "FC2D_HasC3D(@)",
                                      header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face): bool {.
    importcpp: "FC2D_HasCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasOldCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face;
                               c2d: var Handle[Geom2dCurve]; f: var float;
                               l: var float; tol: var float): bool {.
    importcpp: "FC2D_HasOldCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasOldCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face;
                               c2d: var Handle[Geom2dCurve]): bool {.
    importcpp: "FC2D_HasOldCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasNewCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face;
                               c2d: var Handle[Geom2dCurve]; f: var float;
                               l: var float; tol: var float): bool {.
    importcpp: "FC2D_HasNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_HasNewCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face;
                               c2d: var Handle[Geom2dCurve]): bool {.
    importcpp: "FC2D_HasNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_CurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; f: var float; l: var float;
                         tol: var float; trim3d: bool = false): Handle[Geom2dCurve] {.
    importcpp: "FC2D_CurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_CurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; ef: TopoDS_Edge;
                         f: var float; l: var float; tol: var float; trim3d: bool = false): Handle[
    Geom2dCurve] {.importcpp: "FC2D_CurveOnSurface(@)",
                  header: "TopOpeBRepTool_2d.hxx".}
## modified by NIZHNY-MZV

proc fC2D_MakeCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; f: var float;
                             l: var float; tol: var float; trim3d: bool = false): Handle[
    Geom2dCurve] {.importcpp: "FC2D_MakeCurveOnSurface(@)",
                  header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_EditableCurveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; f: var float;
                                 l: var float; tol: var float; trim3d: bool = false): Handle[
    Geom2dCurve] {.importcpp: "FC2D_EditableCurveOnSurface(@)",
                  header: "TopOpeBRepTool_2d.hxx".}
proc fC2D_AddNewCurveOnSurface*(pc: Handle[Geom2dCurve]; e: TopoDS_Edge;
                               f: TopoDS_Face; f: float; l: float; tol: float): int {.
    importcpp: "FC2D_AddNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
