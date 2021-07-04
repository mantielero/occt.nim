##  Created on: 1994-04-12
##  Created by: Isabelle GRIGNON
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

proc ChFiKPart_MakeFillet*(DStr: var TopOpeBRepDS_DataStructure;
                          Data: handle[ChFiDS_SurfData]; Pln: gp_Pln; Con: gp_Cone;
                          fu: Standard_Real; lu: Standard_Real;
                          Or1: TopAbs_Orientation; Or2: TopAbs_Orientation;
                          Radius: Standard_Real; Spine: gp_Circ;
                          First: Standard_Real; Ofpl: TopAbs_Orientation;
                          plandab: Standard_Boolean): Standard_Boolean {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnCon.hxx".}