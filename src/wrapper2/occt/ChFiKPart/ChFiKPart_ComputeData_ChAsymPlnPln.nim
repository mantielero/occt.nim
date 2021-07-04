##  Created on: 1998-06-16
##  Created by: Philippe NOUAILLE
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

proc ChFiKPart_MakeChAsym*(DStr: var TopOpeBRepDS_DataStructure;
                          Data: handle[ChFiDS_SurfData]; Pl1: gp_Pln; Pl2: gp_Pln;
                          Or1: TopAbs_Orientation; Or2: TopAbs_Orientation;
                          Dis: Standard_Real; Angle: Standard_Real; Spine: gp_Lin;
                          First: Standard_Real; Of1: TopAbs_Orientation;
                          DisOnP1: Standard_Boolean): Standard_Boolean {.
    importcpp: "ChFiKPart_MakeChAsym(@)",
    header: "ChFiKPart_ComputeData_ChAsymPlnPln.hxx".}