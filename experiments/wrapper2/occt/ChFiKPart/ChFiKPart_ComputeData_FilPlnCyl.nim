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

proc chFiKPartMakeFillet*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: Pln; cyl: Cylinder;
                         fu: cfloat; lu: cfloat; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; radius: cfloat; spine: Lin;
                         first: cfloat; ofpl: TopAbsOrientation; plandab: bool): bool {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnCyl.hxx".}
proc chFiKPartMakeFillet*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: Pln; cyl: Cylinder;
                         fu: cfloat; lu: cfloat; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; radius: cfloat; spine: Circ;
                         first: cfloat; ofpl: TopAbsOrientation; plandab: bool): bool {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnCyl.hxx".}

























