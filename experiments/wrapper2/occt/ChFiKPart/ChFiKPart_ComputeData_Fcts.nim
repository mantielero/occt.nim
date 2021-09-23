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

import
  ../gp/gp_Pnt2d, ../Geom2d/Geom2d_Curve, ../Geom2d/Geom2d_BSplineCurve,
  ../Geom/Geom_Curve, ../Geom/Geom_Surface, ../GeomAdaptor/GeomAdaptor_Curve,
  ../GeomAdaptor/GeomAdaptor_Surface, ../TopOpeBRepDS/TopOpeBRepDS_DataStructure

proc ChFiKPart_InPeriod*(U: Standard_Real; UFirst: Standard_Real;
                        ULast: Standard_Real; Eps: Standard_Real): Standard_Real {.
    importcpp: "ChFiKPart_InPeriod(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc ChFiKPart_PCurve*(UV1: gp_Pnt2d; UV2: gp_Pnt2d; Pardeb: Standard_Real;
                      Parfin: Standard_Real): handle[Geom2d_BSplineCurve] {.
    importcpp: "ChFiKPart_PCurve(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc ChFiKPart_ProjPC*(Cg: GeomAdaptor_Curve; Sg: GeomAdaptor_Surface;
                      Pcurv: var handle[Geom2d_Curve]) {.
    importcpp: "ChFiKPart_ProjPC(@)", header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc ChFiKPart_IndexCurveInDS*(C: handle[Geom_Curve];
                              DStr: var TopOpeBRepDS_DataStructure): Standard_Integer {.
    importcpp: "ChFiKPart_IndexCurveInDS(@)",
    header: "ChFiKPart_ComputeData_Fcts.hxx".}
proc ChFiKPart_IndexSurfaceInDS*(S: handle[Geom_Surface];
                                DStr: var TopOpeBRepDS_DataStructure): Standard_Integer {.
    importcpp: "ChFiKPart_IndexSurfaceInDS(@)",
    header: "ChFiKPart_ComputeData_Fcts.hxx".}