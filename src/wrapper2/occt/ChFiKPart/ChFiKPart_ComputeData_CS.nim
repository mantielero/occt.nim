##  Created on: 1994-06-28
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

import
  ../Adaptor3d/Adaptor3d_HSurface, ../gp/gp_Pnt2d, ../gp/gp_Cylinder, ../gp/gp_Circ

proc ChFiKPart_CornerSpine*(S1: handle[Adaptor3d_HSurface];
                           S2: handle[Adaptor3d_HSurface]; P1S1: gp_Pnt2d;
                           P2S1: gp_Pnt2d; P1S2: gp_Pnt2d; P2S2: gp_Pnt2d;
                           R: Standard_Real; cyl: var gp_Cylinder; circ: var gp_Circ;
                           First: var Standard_Real; Last: var Standard_Real) {.
    importcpp: "ChFiKPart_CornerSpine(@)", header: "ChFiKPart_ComputeData_CS.hxx".}