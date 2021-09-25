##  Created on: 1995-01-05
##  Created by: Frederic MAUPAS
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of Geom_Curve"
type
  StepToTopoDS_GeometricTool* {.importcpp: "StepToTopoDS_GeometricTool",
                               header: "StepToTopoDS_GeometricTool.hxx", bycopy.} = object


proc pCurve*(sc: Handle[StepGeomSurfaceCurve]; s: Handle[StepGeomSurface];
            pc: var Handle[StepGeomPcurve]; last: int = 0): int {.
    importcpp: "StepToTopoDS_GeometricTool::PCurve(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc isSeamCurve*(sc: Handle[StepGeomSurfaceCurve]; s: Handle[StepGeomSurface];
                 e: Handle[StepShapeEdge]; el: Handle[StepShapeEdgeLoop]): bool {.
    importcpp: "StepToTopoDS_GeometricTool::IsSeamCurve(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc isLikeSeam*(sc: Handle[StepGeomSurfaceCurve]; s: Handle[StepGeomSurface];
                e: Handle[StepShapeEdge]; el: Handle[StepShapeEdgeLoop]): bool {.
    importcpp: "StepToTopoDS_GeometricTool::IsLikeSeam(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc updateParam3d*(c: Handle[GeomCurve]; w1: var float; w2: var float; preci: float): bool {.
    importcpp: "StepToTopoDS_GeometricTool::UpdateParam3d(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
