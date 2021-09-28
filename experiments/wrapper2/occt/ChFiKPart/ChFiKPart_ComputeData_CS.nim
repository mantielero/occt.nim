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

proc chFiKPartCornerSpine*(s1: Handle[Adaptor3dHSurface];
                          s2: Handle[Adaptor3dHSurface]; p1s1: Pnt2d; p2s1: Pnt2d;
                          p1s2: Pnt2d; p2s2: Pnt2d; r: cfloat; cyl: var Cylinder;
                          circ: var Circ; first: var cfloat; last: var cfloat) {.
    importcpp: "ChFiKPart_CornerSpine(@)", header: "ChFiKPart_ComputeData_CS.hxx".}

























