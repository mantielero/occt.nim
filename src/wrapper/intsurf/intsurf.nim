import intsurf_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types





##  Created on: 1992-08-24
##  Created by: Jacques GOUSSARD
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



proc makeTransition*(tgFirst: VecObj; tgSecond: VecObj; normal: DirObj;
                    tFirst: var IntSurfTransition; tSecond: var IntSurfTransition) {.
    cdecl, importcpp: "IntSurf::MakeTransition(@)", header: "IntSurf.hxx".}
proc setPeriod*(theFirstSurf: Handle[Adaptor3dHSurface];
               theSecondSurf: Handle[Adaptor3dHSurface];
               theArrOfPeriod: array[4, cfloat]) {.cdecl,
    importcpp: "IntSurf::SetPeriod(@)", header: "IntSurf.hxx".}


