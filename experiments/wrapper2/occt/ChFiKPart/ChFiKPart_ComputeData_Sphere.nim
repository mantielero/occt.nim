##  Created on: 1994-11-22
##  Created by: Laurent BOURESCHE
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

proc ChFiKPart_Sphere*(DStr: var TopOpeBRepDS_DataStructure;
                      Data: handle[ChFiDS_SurfData];
                      S1: handle[Adaptor3d_HSurface];
                      S2: handle[Adaptor3d_HSurface]; OrFace1: TopAbs_Orientation;
                      OrFace2: TopAbs_Orientation; Or1: TopAbs_Orientation;
                      Or2: TopAbs_Orientation; Rad: Standard_Real; PS1: gp_Pnt2d;
                      P1S2: gp_Pnt2d; P2S2: gp_Pnt2d): Standard_Boolean {.
    importcpp: "ChFiKPart_Sphere(@)", header: "ChFiKPart_ComputeData_Sphere.hxx".}