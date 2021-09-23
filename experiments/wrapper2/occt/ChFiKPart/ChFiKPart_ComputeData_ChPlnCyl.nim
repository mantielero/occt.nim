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

proc ChFiKPart_MakeChamfer*(DStr: var TopOpeBRepDS_DataStructure;
                           Data: handle[ChFiDS_SurfData];
                           theMode: ChFiDS_ChamfMode; Pln: gp_Pln; Cyl: gp_Cylinder;
                           fu: Standard_Real; lu: Standard_Real;
                           Or1: TopAbs_Orientation; Or2: TopAbs_Orientation;
                           Dis1: Standard_Real; Dis2: Standard_Real; Spine: gp_Circ;
                           First: Standard_Real; Ofpl: TopAbs_Orientation;
                           plandab: Standard_Boolean): Standard_Boolean {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}
##  File:	ChFiKPart_ComputeData_ChPlnCyl.cxx
##  Created:	Fri May 10 09:43:15 1996
##  Author:	Stagiaire Xuan Trang PHAMPHU
## 		<xpu@phylox>

proc ChFiKPart_MakeChamfer*(DStr: var TopOpeBRepDS_DataStructure;
                           Data: handle[ChFiDS_SurfData];
                           theMode: ChFiDS_ChamfMode; Pln: gp_Pln; Cyl: gp_Cylinder;
                           fu: Standard_Real; lu: Standard_Real;
                           Or1: TopAbs_Orientation; Or2: TopAbs_Orientation;
                           Dis1: Standard_Real; Dis2: Standard_Real; Spine: gp_Lin;
                           First: Standard_Real; Ofpl: TopAbs_Orientation;
                           plandab: Standard_Boolean): Standard_Boolean {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}