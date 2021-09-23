##  Created on: 1996-04-16
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray2OfReal

## ! contains  all the  parameters  for approximation
## ! ( tolerancy, computing option, ...)

type
  AdvApp2Var_Context* {.importcpp: "AdvApp2Var_Context",
                       header: "AdvApp2Var_Context.hxx", bycopy.} = object


proc constructAdvApp2Var_Context*(): AdvApp2Var_Context {.constructor,
    importcpp: "AdvApp2Var_Context(@)", header: "AdvApp2Var_Context.hxx".}
proc constructAdvApp2Var_Context*(ifav: Standard_Integer; iu: Standard_Integer;
                                 iv: Standard_Integer; nlimu: Standard_Integer;
                                 nlimv: Standard_Integer;
                                 iprecis: Standard_Integer;
                                 nb1Dss: Standard_Integer;
                                 nb2Dss: Standard_Integer;
                                 nb3Dss: Standard_Integer;
                                 tol1D: handle[TColStd_HArray1OfReal];
                                 tol2D: handle[TColStd_HArray1OfReal];
                                 tol3D: handle[TColStd_HArray1OfReal];
                                 tof1D: handle[TColStd_HArray2OfReal];
                                 tof2D: handle[TColStd_HArray2OfReal];
                                 tof3D: handle[TColStd_HArray2OfReal]): AdvApp2Var_Context {.
    constructor, importcpp: "AdvApp2Var_Context(@)",
    header: "AdvApp2Var_Context.hxx".}
proc TotalDimension*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "TotalDimension", header: "AdvApp2Var_Context.hxx".}
proc TotalNumberSSP*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "TotalNumberSSP", header: "AdvApp2Var_Context.hxx".}
proc FavorIso*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "FavorIso", header: "AdvApp2Var_Context.hxx".}
proc UOrder*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "UOrder", header: "AdvApp2Var_Context.hxx".}
proc VOrder*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "VOrder", header: "AdvApp2Var_Context.hxx".}
proc ULimit*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "ULimit", header: "AdvApp2Var_Context.hxx".}
proc VLimit*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "VLimit", header: "AdvApp2Var_Context.hxx".}
proc UJacDeg*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "UJacDeg", header: "AdvApp2Var_Context.hxx".}
proc VJacDeg*(this: AdvApp2Var_Context): Standard_Integer {.noSideEffect,
    importcpp: "VJacDeg", header: "AdvApp2Var_Context.hxx".}
proc UJacMax*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "UJacMax", header: "AdvApp2Var_Context.hxx".}
proc VJacMax*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VJacMax", header: "AdvApp2Var_Context.hxx".}
proc URoots*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "URoots", header: "AdvApp2Var_Context.hxx".}
proc VRoots*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VRoots", header: "AdvApp2Var_Context.hxx".}
proc UGauss*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "UGauss", header: "AdvApp2Var_Context.hxx".}
proc VGauss*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VGauss", header: "AdvApp2Var_Context.hxx".}
proc IToler*(this: AdvApp2Var_Context): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "IToler", header: "AdvApp2Var_Context.hxx".}
proc FToler*(this: AdvApp2Var_Context): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "FToler", header: "AdvApp2Var_Context.hxx".}
proc CToler*(this: AdvApp2Var_Context): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "CToler", header: "AdvApp2Var_Context.hxx".}