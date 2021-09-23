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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_EdgeLoop"
discard "forward decl of Geom_Curve"
type
  StepToTopoDS_GeometricTool* {.importcpp: "StepToTopoDS_GeometricTool",
                               header: "StepToTopoDS_GeometricTool.hxx", bycopy.} = object


proc PCurve*(SC: handle[StepGeom_SurfaceCurve]; S: handle[StepGeom_Surface];
            PC: var handle[StepGeom_Pcurve]; last: Standard_Integer = 0): Standard_Integer {.
    importcpp: "StepToTopoDS_GeometricTool::PCurve(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc IsSeamCurve*(SC: handle[StepGeom_SurfaceCurve]; S: handle[StepGeom_Surface];
                 E: handle[StepShape_Edge]; EL: handle[StepShape_EdgeLoop]): Standard_Boolean {.
    importcpp: "StepToTopoDS_GeometricTool::IsSeamCurve(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc IsLikeSeam*(SC: handle[StepGeom_SurfaceCurve]; S: handle[StepGeom_Surface];
                E: handle[StepShape_Edge]; EL: handle[StepShape_EdgeLoop]): Standard_Boolean {.
    importcpp: "StepToTopoDS_GeometricTool::IsLikeSeam(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}
proc UpdateParam3d*(C: handle[Geom_Curve]; w1: var Standard_Real;
                   w2: var Standard_Real; preci: Standard_Real): Standard_Boolean {.
    importcpp: "StepToTopoDS_GeometricTool::UpdateParam3d(@)",
    header: "StepToTopoDS_GeometricTool.hxx".}