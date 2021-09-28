##  Created on: 1995-05-22
##  Created by: Stagiaire Flore Lantheaume
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

proc chFiKPartMakeChamfer*(dStr: var TopOpeBRepDS_DataStructure;
                          data: Handle[ChFiDS_SurfData];
                          theMode: ChFiDS_ChamfMode; pln: Pln; cyl: Cylinder;
                          fu: cfloat; lu: cfloat; or1: TopAbsOrientation;
                          or2: TopAbsOrientation; dis1: cfloat; dis2: cfloat;
                          spine: Circ; first: cfloat; ofpl: TopAbsOrientation;
                          plandab: bool): bool {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}
##  File:	ChFiKPart_ComputeData_ChPlnCyl.cxx
##  Created:	Fri May 10 09:43:15 1996
##  Author:	Stagiaire Xuan Trang PHAMPHU
## 		<xpu@phylox>

proc chFiKPartMakeChamfer*(dStr: var TopOpeBRepDS_DataStructure;
                          data: Handle[ChFiDS_SurfData];
                          theMode: ChFiDS_ChamfMode; pln: Pln; cyl: Cylinder;
                          fu: cfloat; lu: cfloat; or1: TopAbsOrientation;
                          or2: TopAbsOrientation; dis1: cfloat; dis2: cfloat;
                          spine: Lin; first: cfloat; ofpl: TopAbsOrientation;
                          plandab: bool): bool {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}

























