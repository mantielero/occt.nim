##  Created on: 1992-08-26
##  Created by: Jean Louis FRENKEL
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Declares types of hidden line removal algorithm.
## ! TOH_Algo enables using of exact HLR algorithm.
## ! TOH_PolyAlgo enables using of polygonal HLR algorithm.
## ! TOH_NotSet is used by Prs3d_Drawer class, it means that the drawer should return the global value.
## ! For more details see Prs3d_Drawer class, AIS_Shape::Compute() method and
## ! HLRAlgo package from TKHLR toolkit.

type
  Prs3dTypeOfHLR* {.size: sizeof(cint), importcpp: "Prs3d_TypeOfHLR",
                   header: "Prs3d_TypeOfHLR.hxx".} = enum
    Prs3dTOH_NotSet, Prs3dTOH_PolyAlgo, Prs3dTOH_Algo

