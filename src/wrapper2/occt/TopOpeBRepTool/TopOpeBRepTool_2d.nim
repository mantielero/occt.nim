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

import
  ../Geom2d/Geom2d_Curve, TopOpeBRepTool_define

proc FC2D_Prepare*(S1: TopoDS_Shape; S2: TopoDS_Shape): Standard_Integer {.
    importcpp: "FC2D_Prepare(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasC3D*(E: TopoDS_Edge): Standard_Boolean {.importcpp: "FC2D_HasC3D(@)",
    header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "FC2D_HasCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasOldCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face;
                               C2D: var handle[Geom2d_Curve]; f: var Standard_Real;
                               l: var Standard_Real; tol: var Standard_Real): Standard_Boolean {.
    importcpp: "FC2D_HasOldCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasOldCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face;
                               C2D: var handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "FC2D_HasOldCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasNewCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face;
                               C2D: var handle[Geom2d_Curve]; f: var Standard_Real;
                               l: var Standard_Real; tol: var Standard_Real): Standard_Boolean {.
    importcpp: "FC2D_HasNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_HasNewCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face;
                               C2D: var handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "FC2D_HasNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_CurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face; f: var Standard_Real;
                         l: var Standard_Real; tol: var Standard_Real;
                         trim3d: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "FC2D_CurveOnSurface(@)",
                   header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_CurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face; EF: TopoDS_Edge;
                         f: var Standard_Real; l: var Standard_Real;
                         tol: var Standard_Real;
                         trim3d: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "FC2D_CurveOnSurface(@)",
                   header: "TopOpeBRepTool_2d.hxx".}
## modified by NIZHNY-MZV

proc FC2D_MakeCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face; f: var Standard_Real;
                             l: var Standard_Real; tol: var Standard_Real;
                             trim3d: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "FC2D_MakeCurveOnSurface(@)",
                   header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_EditableCurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face;
                                 f: var Standard_Real; l: var Standard_Real;
                                 tol: var Standard_Real;
                                 trim3d: Standard_Boolean = Standard_False): handle[
    Geom2d_Curve] {.importcpp: "FC2D_EditableCurveOnSurface(@)",
                   header: "TopOpeBRepTool_2d.hxx".}
proc FC2D_AddNewCurveOnSurface*(PC: handle[Geom2d_Curve]; E: TopoDS_Edge;
                               F: TopoDS_Face; f: Standard_Real; l: Standard_Real;
                               tol: Standard_Real): Standard_Integer {.
    importcpp: "FC2D_AddNewCurveOnSurface(@)", header: "TopOpeBRepTool_2d.hxx".}