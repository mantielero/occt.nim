##  Created on: 1995-05-22
##  Created by: Laurent BOURESCHE
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

proc chFiKPartInPeriod*(u: StandardReal; uFirst: StandardReal; uLast: StandardReal;
                       eps: StandardReal): StandardReal {.
    importcpp: "ChFiKPart_InPeriod(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc chFiKPartPCurve*(uv1: Pnt2d; uv2: Pnt2d; pardeb: StandardReal;
                     parfin: StandardReal): Handle[Geom2dBSplineCurve] {.
    importcpp: "ChFiKPart_PCurve(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc chFiKPartProjPC*(cg: GeomAdaptorCurve; sg: GeomAdaptorSurface;
                     pcurv: var Handle[Geom2dCurve]) {.
    importcpp: "ChFiKPart_ProjPC(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc chFiKPartIndexCurveInDS*(c: Handle[GeomCurve];
                             dStr: var TopOpeBRepDS_DataStructure): int {.
    importcpp: "ChFiKPart_IndexCurveInDS(@)",
    header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc chFiKPartIndexSurfaceInDS*(s: Handle[GeomSurface];
                               dStr: var TopOpeBRepDS_DataStructure): int {.
    importcpp: "ChFiKPart_IndexSurfaceInDS(@)",
    header: "ChFiKPart_ComputeData_Fcts.hxx".}